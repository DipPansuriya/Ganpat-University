using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Profile_faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] != null)
        {
            Label1.Text = Session["fname"].ToString();
        }
        
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        // SqlCommand cmd = new SqlCommand("select Middlename,Surname,Emailid,Birthdate,Branch,Gender,Bllodgroup,Post,Experience,Address,Pincode,Hobby,Specialsubject,Picture,question,Answer from FacultyRegisration1 where Facultyname='"+Label1.Text+"'",con);
        SqlCommand cmd = new SqlCommand("select Middlename,Surname,Emailid,Birthdate,Branch,Gender,Bloodgroup,Post,Experience,Address,Pincode,Hobby,Specialsubject,Picture from FacultyRegistration where Facultyname='" + Label1.Text + "'", con);

        con.Open();
        GridView1.DataSource = FetchAllImagesInfo();
        GridView1.DataBind();
        SqlDataReader dr = cmd.ExecuteReader();
        bool temp = false;

        while (dr.Read())
        {
            name.Text = Label1.Text;
            fname.Text = dr.GetString(0);
            sname.Text = dr.GetString(1);
            email.Text = dr.GetString(2);
            birthdate.Text = dr.GetString(3);
            branch.Text = dr.GetString(4);
            gender.Text = dr.GetString(5);
            bloodgroup.Text = dr.GetString(6);
            Post.Text = dr.GetString(7);
            Experience.Text = dr.GetString(8);
            address.Text = dr.GetString(9);
            pincode.Text = dr["Pincode"].ToString();
            hobby.Text = dr["Hobby"].ToString();
            Subject.Text = dr["Specialsubject"].ToString();
           // picture.Text = dr["Picture"].ToString();
            //   question.Text = dr["question"].ToString();
            //   Answer.Text = dr["Answer"].ToString();

        }
        if (temp == false)
        {
            con.Close();
        }
       
    }
   
    public DataTable FetchAllImagesInfo()
    {
        string sql = "Select * from Faculty_Image where Facultyname='" + Label1.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, "Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("fname");
        Response.Redirect("../Login.aspx");
    }
}