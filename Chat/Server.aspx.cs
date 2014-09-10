using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace UChat.Server
{
	/// <summary>
	/// Summary description for Server.
	/// </summary>
	public class Server : System.Web.UI.Page
	{
		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
			if(Request["action"]!=null && Request["action"].Trim()!="")
			{
				switch(Request["action"])
				{
					case "Login":
						processLogin();
						break;
					case "PostMsg":
						processPostMsg();
						break;
					case "GetMsg":
						processGetMsg();
						break;
					case "UserList":
						processUserList();
						break;
					default:
						break;
				}
			}
		}

		protected void processLogin()
		{
			if( Request.QueryString.Count == 0 )
				return;

			string user = Request.QueryString[ "u" ].ToString();
			Guid g = Guid.NewGuid();
			Global.Engine.AddUser( g.ToString(), user);

			Response.Redirect( "Chat.aspx?" + g.ToString() );
		}

		protected void processPostMsg()
		{
			if( Request.QueryString.Count != 4 )
				return;

			if( Request.QueryString[ "u" ] == null )
				return;

			if( Request.QueryString[ "t" ] == null )
				return;


			string user = Request.QueryString[ "u" ];
			string chat = Request.QueryString[ "t" ];

			if( !Global.Engine.GuidExists( user ) )
				return;


			Global.Engine.AddText( user, chat );
		}

		protected void processGetMsg()
		{
			Response.Write( Global.Engine.BufferText );
		}

		protected void processUserList()
		{
			Response.Write( Global.Engine.UserList );
		}


		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	}
}
