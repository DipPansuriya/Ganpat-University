using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Addbatch_Faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] != null)
        {
            Label1.Text = Session["fname"].ToString();
        }
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
    }
    protected void AddBatch_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("insert into Addbatch(branch,batch,semester) values('" + DropDownList1.SelectedValue + "','" + batch.Text + "','" + DropDownList2.SelectedValue + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Batch Is Added SucessFully...');</script>");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("fname");
        Response.Redirect("../Login.aspx");
    }
}