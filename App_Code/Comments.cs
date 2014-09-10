using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data.SqlClient;
using System.Data;


public class Comments
{
    
    SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
    private static StringBuilder sb = new StringBuilder(); 
	public static string  GetComments()
	{
        GetComments(0); // get comments of the fist level ( comments wich is not reply to other comment)
        var retString = sb.ToString();
        sb.Clear();
        return retString;
	}


    private static void GetComments(int replyTo)
    {
        SqlConnection con = new SqlConnection("Data Source=DIP\\SQLEXPRESS;Initial Catalog=UVPCE_DB;Integrated Security=True");
       
        
        SqlCommand cmd = new SqlCommand("select Id,Name,Comment,Date from Comment1 where replyTo = @ReplyTo order by Id ", con) { CommandType = CommandType.Text };
     string date=DateTime.Now.ToString();

        cmd.Parameters.AddWithValue("@ReplyTo", replyTo);
        con.Open();
        using (var dr = cmd.ExecuteReader())
        {
            while (dr.Read())
            {
                sb.Append("<div class='CommentWrapper'>"); // open comment wrapper div 
                if (replyTo != 0) sb.Append("<div class='Arrow'></div>"); // if this is a reply comment then we add the arrow 
                sb.Append("<div class='Comment'  > <label> Name :" + dr["Name"] + // open the comment div  and add the name
                    // note that we should pass the id of the comment that we want to reply to.
                 " </label>  <a href='Add_Comment_Faculty.aspx?replyTo=" + dr["Id"] + "'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Reply</a>  <br/>" + dr["Comment"].ToString() +
                  "</label></div>"); // add the comment and reply then close the comment div 
                GetComments(int.Parse(dr["Id"].ToString())); // call get comments ( reply comments for the current comment) iteratively 
                sb.Append("</div>"); // finally close the  comment wrapper tag .

            }
        }
        con.Close();
        
    }

}