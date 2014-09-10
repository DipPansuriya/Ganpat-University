using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class PostTopic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] != null)
        {
            Label1.Text = Session["fname"].ToString();
        }
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
    }
    

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue.Equals("Select Branch") || DropDownList2.SelectedValue.Equals("Select Semester"))
        {
            Response.Write("<script>alert('Plase Select Branch And Semseter');</script>");
        }
        else
        {
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select batch from Addbatch where branch='" + DropDownList1.SelectedValue + "'and semester='" + DropDownList2.SelectedValue+ "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList3.DataTextField = ds.Tables[0].Columns["batch"].ToString();
        // DropDownList2.DataValueField = ds.Tables[0].Columns["id"].ToString();

        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataBind();
    }
    }

    protected void Post_Topic_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Equals("Select Branch") || DropDownList2.SelectedItem.Equals("Select Semester"))
        {
            Response.Write("<script>alert('Please Branch And Semester First.');</script>");
        }
        else if(TextBox1.Text=="")
        {
            Response.Write("<script>alert('Please Enter Topic Name.');</script>");
            }
        else
        {
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("insert into Facultytopics1(branch,semester,batch,date,topiccovered,excercises) values('"+DropDownList1.SelectedItem+"','"+DropDownList2.SelectedValue+"','"+DropDownList3.SelectedItem+"','"+txtDate.Text+"','"+TextBox1.Text+"','"+TextBox2.Text+"')",con);
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Topics Are Added sucessfully');</script>");
        con.Close();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.Remove("fname");
        Response.Redirect("../Login.aspx");
    }
}