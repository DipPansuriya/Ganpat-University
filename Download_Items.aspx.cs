using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Student_Uploaded_Items : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label1.Text = Session["username"].ToString();
        }
        
        if (!IsPostBack)
        {
            BindGridviewData();
        }
    }
    private void BindGridviewData()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from UploadFiles", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        gvDetails.DataSource = ds;
        gvDetails.DataBind();
    }
    protected void lnkDownload_Click(object sender, EventArgs e) 
    {
        ImageButton lnkbtn = sender as ImageButton;
      //  LinkButton lnkbtn = sender as LinkButton;
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        string filePath = gvDetails.DataKeys[gvrow.RowIndex].Value.ToString();
        Response.ContentType = "image/jpg";
        Response.AddHeader("Content-Disposition", "attachment;filename=\""+ filePath + "\"");
        Response.TransmitFile(Server.MapPath(filePath));
        Response.End();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        Response.Redirect("../Login.aspx");
    }
}