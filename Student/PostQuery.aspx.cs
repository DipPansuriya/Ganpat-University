using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class PostQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label1.Text = Session["username"].ToString();
        }
        if (!IsPostBack)
        {
            BindRepeaterData();
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("insert into [user1](username,subject,comment,posteddate) values(@username,@subject,@comment,@postedate)", con);

        cmd.Parameters.AddWithValue("@username", Textname.Text);
        cmd.Parameters.AddWithValue("@subject", txtSubject.Text);
        cmd.Parameters.AddWithValue("@comment", txtComment.Text);
        cmd.Parameters.AddWithValue("@postedate", DateTime.Now);
        con.Open();
        //SqlCommand cmd = new SqlCommand("insert into (username,subject,comment,posteddate) values('"+Textname.Text+"','"+txtSubject.Text+"','"+txtComment+"')",con);
        cmd.ExecuteNonQuery();
        // con.Close();

        SqlCommand cmd1 = new SqlCommand("select no from user1 where username='" + Textname.Text + "' and subject='" + txtSubject.Text + "' and comment='" + txtSubject.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        while (dr.Read())
        {
            Label1.Text = dr["no"].ToString();
        }

        Textname.Text = string.Empty;
        txtSubject.Text = string.Empty;
        txtComment.Text = string.Empty;
        BindRepeaterData();
    }
    protected void BindRepeaterData()
    {
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from [user1] Order By posteddate desc", con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        //da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            RepDetails.Visible = true;
            RepDetails.DataSource = ds;
            RepDetails.DataBind();
        }
        else
        {
            RepDetails.Visible = false;
        }

        con.Close();
    }

}