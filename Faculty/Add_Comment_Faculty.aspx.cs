using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Add_Comment_Faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] != null)
        {
            Label1.Text = Session["fname"].ToString();
        }

        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        string date = DateTime.Now.ToString();
        //cdate.Text = date;
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("fname");
        Response.Redirect("../Login.aspx");
    }
   
}