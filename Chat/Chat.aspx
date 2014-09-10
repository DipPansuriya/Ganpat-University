<%@ Page language="c#" Codebehind="Chat.aspx.cs" AutoEventWireup="false" Inherits="UChat.Chat" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>UChat</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../css/niftyCorners.css" />
		<link rel="stylesheet" href="../css/style.css" />


		<script type="text/javascript" src="../js/AjaxFunctions.js"></script>

		<script type="text/javascript" src="../js/niftycube.js"></script>
		
				
		<script type="text/javascript">
		window.onload=function(){
		Nifty("div#form","big transparent");
		Nifty("div#chatbox","normal transparent");
		Nifty("div#userbox","normal transparent");		
		}
		</script>
		<style>
		#form{margin:10px; background:#778899; padding:15px; width:80%;}
		#chatpane{background:#FFFFF0;}
		</style>		
	</HEAD>
	<body>
		<h1>U.V.Patel College Of Engineering.</h1>
        
		<form id="Form1" method="post" runat="server"></form>
		<div id="form">
			
			<div id="chatpane">
					<ul id="chatbuffer" />
			</div>
				
			<div id="userpane">
					<ul id="userlist" />
			            <hr />
                        <label id="username">Online User</label>
                        <hr/>
			</div>
			<p class="clear" />
				
			<label id="username">Message: </label>
			<input type="text" class="mytext" id="mytext" onkeydown="captureReturn(event)">
		</div>
		<script type="text/javascript">
			sniffBrowserType();
			showLoadScreen();
			setTimers();
			setFocus('mytext');
		</script>
	</body>
</HTML>
