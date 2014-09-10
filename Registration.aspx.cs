using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Text;

public partial class Student_Registration : System.Web.UI.Page
{
    string txtpassword, lblpass, txtemail, date;
    byte[] pic;
    string str = "";
    int i, dt, mn, yr;
    protected void Page_Load(object sender, EventArgs e)
    {
        enroll.Text = Request.QueryString["enroll"];
        Label2.Text = enroll.Text;

        SqlConnection con1 = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        SqlCommand cmd1 = new SqlCommand("select Enrollmentno from Registration1 where Enrollmentno='" + enroll.Text + "'", con1);
        con1.Open();
        SqlDataReader dr = cmd1.ExecuteReader();
        if (dr.Read())
        {
            Label3.Text = dr["Enrollmentno"].ToString();
           
        }


        if (Label2.Text == Label3.Text)
        {
            con1.Close();
           // Response.Write("<script language=javascript>window.alert('Entery Is Already Exists'); </script>");
             
            Response.Write("<SCRIPT LANGUAGE=JavaScript>");       
            Response.Write("alert('Entery Is Alreay Exists.');");
            Response.Write("</SCRIPT>");
            // Response.Write("<script>alert('Please Login Again.');</script>");
            Response.Redirect("Login.aspx");
            //Server.Transfer("Login.aspx");
        }
        else
        {
            con1.Close();
            Response.Write("<script>alert('Welcome.');</script>");
        }

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
        string cvgenroll;

        txtpassword = password.Text;
        //lblpass = Label1.Text;
        txtemail = email.Text;
        dt = Convert.ToInt32(DropDownList1.SelectedItem.ToString());
        mn = Convert.ToInt32(DropDownList2.SelectedItem.ToString());
        yr = Convert.ToInt32(DropDownList3.SelectedItem.ToString());

        date = Convert.ToString(dt + "/" + mn + "/" + yr);

        if (txtpassword.Length < 4 && txtpassword.Length >= 10)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Password is Mininmun 4 Or Maximum 8 Character.";
        }
        for (int i = 0; i <= checkbox1.Items.Count - 1; i++)
        {
            if (checkbox1.Items[i].Selected == true)
            {
                str = checkbox1.Items[i].Text + ',' + str;
            }

        }

        if (enroll.Text == "" || uname.Text == "" || fname.Text == "" || sname.Text == "" || email.Text == "" || password.Text == "" || cpassword.Text == "" || address.Text == "" || pincode.Text == "" || Answer.Text == "")
        {
            Response.Write("<script>alert('Please Enter The Data Properly.');</script>");
        }
        else
        {



            string strpassword = Encryptdata(password.Text);
            string strconfirmpass = Encryptdata(cpassword.Text);
            SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
            string path = Server.MapPath("images/");
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".png" || ext == ".jpg" || ext == ".JPG" || ext == ".PNG")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string name = "~/images/" + FileUpload1.FileName;
                    //  string s="insert into Registration1 (Enrollmentno,Firstname,Middlename,Surname,Emailid,Birthdate,Branch,Gender,Bloodgroup,Password,Cpassword,Address,Pincode,Hobby,Picture,Securityquestion,Answer) values( '" + enroll.Text + "','" + uname.Text + "','" + fname.Text + "','" + sname.Text + "','" + email.Text + "','" + date + "','" + enginerring.SelectedItem + "','" + Gender.SelectedItem + "','" + bloodgroup.SelectedItem + "','" + password.Text + "','" + cpassword.Text + "','" + address.Text + "','" + pincode.Text + "','" + str + "','" + name.ToString() + "','" + question.SelectedItem + "','" + Answer.Text + "')";
                    // string s1 = "insert into image values('" + name.ToString() + "')";
                    SqlCommand cmd = new SqlCommand("insert into Registration1 (Enrollmentno,Firstname,Middlename,Surname,Emailid,Birthdate,Branch,Gender,Bloodgroup,Password,Cpassword,Address,Pincode,Hobby,Picture,Securityquestion,Answer) values( '" + enroll.Text + "','" + uname.Text + "','" + fname.Text + "','" + sname.Text + "','" + email.Text + "','" + date + "','" + enginerring.SelectedItem + "','" + Gender.SelectedItem + "','" + bloodgroup.SelectedItem + "','" + strpassword + "','" + strconfirmpass + "','" + address.Text + "','" + pincode.Text + "','" + str + "','" + name + "','" + question.SelectedItem + "','" + Answer.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Registartion Sucessfully.');</script>");
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('File Is Not Uploaded.');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Registartion is not Sucessfully.');</script>");
            }

        }
    }
}