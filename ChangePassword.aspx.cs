using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

public partial class ChangePassword : System.Web.UI.Page
{
    string newpass, cnewpass, oldpass,oripass,decryptpwd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label5.Text = Session["username"].ToString();
            Enroll.Text = Label5.Text;
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

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
         
        if (Npassword.Text.Length > 6 && Npassword.Text.Length < 12)
        {

            SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select Password from Registration1 where Enrollmentno='"+Enroll.Text+"'",con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                oldpass = dr["Password"].ToString();
                oripass = Decryptdata(oldpass.ToString());
             
            }
            
            newpass = Encryptdata(Npassword.Text);
            cnewpass = Encryptdata(CNewpass.Text);

            if (oripass.Equals(Opassword.Text))
            {
                con.Close();
                SqlConnection con1 = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
                SqlCommand cmd1 = new SqlCommand("update Registration1 set Password='" + newpass + "',Cpassword='" + cnewpass + "' where Enrollmentno='" + Enroll.Text + "'", con1);
                
              con1.Open();
              cmd1.ExecuteNonQuery();
            //    con1.Close();
                Response.Write("<script>alert('Update Sucessfully...');</script>");
                Response.Redirect("Login.aspx");
            //    Server.Transfer("Login.aspx", true);
            }
            else 
            {
                Response.Write("<script>alert('Your Old PassWord Is Wrong.');</script>");
            }
            
        }
        else
        {
            Label2.Text = "New Password Should Be Between 6 to 12 Characters.";
        }

       

        }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        Response.Redirect("../Login.aspx");
    }
}