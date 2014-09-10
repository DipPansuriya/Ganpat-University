using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Faculty_ShowBatch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] != null)
        {
            Label1.Text = Session["fname"].ToString();
        }
    }
   
    protected void cdDelete_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox hdcheckbox = (CheckBox)GridView1.HeaderRow.FindControl("cdDeleteHeader");
        if (hdcheckbox.Checked)
        {
            hdcheckbox.Checked = ((CheckBox)sender).Checked;

        }
        else
        {
            bool allcheckboxcheck = true;

            foreach (GridViewRow gridViewRow in GridView1.Rows)
            {


                if (!((CheckBox)gridViewRow.FindControl("cdDelete")).Checked)
                {
                    allcheckboxcheck = false;
                    break;
                }
            }
            hdcheckbox.Checked = allcheckboxcheck;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        List<string> idtodelete = new List<string>();

        foreach (GridViewRow gridViewRow in GridView1.Rows)
        {
            if (((CheckBox)gridViewRow.FindControl("cdDelete")).Checked)
            {
                string eid = ((Label)gridViewRow.FindControl("lblid")).Text;
                idtodelete.Add(eid);
            }
        }

        if (idtodelete.Count > 0)
        {
            Label2.ForeColor = System.Drawing.Color.Navy;
            foreach (string strbatchid in idtodelete)
            {
                deleterow(Convert.ToInt32(strbatchid));
            }
          //  Label1.Text = idtodelete.Count.ToString() + "row(s) deleted";
            Response.Redirect("ShowBatch.aspx");
        }
        else
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "No Rows selected to delet";

        }

    }

    public static void deleterow(int batchid)
    {
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("delete from Addbatch where id=@id", con);
        con.Open();
        SqlParameter param = new SqlParameter();
        param.ParameterName = "@id";
        cmd.Parameters.Add(param);
        param.Value = batchid;

        cmd.ExecuteNonQuery();
    }


    protected void cdDeleteHeader_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow gridViewRow in GridView1.Rows)
        {
            ((CheckBox)gridViewRow.FindControl("cdDelete")).Checked = ((CheckBox)sender).Checked;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("fname");
        Response.Redirect("../Login.aspx");
    }
}