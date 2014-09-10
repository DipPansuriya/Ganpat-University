using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class ForgetPassword_student : System.Web.UI.Page
{
    string enroll, question1, answer1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select Enrollmentno from Registration1 where Enrollmentno='"+Username.Text+"'",con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            enroll = dr.GetString(0);
        }
        if (enroll.ToString() == Username.Text)
        {
          Response.Write("<script>alert('right.....');</script>");
          Response.Redirect("Questionchoise.aspx?enroll=" + this.Username.Text);
        }

        else
        {
             Response.Write("<script>alert('Error.....');</script>");
        }
    //    SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
    //    SqlCommand cmd = new SqlCommand("select Enrollmentno,Securityquestion,Answer from Registration1 where Enrollmentno='" + Username.Text + "'and Securityquestion='" + question.SelectedValue.ToString()+ "'and Answer='" + Answer.Text + "'", con);
    //    con.Open();
    //    SqlDataReader dr = cmd.ExecuteReader();
    //    if (dr.Read())
    //    {
    //        enroll = dr.GetString(0);
    //        question.Text = dr["question"].ToString();
    //        question1 = dr.GetString(1);
    //        answer1 = dr.GetString(2);
    //    }

    //        if ((enroll.ToString()==Username.Text) && (question1.ToString()==question.Text) && (answer1.ToString()==Answer.Text))
    //        {

    //            Response.Write("<script>alert('sucess.....');</script>");
    //            Response.Redirect("Reset_student.aspx", true);
    //            // Server.Transfer("Reser_student.aspx?Uname='"+Username.Text+"'",true);
    //        }
    //        else
    //        {
    //            Response.Write("<script>alert('Error.....');</script>");

    //        
    }
}