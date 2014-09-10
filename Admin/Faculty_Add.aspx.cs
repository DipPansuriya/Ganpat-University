using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class Admin_Faculty_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Adminid"] != null)
        {
            Label2.Text = Session["Adminid"].ToString();
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string pass = password.Text;

        if (pass.Length < 4)
        {
            Label1.Text = "PassWord Should Be Atleast 4 Character";
            
        }

       else if (DropDownList1.SelectedValue.Equals("Select Branch"))
        {
            Response.Write("<script>alert('Please Select Branch.');</script>");
        }
        else
        {
            string strpassword = Encryptdata(password.Text);
            string strconfirmpass = Encryptdata(Cpassword.Text);
            SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into Faculty_Module(Facultyid,Password,Cpassword,Branch) values('" + facultyname.Text + "','" + strpassword + "','" + strconfirmpass + "','" + DropDownList1.SelectedValue.ToString() + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Faculty Addes Sucessfully.');</script>");
            facultyname.Text = "";
            password.Text = "";
            Cpassword.Text = "";
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session.Remove("Adminid");
        Response.Redirect("../Login.aspx");
    }
}