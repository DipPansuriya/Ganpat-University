using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Upload_Item : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] != null)
        {
            Label1.Text = Session["fname"].ToString();
        }
    }
    protected void Upload_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
      //extra  SqlCommand cmd = new SqlCommand("insert into uploadfile(branch,semester,date,filename) values('"+DropDownList1.SelectedItem+"','"+semester.Text+"','"+txtDate.Text+"',)",con);
      //extra string path = Server.MapPath("Files/");
        //if (FileUpload1.HasFile)
        //{
        //    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        //    string ext = Path.GetExtension(FileUpload1.FileName);
        //    if (ext == ".doc" || ext == ".docx" || ext == ".pdf" || ext == ".xmls" || ext == ".txt")
        //    {
        //        FileUpload1.SaveAs(Server.MapPath("Files/" + filename));
        //       //ertra   FileUpload1.SaveAs(path + FileUpload1.FileName);
        //         string name = "Files/" + FileUpload1.FileName;
        //        SqlCommand cmd = new SqlCommand("insert into UploadFiles(branch,semester,date,filename,filepath) values(@branch,@semester,@date,@Name,@Path)",con);
        //         cmd.Parameters.AddWithValue("@branch",DropDownList1.SelectedItem.ToString());
        //        cmd.Parameters.AddWithValue("@semester",DropDownList2.SelectedItem.ToString());
        //        cmd.Parameters.AddWithValue("@date",txtDate.Text);
        //        cmd.Parameters.AddWithValue("@Name",filename );
        //        cmd.Parameters.AddWithValue("@Path", "Files/" + filename);
        //        con.Open();
        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //        Response.Write("File Upload Sucessfully....");
           
        /////extra------------
        //string ext = Path.GetExtension(FileUpload1.PostedFile.FileName);
        //    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        //    if (ext == ".doc" || ext == ".docx" || ext == ".pdf" || ext == ".xmls"||ext==".txt")
        //    {
        //FileUpload1.SaveAs(Server.MapPath("Files/"+filename));
        //con.Open();
        //SqlCommand cmd = new SqlCommand("insert into UploadFiles(branch,semester,date,filename,filepath) values(@branch,@semester,@date,@Name,@Path)",con);
        //cmd.Parameters.AddWithValue("@branch",DropDownList1.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@semester",DropDownList2.SelectedItem.ToString());
        //cmd.Parameters.AddWithValue("@date",txtDate.Text);
        //cmd.Parameters.AddWithValue("@Name",filename );
        //cmd.Parameters.AddWithValue("@Path", "Files/"+filename );
        //cmd.ExecuteNonQuery();
        //con.Close();
        //    }

        string path = Server.MapPath("Files/");
        if (FileUpload1.HasFile)
        {
            string ext = Path.GetExtension(FileUpload1.FileName);
            if (ext == ".doc" || ext == ".docx" || ext == ".pdf" || ext == ".xmls" || ext == ".txt")
            {
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(path + FileUpload1.FileName);
                string name = "Files/" + FileUpload1.FileName;
              //  SqlCommand cmd = new SqlCommand("insert into UploadFiles(branch,semester,date,filename) values('" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem.ToString() + "','" + txtDate.Text + "','" + name.ToString() + "')", con);
                SqlCommand cmd = new SqlCommand("insert into UploadFiles(branch,semester,date,filename,filepath) values(@branch,@semester,@date,@Name,@Path)", con);
                cmd.Parameters.AddWithValue("@branch",DropDownList1.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@semester",DropDownList2.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@date",txtDate.Text);
                cmd.Parameters.AddWithValue("@Name",filename );
                cmd.Parameters.AddWithValue("@Path", "Files/" + filename);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('File Upload Sucessfully....');</script>");
                Response.Redirect("Faculty/Faculty_Home.aspx");
               // Server.Transfer("",true);
            }
            else
            {
                Response.Write("<script>alert('File Is Not Upload Sucessfully...');</script>");
                Response.Write("<script>alert('Please Select In Proper Format...');</script>");
            }
        }
        else
        {
            Response.Write("File Is Not Upload Sucessfully error....");

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("fname");
        Response.Redirect("../Login.aspx");
    }
}