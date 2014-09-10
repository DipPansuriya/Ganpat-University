using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label1.Text = Session["username"].ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        Response.Redirect("../Login.aspx");
    }
}