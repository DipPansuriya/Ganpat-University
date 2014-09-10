<%@ Page language="c#" Codebehind="Default.aspx.cs" AutoEventWireup="false" Inherits="UChat.Pages.Default" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Default</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script type="text/javascript" src=js/niftycube.js></script>
		<link rel="stylesheet" href="../css/niftyCorners.css" />
		<link rel="stylesheet" href="../css/style.css" />
		

		<script type="text/javascript">
		window.onload=function(){
		Nifty("div#main","normal top transparent");
		Nifty("div#footer","normal bottom transparent");
		document.Form1.txtUsername.focus();
		}
		</script>
		
	</HEAD>
	<body>
	<h1>U.V.Patel College Of Engineering.</h1>
		<form id="Form1" method="post" runat="server">
			<div>
                Welcome 
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
            <hr/>
            <div id="main">
			<h2>Server Status</h2>
			<table>
				<tr>
					<td><strong>Online Users</strong></td>
					<td>:</td>
					<td><%= UChat.Global.Engine.Users.Length.ToString() %></td>
				</tr>
				<tr>
					<td><strong>ChatLog Size</strong></td>
					<td>:</td>
					<td><%= UChat.Global.Engine.BufferText.Length.ToString() %></td>
				</tr>
				<tr>
					<td><strong>Username</strong></td>
					<td>:</td>
					<td><asp:textbox id="txtUsername" runat="server"></asp:textbox> &nbsp; <asp:button id="btnLogin" runat="server" Text="Login"></asp:button></td>	
				</tr>
				<tr>
					<td colspan="3" class="error"><asp:literal id="lblErrorMsg" runat="server" EnableViewState="False"></asp:literal></td>
				</tr>
			</table>
			</div>
			<div id="footer"></div>
		</form>
	</body>
</HTML>
