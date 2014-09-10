using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] != null)
        {
            Label1.Text = Session["fname"].ToString();
        }

        Response.Cache.SetCacheability(HttpCacheability.NoCache);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
      //  Session.Abandon();
      Session.Remove("fname");
     //   Session["fname"] = null;
        Response.Redirect("../Login.aspx");
    }
}