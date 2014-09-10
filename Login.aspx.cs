using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;


public partial class Login : System.Web.UI.Page
{
    string decpassword, decryptpwd, oripassword,userid;
    protected void Page_Load(object sender, EventArgs e)
    {

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
        if (DropDownList1.SelectedIndex == 0)
        {

            Response.Write("<script>alert('Please Select Type..');</script>");
        }

        else if(DropDownList1.SelectedIndex==1)
        {
            SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select Adminid,Password from Admin where Adminid='" + Username.Text + "' and Password='" + Password.Text + "'", con);
            con.Open();
           SqlDataReader dr = cmd.ExecuteReader();
           if(dr.Read())
           {
               if (dr["Adminid"].ToString() == Username.Text && dr["Password"].ToString() == Password.Text)
               {
                   Response.Write("<script>alert('Welcome','" + Username.Text + "');</script>");
                   Session["Adminid"] = Username.Text;
                   Response.Redirect("Admin/Admin_Home.aspx");
               }
               else
               {

                   Response.Write("<script>alert('Username And Password is Wrong.');</script>");
               }
         }
           else
           {

               Response.Write("<script>alert('Username And Password is Wrong.');</script>");
           }

          }

        else if (DropDownList1.SelectedIndex == 2)
        {
            
            SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("Select Facultyid,Password From Faculty_Module where Facultyid='"+Username.Text+"'",con);
            con.Open();
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                userid = dr1.GetString(0);
                decpassword= dr1.GetString(1);
                oripassword = Decryptdata(decpassword.ToString());
            }

            if ((oripassword.Equals(Password.Text))&&(userid.Equals(Username.Text)))
            {
                Response.Write("<script>alert('Welcome','" + Username.Text + "')</script>");
                Session.Contents.Add("fname",Username.Text);
                //Session["fname"] = Username.Text;
                con.Close();
                Response.Redirect("Faculty/Faculty_Home.aspx");

            }
            else
            {
                Response.Write("<script>alert('FacultyName and Password Is Wrong.');</script>");
            }
        }
        else if (DropDownList1.SelectedIndex == 3)
        {
            SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("Select Enrollmentno,Password from Registration1 where Enrollmentno='" + Username.Text + "'", con);
            con.Open();
            SqlDataReader dr1 = cmd1.ExecuteReader();
           while(dr1.Read())
            {
                userid = dr1.GetString(0);
                decpassword = dr1.GetString(1);
                oripassword = Decryptdata(decpassword.ToString());
            }

           if ((oripassword.ToString() == Password.Text) && (userid.ToString() == Username.Text))
           {
               Response.Write("<script>alert('Welcome','" + Username.Text + "')</script>");
               Session["Username"] = Username.Text;
               con.Close();
               Response.Redirect("Student/Student_Home.aspx");
           }
            else
            {
                Response.Write("<script>alert('Enrollmentno Or Password Is Wrong.');</script>");
            }
        }
        else { 
            Response.Write("<script>alert('User Name and Password is Wrong.');</script>");
        }
    }
    
}