using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Student_Student_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label1.Text = Session["username"].ToString();
        }
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        // SqlCommand cmd = new SqlCommand("select Middlename,Surname,Emailid,Birthdate,Branch,Gender,Bllodgroup,Post,Experience,Address,Pincode,Hobby,Specialsubject,Picture,question,Answer from FacultyRegisration1 where Facultyname='"+Label1.Text+"'",con);
        SqlCommand cmd = new SqlCommand("select Enrollmentno,Firstname,Middlename,Surname,Emailid,Birthdate,Branch,Gender,Bloodgroup,Address,Pincode,Hobby,Securityquestion,Answer from Registration1 where Enrollmentno='" + Label1.Text + "'", con);

        con.Open();
        
        SqlDataReader dr = cmd.ExecuteReader();
        bool temp = false;

        while (dr.Read())
        {
            enroll.Text = Label1.Text;
            uname.Text = dr.GetString(1);
            fname.Text = dr.GetString(2);
            sname.Text = dr.GetString(3);
            email.Text = dr.GetString(4);
            birthdate.Text = dr.GetString(5);
            branch.Text = dr.GetString(6);
            gender.Text = dr.GetString(7);
            bloodgroup.Text = dr.GetString(8);
            
            address.Text = dr.GetString(9);
            pincode.Text = dr["Pincode"].ToString();
            hobby.Text = dr["Hobby"].ToString();
            question.Text = dr["Securityquestion"].ToString();
            answer.Text = dr["Answer"].ToString();
            // picture.Text = dr["Picture"].ToString();
            //   question.Text = dr["question"].ToString();
            //   Answer.Text = dr["Answer"].ToString();

        }
        if (temp == false)
        {
            con.Close();
        }
    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        Response.Redirect("../Login.aspx");
    }
}