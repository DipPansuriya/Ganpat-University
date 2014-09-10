using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.HtmlControls;



public partial class Faculty_Sendmail : System.Web.UI.Page
{

    string filename;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] != null)
        {
            Label1.Text = Session["fname"].ToString();
            Facultyname.Text = Label1.Text;
        }
    }

    public void sendMail()
    {
        try
        {


            MailMessage mail = new MailMessage();

            //Random rand = new Random((int)DateTime.Now.Ticks);

            //RandomNumber = rand.Next(100000, 999999);

            //rannum = RandomNumber.ToString();

            mail.To.Add(Emailid.Text);
            mail.From = new MailAddress(Fid.Text);
            mail.Subject =subject.Text;

            string mailBody = Body.Text;
            mail.Body = mailBody;
            //Attachment at = new Attachment(Server.MapPath(filename));
            //mail.Attachments.Add(at);
            if (FileUpload1.HasFile)
            {
                mail.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
            }
            
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
           
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential
            (Fid.Text, Password.Text);

            smtp.EnableSsl = true;
            smtp.Send(mail);
            Response.Write("<script>alert('Mail Is Sent Sucessfully');</script>");

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Mail Is Not Sent Sucessfully');</script>");
        }


    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string date = DateTime.Now.ToString();
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select Facultyid,Password from FacultyEmail where Facultyid='" + Fid.Text+ "' and Password='"+Password.Text+"'",con);
        SqlDataReader dr = cmd1.ExecuteReader();
        
        if (dr.Read())
        {
            if (dr["Facultyid"].ToString() == Fid.Text && dr["Password"].ToString() == Password.Text)
            {
                con.Close();
                SqlConnection con1 = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
                con1.Open();
                string path = Server.MapPath("Files/");
                if (FileUpload1.HasFile)
                {
                    string ext = Path.GetExtension(FileUpload1.FileName);
                    if (ext == ".doc" || ext == ".docx" || ext == ".pdf" || ext == ".xmls" || ext == ".txt")
                    {
                        filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        FileUpload1.SaveAs(path + FileUpload1.FileName);
                        string name = "Files/" + FileUpload1.FileName;

                        SqlCommand cmd = new SqlCommand("insert into MailItem1(Facultyid,Facultyeemail,Branch,Semester,Emailid,Date,Body,Filename,Filepath) values(@Facultyid,@Facultyeemail,@Branch,@Semester,@Emailid,@Date,@Body,@Filename,@Filepath)", con1);
                        cmd.Parameters.AddWithValue("@Facultyid", Facultyname.Text);
                        cmd.Parameters.AddWithValue("@Facultyeemail", Fid.Text);
                        cmd.Parameters.AddWithValue("@Branch", DropDownList1.SelectedValue);
                        cmd.Parameters.AddWithValue("@Semester", DropDownList2.SelectedValue);
                        cmd.Parameters.AddWithValue("@Emailid", Emailid.Text);
                        cmd.Parameters.AddWithValue("@Date", date);
                        cmd.Parameters.AddWithValue("@Body",Body.Text);
                        cmd.Parameters.AddWithValue("@Filename", filename);
                        cmd.Parameters.AddWithValue("@Filepath", "Files/" + filename);

                        cmd.ExecuteNonQuery();
                        sendMail();

                    }
                }

                con.Close();

            }

            else
            {
                Response.Write("<script>alert('Faculty Password is Wrong.');</script>");
            }

        }

        else
        {
            Response.Write("<script>alert('Faculty Password is Wrong.');</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("fname");
        Response.Redirect("../Login.aspx");
    }
}