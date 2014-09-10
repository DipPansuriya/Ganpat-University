<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class Handler : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
        con.Open();
        string sql = "select Facultyname,Image from Faculty_Image where id=@id";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(context.Request.QueryString["id"]);
        cmd.Prepare();
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        //   context.Response.ContentType = dr["ImageName"].ToString();
        context.Response.BinaryWrite((byte[])dr["Image"]);

    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}