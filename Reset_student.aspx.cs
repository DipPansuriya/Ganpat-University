using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

public partial class Reset_student : System.Web.UI.Page
{

    string pass, cpass;
    protected void Page_Load(object sender, EventArgs e)
    {
        Username.Text = Request.QueryString["enroll"];
    }

    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);
        strmsg = Convert.ToBase64String(encode);
        return strmsg;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Username.Text == "" || Password.Text == "" || CPassword.Text == "")
        {
            Response.Write("<script>alert('Please Filled Data Properly.....');</script>");
        }
        else if (Password.Text != CPassword.Text)
        {

            Response.Write("<script>alert('Password Doesnt Match.....');</script>");
        }
        else
        {
            pass = Encryptdata(Password.Text);
            cpass = Encryptdata(CPassword.Text);
            SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("update Registration1 set Password='" + pass + "' , Cpassword='"+cpass+"' where Enrollmentno='" + Username.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Password Updatesucessfully.....');</script>");
            Server.Transfer("Login.aspx",true);
        }
    }
    }
