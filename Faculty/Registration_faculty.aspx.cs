using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Text;

public partial class Registration_faculty : System.Web.UI.Page
{
    string txtpassword, lblpass, txtemail, date;
    byte[] pic;
    string str = "";
    int i, dt, mn, yr;

    protected void Page_Load(object sender, EventArgs e)
    {
        for (i = 1; i <= 31; i++)
        {
            DropDownList1.Items.Add(i.ToString());
        }
        for (i = 1; i <= 12; i++)
        {
            DropDownList2.Items.Add(i.ToString());
        }
        for (i = 1985; i <= 2013; i++)
        {
            DropDownList3.Items.Add(i.ToString());
        }
    
    }
    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);
        strmsg = Convert.ToBase64String(encode);
        return strmsg;
    }
    protected void Register_Click(object sender, EventArgs e)
    {
      
        txtpassword = password.Text;
        lblpass = Label4.Text;
        txtemail = email.Text;
        dt = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
        mn = Convert.ToInt32(DropDownList2.SelectedItem.ToString());
        yr = Convert.ToInt32(DropDownList3.SelectedItem.ToString());

        date = Convert.ToString(dt + "/" + mn + "/" + yr);
        if(password.Text=="")
        {
            Label4.Text = "Pass Doesnt Empty";
        }

        if (txtpassword.Length < 6 && txtpassword.Length > 10)
        {
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Text = "Password Is Mininmun 4 Character And maximum 10 character.";
        }

        for (int i = 0; i <= checkbox1.Items.Count - 1; i++)
        {
            if (checkbox1.Items[i].Selected == true)
            {
                str = checkbox1.Items[i].Text + "," + str;
            }

        }

        if ((name.Text=="" )||(fname.Text=="")||(sname.Text==""))
        {
            Response.Write("<script>alert('Please Enter The Data Properly.');</script>");
        }
        else
        {
            if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
            {
                SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
                con.Open();
                byte[] imageSize = new byte[FileUpload1.PostedFile.ContentLength];
                HttpPostedFile uploadedImage = FileUpload1.PostedFile;
                uploadedImage.InputStream.Read(imageSize, 0, (int)FileUpload1.PostedFile.ContentLength);

                //SqlParameter UploadedImage = new SqlParameter("@Picture", SqlDbType.Image, imageSize.Length);
                //UploadedImage.Value = imageSize;
                //string sql = "insert into FacultyRegistration(Picture) values (@Picture)";
                //SqlCommand cmd = new SqlCommand("insert into FacultyRegistration" + "(Facultyname,Middlename,Surname,Emailid,Birthdate,Branch,Gender,Bloodgroup,Post,Experience,Password,Cpassword,Address,Pincode,Hobby,Specialsubject,Picture,question,Answer)" + "values(@Facultyname,@Middlename,@Surname,@Emailid,@Birthdate,@Branch,@Gender,@Bloodgroup,@Post,@Experience,@Password,@Cpassword,@Address,@Pincode,@Hobby,@Specialsubject,@Picture,@question,@Answer)", con);
                string strpassword = Encryptdata(password.Text);
                string strconfirmpass = Encryptdata(cpassword.Text);
                SqlCommand cmd = new SqlCommand("insert into FacultyRegistration(Facultyname,Middlename,Surname,Emailid,Birthdate,Branch,Gender,BloodGroup,Post,Experience,Password,Cpassword,Address,Pincode,Hobby,Specialsubject,question,Answer) values( '" + name.Text + "','" + fname.Text + "','" + sname.Text + "','" + email.Text + "','" + date + "','" + enginerring.SelectedItem + "','" + Gender.SelectedItem + "','" + bloodgroup.SelectedItem + "','" + DropDownList4.SelectedValue + "','" + DropDownList5.SelectedValue + "','" + strpassword + "','" + strconfirmpass + "','" + address.Text + "','" + pincode.Text + "','" + str + "','" + Subject.Text + "','" + question.SelectedItem + "','" + Answer.Text + "')", con);
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("INSERT INTO Faculty_Image" + "(Facultyname,Image) " + " values (@Facultyname, @Image)", con);
                cmd1.Parameters.Add("@Facultyname", SqlDbType.VarChar, 50).Value = name.Text;
                cmd1.Parameters.Add("@image", SqlDbType.Image, imageSize.Length).Value = imageSize;

                cmd1.ExecuteNonQuery();
                Response.Write("<script>alert('Registration Sucessfully...');</script>");
                Response.Redirect("Faculty_Home.aspx");
            }

            else
            {
                Response.Write("<script>alert('Registration Is Not Sucessfully...');</script>");
            }

            //SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
            //con.Open();
            //byte[] imageSize = new byte[FileUpload1.PostedFile.ContentLength];
            //HttpPostedFile uploadedImage = FileUpload1.PostedFile;
            //uploadedImage.InputStream.Read(imageSize, 0, (int)FileUpload1.PostedFile.ContentLength);

            ////SqlParameter UploadedImage = new SqlParameter("@Picture", SqlDbType.Image, imageSize.Length);
            ////UploadedImage.Value = imageSize;
            ////string sql = "insert into FacultyRegistration(Picture) values (@Picture)";
            ////SqlCommand cmd = new SqlCommand("insert into FacultyRegistration" + "(Facultyname,Middlename,Surname,Emailid,Birthdate,Branch,Gender,Bloodgroup,Post,Experience,Password,Cpassword,Address,Pincode,Hobby,Specialsubject,Picture,question,Answer)" + "values(@Facultyname,@Middlename,@Surname,@Emailid,@Birthdate,@Branch,@Gender,@Bloodgroup,@Post,@Experience,@Password,@Cpassword,@Address,@Pincode,@Hobby,@Specialsubject,@Picture,@question,@Answer)", con);

            //SqlCommand cmd = new SqlCommand("insert into FacultyRegistration (Facultyname,Middlename,Surname,Emailid,Birthdate,Branch,Gender,BloodGroup,Post,Experience,Password,Cpassword,Address,Pincode,Hobby,Specialsubject,question,Answer) values( '" + name.Text + "','" + fname.Text + "','" + sname.Text + "','" + email.Text + "','" + date + "','" + enginerring.SelectedItem + "','" + Gender.SelectedItem + "','" + bloodgroup.SelectedItem + "','" + DropDownList4.SelectedValue + "','" + DropDownList5.SelectedValue + "','" + password.Text + "','" + cpassword.Text + "','" + address.Text + "','" + pincode.Text + "','" + str + "','" + Subject.Text + "','" + question.SelectedItem + "','" + Answer.Text + "')", con);
            //cmd.ExecuteNonQuery();

            //SqlCommand cmd1 = new SqlCommand("INSERT INTO Faculty_Image" + "(Facultyname,Image) " + " values (@Facultyname, @Image)", con);
            //cmd1.Parameters.Add("@Facultyname", SqlDbType.VarChar, 50).Value = name.Text;
            //cmd1.Parameters.Add("@image", SqlDbType.Image, imageSize.Length).Value = imageSize;

            //cmd1.ExecuteNonQuery();



            //---------OLD CODE---------//

            //SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
            //string path = Server.MapPath("images/");
            //if (FileUpload1.HasFile)
            //{
            //    string ext = Path.GetExtension(FileUpload1.FileName);
            //    if (ext == ".png" || ext == ".jpg" || ext == ".JPG" || ext == ".PNG")
            //    {
            //        FileUpload1.SaveAs(path + FileUpload1.FileName);
            //        string filename = "~/images/" + FileUpload1.FileName;
            //        SqlCommand cmd = new SqlCommand("insert into FacultyRegisration1 (Facultyname,Middlename,Surname,Emailid,Birthdate,Branch,Gender,Bllodgroup,Post,Experience,Password,Cpassword,Address,Pincode,Hobby,Specialsubject,Picture,question,Answer) values( '" + name.Text + "','" + fname.Text + "','" + sname.Text + "','" + email.Text + "','" + date + "','" + enginerring.SelectedItem + "','" + Gender.SelectedItem + "','" + bloodgroup.SelectedItem + "','" + DropDownList4.SelectedValue + "','" + DropDownList5.SelectedValue + "','" + password.Text + "','" + cpassword.Text + "','" + address.Text + "','" + pincode.Text + "','" + str + "','" + Subject.Text + "','" + filename.ToString() + "','" + question.SelectedItem + "','" + Answer.Text + "')", con);

            //        con.Open();
            //        cmd.ExecuteNonQuery();
            //        con.Close();
            //        Response.Write("<script>alert('Registartion Sucessfully...');</script>");
            //        Response.Redirect("Addbatch_Faculty.aspx");

            //    }
            //}
        }
    }
   
}
