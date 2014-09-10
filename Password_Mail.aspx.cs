using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Net.Mail;

public partial class Password_Mail : System.Web.UI.Page
{
    string enroll, emailid, pass,origipassword,decryptpwd ;
    
    private string Decryptdata(string encryptpwd)
    {
        decryptpwd = string.Empty;
        UTF8Encoding encodepwd = new UTF8Encoding();
        Decoder Decode = encodepwd.GetDecoder();
        byte[] todecode_byte = Convert.FromBase64String(encryptpwd);
        int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
        char[] decoded_char = new char[charCount];
        Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
        decryptpwd = new String(decoded_char);
        return decryptpwd;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void sendMail()
    {
        try
        {
          

            MailMessage mail = new MailMessage();
            mail.To.Add(EmailId.Text);
            mail.From = new MailAddress("dip.patel6555@gmail.com");
            mail.Subject = "Password using Gmail";
            string Body = origipassword.ToString();
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

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select Enrollmentno,Emailid,Password from Registration1 where Enrollmentno='"+Enrollmentno.Text+"' and Emailid='"+EmailId.Text+"'",con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();

       if(dr.Read())
        {
            
                enroll = dr.GetString(0);
                emailid = dr.GetString(1);
                pass = dr.GetString(2);

                origipassword = Decryptdata(pass.ToString());

        }
        if ((enroll.ToString()==Enrollmentno.Text) && (emailid.ToString()==EmailId.Text))
        {
            sendMail();
        }
        else 
        {
            Response.Write("<style>alert('sorry...')</style>");
        }
          
    }
}