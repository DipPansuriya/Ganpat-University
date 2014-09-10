using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Student_panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Adminid"] != null)
        {
            Label1.Text = Session["Adminid"].ToString();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("Adminid");
        Response.Redirect("../Login.aspx");
    }
}