using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Questionchoise : System.Web.UI.Page
{
    string gvnanswer;
    protected void Page_Load(object sender, EventArgs e)
    {
        Enrollmentno.Text=Request.QueryString["enroll"];

        SqlConnection con =new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select Securityquestion from Registration1 where Enrollmentno='"+Enrollmentno.Text+"'",con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            question.Text = dr["Securityquestion"].ToString();
        }
        con.Close();
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        SqlCommand cmd1 = new SqlCommand("select Answer from Registration1 where Enrollmentno='"+Enrollmentno.Text+"'and Securityquestion='"+question.Text+"'",con1);
        con1.Open();
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            gvnanswer= dr1["Answer"].ToString();
        }
        if (gvnanswer.ToString() == Answer.Text)
        {
            Response.Write("<script>alert('right.....');</script>");
            Response.Redirect("Reset_Student.aspx?enroll="+this.Enrollmentno.Text);
        }
        else
        {
            Response.Write("<script>alert('sorry. Answer is Wrong Try Again.');</script>");
            Response.Redirect("Question.aspx");
        }


    }
}