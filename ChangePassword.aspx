<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ganpat University</title>
<link rel="stylesheet" href="style.css" type="text/css" media="screen"/>

<!--Nivo Slider-->
   <link rel="stylesheet" href="js/slide/default.css" type="text/css" media="screen" />
   <link rel="stylesheet" href="js/slide/nivo-slider.css" type="text/css" media="screen" />
<!--Nivo Slider-->

<!--FANCY BOX-->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
	<script>
	    !window.jQuery && document.write('<script src="js/jquery-1.4.3.min.js"><\/script>');
	</script>
	<script type="text/javascript" src="js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<link rel="stylesheet" type="text/css" href="js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
	<script type="text/javascript">
	    $(document).ready(function () {
	        $("a#fancybox").fancybox();
	    });
	</script>
	<style type="text/css">
	.fancy a img {
	border: 1px solid #BBB;
	padding: 2px;
	margin: 10px 20px 10px 0;
	vertical-align: top;
	}
	 .abc{
        width:450px;
        height:400px;
        -webkit-border-radius: 48px 63px 73px 63px;
        -moz-border-radius: 48px 63px 73px 63px;
        border-radius: 48px 63px 73px 63px;
        background-color:#CFCFCF;
        -webkit-box-shadow: #B3B3B3 11px 11px 11px;
        -moz-box-shadow: #B3B3B3 11px 11px 11px; 
        box-shadow: #B3B3B3 11px 11px 11px;
        margin-left:450px; 
       }
       .footer{
        width:950px;
        height:100px;
        margin-left:200px;
        -webkit-border-radius: 48px 63px 73px 63px;
        -moz-border-radius: 48px 63px 73px 63px;
        border-radius: 48px 63px 73px 63px;
        background-color:#CFCFCF;
        -webkit-box-shadow: #B3B3B3 11px 11px 11px;
        -moz-box-shadow: #B3B3B3 11px 11px 11px; 
        box-shadow: #B3B3B3 11px 11px 11px; 
       }
        .social-popout {
	height: 33px;
	width: 33px;
	margin: 10px;
	margin-right:28px;
	float:right;
		
	-webkit-transition: all ease 0.5s;
	-moz-transition: all ease 0.5s;
	-o-transition: all ease 0.5s;
	-ms-transition: all ease 0.5s;
	-o-transition: all ease 0.5s;
	-moz-transition: all ease 0.5s;
	-ms-transition: all ease 0.5s;
	transition: all ease 0.5s;
}
.social-popout img {
	border-radius: 50%;
	margin: 8px;
	width: 100%;
	box-shadow: 0px 0px 4px 1px rgba(0,0,0,0.8);
	-webkit-transition: all ease 0.5s;
	-moz-transition: all ease 0.5s;
	-o-transition: all ease 0.5s;
	-ms-transition: all ease 0.5s;
	transition: all ease 0.5s;
}
.social-popout img:hover {
	margin: 0px;
	box-shadow: 6px 6px 4px 4px rgba(0,0,0,0.3);
}
       
	.fancy a img.last {
	margin-right: 0;	
	}
	    .style1
        {
            height: 42px;
        }
	</style>
<!--FANCY BOX-->
</head>

<body>
<form id="form1" runat="server">
<div class="header">
	<div id="logo">
		<a href="http://www.makimyers.co.uk/">
		<img alt="logo" src="images/logo.png"/>
		</a>
		<!--<span>Free HTML5 Template</span>-->
	</div>

	<ul id="menu" class="menu">
		<li class="current"><a href="#">Contact </a></li>
		<li><a href="#">About </a></li>
		<li><a href="#">Home </a></li>
	</ul>
</div>

<div id="body-wrapper" class="clearfix"><!--start body-wrapper-->
	
    
    <div class="one_half">
    
    <div style="padding-top:40px; display:block;" class="slider-wrapper theme-default">
		<div style="float:left;" id="slider" class="nivoSlider">
            <img src="images/ganpatbhaipatel.jpg" title="this is a caption!" alt="GanpatBhai Patel"/>
			<img src="images/anilbhaipatel.jpg"  alt="AnilBhai patel"/>
            <img src="images/LNpatel.jpg" alt="LN Patel"/>
            <img src="images/UVPCE.jpg" alt="UVPCE"/>
            <img src="images/Convergence.jpg" alt="Convergence"/>
            <img src="images/BAZA.jpg" alt="Baza"/>
            <img src="images/Bspolytechin.jpg" alt="BSPolytechnique"/>
            
		</div>
        </div>
        
           </div>
        <div style="width:400px;" class="one_half column-last">
        <div style="float:left; padding-left:30px; display:block; height:300px;">
         <h1 style="margin-top:30px; font-size:30px; line-height:35px;">Ohhhhh<br/>I Say...<br/>Rather Nice</h1>
     
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vestibulum massa eu nisi lacinia quis. Dolor sit amet, consectetur adipiscing elit. Fusce vestibulum massa eu nisi lacinia quis. <a href="#">link</a></p>
        <p><a class="button small black" href="#"> Contact Us </a></p>
        </div>
        </div>
        
 <div class="box">
		
        <ul id="Ul1" class="menu">
        <li class="current"><a href="Student/Moodle.aspx">Moodle</a></li>	
        <li><a href="ChangePassword.aspx">Change PassWord</a></li>
        <li><a href="Student/Syllabus_Student.aspx">Syllabus</a></li>
        <li><a href="Chat/Default.aspx">Chat</a></li>
        <li><a href="Download_Items.aspx">Download Items</a></li>
		<li><a href="Student/Student_Post_Query.aspx">Post Query</a></li>
        <li><a href="Student/Student_Profile.aspx">Profile</a></li>
		<li><a href="Student/Student_Home.aspx">Home</a></li>
	</ul>
    Welcome  (<asp:LinkButton ID="LinkButton2" runat="server" 
            onclick="LinkButton2_Click" >Logout</asp:LinkButton>)
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </div>
   </div>
   <div class="abc" align="center">
<table border="0" cellpadding="2" cellspacing="0" align="center" dir="ltr">
<tr><th colspan="2" align="center"><h1>&nbsp;</h1>
    <h1>Change Password</h1></th></tr>
<tr><td align="left">User Name:</td>
            <td>
            <asp:TextBox  ID="Enroll" runat="server" Width="246px" CssClass="textbox" 
                    ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="*" ControlToValidate="Enroll" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="Label1" runat="server"></asp:Label>
         </td></tr>
         
         <tr><td align="left">Old Password:</td><td>
            <asp:TextBox  ID="Opassword" runat="server" Width="246px" CssClass="textbox" 
                 TextMode="Password"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                 ErrorMessage="*" ControlToValidate="Opassword" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:Label ID="Label2" runat="server"></asp:Label>
             </td></tr>
            <tr><td align="left">New Password:</td><td>
            <asp:TextBox  ID="Npassword" runat="server" Width="246px" CssClass="textbox" 
                      TextMode="Password"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                      ControlToValidate="Npassword" ErrorMessage="*" ForeColor="Black"></asp:RequiredFieldValidator>
                  </td></tr>
            <tr><td align="left">Confirm Password:</td><td>
            <asp:TextBox  ID="CNewpass" runat="server" Width="246px" CssClass="textbox" 
                      TextMode="Password"></asp:TextBox>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                      ErrorMessage="*" ControlToValidate="CNewpass" 
                      ControlToCompare="Npassword" ForeColor="Red"></asp:CompareValidator></td></tr>
           <tr>
           <td class="style1">
               &nbsp;</td><td align="center" class="style1">
               <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button small black" 
                   onclick="LinkButton1_Click">Change Password</asp:LinkButton>
           </td></tr>
              </table>
              </div>
   
<!--end-body wrapper-->
<br/><br/>
      <div class="footer">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copyright 2013 Student Management System. Prepared By Dip Pansuriya And Pankaj Sakariya.</div>
        <div class="social-popout"><a href="https://www.twitter.com"><img src="twitter-48circle.png" alt="Twitter" title="Twitter"/></a></div>
        <div class="social-popout"><a href="https://www.rss.com"><img src="rss-circle-color.png" alt="RSS" title="Rss"/></a></div>
        <div class="social-popout"><a href="https://www.youtube.com"><img src="youtube-circle-color.png" alt="Youtube" title="You-Tube"/></a></div>
        <div class="social-popout"><a href="https://www.googleplus.com"><img src="googleplus-48circle.png" alt="Google Plus" title="Google Plus"/></a></div>
        <div class="social-popout"><a href="https://www.facebook.com"><img src="facebook-48circle.png" alt="Facebook" title="Facebook"/></a></div>
      </div>
    <!--Nivo Slider-->
    <script type="text/javascript" src="js/slide/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>
	<!--Nivo Slider-->
    </form>
</body>

</html>
