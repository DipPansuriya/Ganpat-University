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

namespace UChat.Pages
{
	/// <summary>
	/// Summary description for WebForm1.
	/// </summary>
	public class Default : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Button btnLogin;
		protected System.Web.UI.WebControls.Literal lblErrorMsg;
		protected System.Web.UI.WebControls.TextBox txtUsername;
        public System.Web.UI.WebControls.Label Label1;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
            if (Session["fname"] != null)
            {
                Label1.Text = Session["fname"].ToString();
               
            }
			// Put user code to initialize the page here
			lblErrorMsg.Text = string.Empty;
			txtUsername.Attributes.Add("onkeydown", 
				"if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {document.getElementById('"+btnLogin.UniqueID+"').click();return false;}} else {return true}; ");
		}

		protected void Login( object sender, EventArgs e )
		{
			
			string user = txtUsername.Text;

			if( !ValidateNick( user ) ) return;

			if( Global.Engine.UserExists( user ) )
			{
				lblErrorMsg.Text = "A user with this name already exists, try again.";
				return;
			}

			Response.Redirect( "Server.aspx?action=Login&u=" + user );
		}

		bool ValidateNick( string nick )
		{
			if( nick == string.Empty )
			{
				lblErrorMsg.Text = "Please input your nickname here.";
				return false;
			}

			foreach( char c in nick )
			{
				if( (int)c > 122 || (int)c < 65 )
				{
					lblErrorMsg.Text = string.Format( "Nickname can only contain letters.  {0} is an invalid character", c );
					return false;
				}
			}

			if( nick.Length > 10 )
			{
				lblErrorMsg.Text = "Nickname too long, please enter a nickname that is less than 10 characters";
				return false;
			}

			return true;
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
			this.btnLogin.Click += new System.EventHandler(this.Login);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	}
}
