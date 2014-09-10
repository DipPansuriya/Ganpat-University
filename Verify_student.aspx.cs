using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Verify_student : System.Web.UI.Page
{

    string rannum;
    int RandomNumber;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void sendMail()
    {
        try
        {
            Random rand = new Random((int)DateTime.Now.Ticks);

            RandomNumber = rand.Next(100000, 999999);

            rannum = RandomNumber.ToString();
            Label1.Text = RandomNumber.ToString();

            MailMessage mail = new MailMessage();
            mail.To.Add(Emailid.Text);
            mail.From = new MailAddress("dip.patel6555@gmail.com");
            mail.Subject = "Email using Gmail";
            string Body = rannum;
            mail.Body = Body;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential
            ("dip.patel6555", "dippatel2710");

            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);
            Response.Write("<script>alert('Mail Is Sent Sucessfully');</script>");
            //Server.Transfer("Login.aspx", true);
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Mail Is Not Sent Sucessfully');</script>");
        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select Enrollmentno,Emailid from Verify where Enrollmentno='" + Username.Text + "' and Emailid='" + Emailid.Text + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr["Enrollmentno"].ToString() == Username.Text && dr["Emailid"].ToString() == Emailid.Text)
            {

                sendMail();
            }
            else
            {
                Response.Write("<script>alert('Your Mail Id Is Wrong.');</script>");
            }

        }
        else
        {
            Response.Write("<script>alert('Your Mail Id Is Wrong.');</script>");
        }
    }
    protected void Check_Click(object sender, EventArgs e)
    {

        if (Label1.Text == Code.Text)
        {
            Response.Redirect("Registration.aspx?enroll="+Username.Text);
            //Server.Transfer("Registration.aspx?enroll=" + Username.Text);
        }
        else 
        {
            Response.Write("<script>alert('Your Random No Is Wrong.');</script>");

        }
    }
    protected void cb1_CheckedChanged(object sender, EventArgs e)
    {
        if (cb1.Checked==true)
        {
            Code.ReadOnly = false;
           
        }
        else
        {
            Code.ReadOnly = true;
        }
    }
}