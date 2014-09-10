﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Profile.aspx.cs" Inherits="Student_Student_Profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Ganpat University</title>
<link rel="stylesheet" href="../style.css" type="text/css" media="screen"/>

<!--Nivo Slider-->
   <link rel="stylesheet" href="../js/slide/default.css" type="text/css" media="screen" />
   <link rel="stylesheet" href="../js/slide/nivo-slider.css" type="text/css" media="screen" />
<!--Nivo Slider-->

<!--FANCY BOX-->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
	<script>
	    !window.jQuery && document.write('<script src="js/jquery-1.4.3.min.js"><\/script>');
	</script>
	<script type="text/javascript" src="../js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<link rel="stylesheet" type="text/css" href="../js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
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
        width:400px;
        height:900px;
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
	    </style>
<!--FANCY BOX-->
</head>

<body>
<form id="form1" runat="server">
<div class="header">
	<div id="logo">
		<a href="http://www.makimyers.co.uk/">
		<img alt="logo" src="../images/logo.png"/>
		</a>
		<!--<span>Free HTML5 Template</span>-->
	</div>

	<ul id="menu" class="menu">
		<li class="current"><a href="#">Contact </a></li>
		<li><a href="#">About </a></li>
		<li><a href="#">Home </a></li>
        <li><a href="../Login.aspx">Login</a></li>
	</ul>
</div>

<div id="body-wrapper" class="clearfix"><!--start body-wrapper-->
	
    
    <div class="one_half">
    
    <div style="padding-top:40px; display:block;" class="slider-wrapper theme-default">
		<div style="float:left;" id="slider" class="nivoSlider">
            <img src="../images/ganpatbhaipatel.jpg" title="this is a caption!" alt="GanpatBhai Patel"/>
			<img src="../images/anilbhaipatel.jpg"  alt="AnilBhai patel"/>
            <img src="../images/LNpatel.jpg" alt="LN Patel"/>
            <img src="../images/UVPCE.jpg" alt="UVPCE"/>
            <img src="../images/Convergence.jpg" alt="Convergence"/>
            <img src="../images/BAZA.jpg" alt="Baza"/>
            <img src="../images/Bspolytechin.jpg" alt="BSPolytechnique"/>
            
		</div>
        </div>
        
           </div>
        <div style="width:400px;" class="one_half column-last">
        <div style="float:left; padding-left:30px; display:block; height:300px;">
         <h1 style="margin-top:30px; font-size:30px; line-height:35px;"><br/>MISSION...<br/>Rather Nice</h1>
       <p>It shall be the constant endeavor of Mehsana District Education Foundation and Ganpat University to meet the educational needs of the youth in the areas of professional studies and provide state-of-the art learning opportunities along with inculcation of values of commitment and uprightness<a href="#">link</a></p>
       <%-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vestibulum massa eu nisi lacinia quis. Dolor sit amet, consectetur adipiscing elit. Fusce vestibulum massa eu nisi lacinia quis. <a href="#">link</a></p>
        --%><p><a class="button small black" href="#"> Contact Us </a></p>
        </div>
        </div>
        
 

	<div class="box">
		  <ul id="Ul1" class="menu">
        <li class="current"><a href="Moodle.aspx">Moodle</a></li>	
        <li><a href="../ChangePassword.aspx">Change PassWord</a></li>
        <li><a href="Syllabus_Student.aspx">Syllabus</a></li>
        <li><a href="../Chat/Default.aspx">Chat</a></li>
        <li><a href="../Download_Items.aspx">Download Items</a></li>
		<li><a href="Student_Post_Query.aspx">Post Query</a></li>
        <li><a href="Student_Profile.aspx">Profile</a></li>
		<li><a href="Student_Home.aspx">Home</a></li>
	</ul>
	</ul>
	
    Welcome (<asp:LinkButton ID="LinkButton1" runat="server" 
              onclick="LinkButton1_Click">Logout</asp:LinkButton>) 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </div>
    <div class="abc" align="center">
<table border="0" cellpadding="5" cellspacing="0" align="center" dir="ltr">
<th align="center" colspan="2"><h1>
    Profile</h1></th>
    <tr><td align="left">Enrollment No:</td><td>
    <asp:TextBox ID="enroll" runat="server" Width="243px"></asp:TextBox></td></tr>

<tr><td align="left">Student Name:</td><td>
    <asp:TextBox ID="uname" runat="server" Width="243px"></asp:TextBox></td></tr>
        
       
        <tr><td align="left">Father's Name:</td><td>
            <asp:TextBox  ID="fname" runat="server" Width="246px" CssClass="textbox" 
                    ReadOnly="True"></asp:TextBox>
            </td></tr>
        <tr><td align="left">Surname:</td><td>
            <asp:TextBox  ID="sname" runat="server" Width="246px" CssClass="textbox" 
                    ReadOnly="True"></asp:TextBox>
         </td></tr>
        <tr><td align="left">Email Id:</td><td>
            <asp:TextBox  ID="email" runat="server" Width="246px" CssClass="textbox" 
                    ReadOnly="True"></asp:TextBox>
        
            <asp:Label ID="LabelEmail" runat="server"></asp:Label>
        </td></tr>
        <tr><td align="left">Birth Date:</td><td>
            <asp:TextBox ID="birthdate" runat="server" ReadOnly="True" Width="243px"></asp:TextBox>
             
             </td></tr>
      
             
      <tr><td align="left">Branch:</td><td>
                <asp:TextBox ID="branch" runat="server" ReadOnly="True" Width="243px"></asp:TextBox>
            </td></tr>
       
        
        
        <tr><td align="left">Gender:</td><td>
            <asp:TextBox ID="gender" runat="server" ReadOnly="True" Width="241px"></asp:TextBox>
            </td></tr>
        
        <tr><td align="left">Blood Group:</td><td>
            <asp:TextBox ID="bloodgroup" runat="server" ReadOnly="True" Width="242px"></asp:TextBox>    </td></tr>
        
       
             <tr><td align="left">Address:</td><td>
            <asp:TextBox ID="address" runat="server" Width="246px" TextMode="SingleLine" 
                         CssClass="textbox" ReadOnly="True"></asp:TextBox></td></tr>
         
             <tr><td align="left">Pincode:</td><td>
            
            <asp:TextBox  ID="pincode" runat="server" Width="245px" CssClass="textbox" 
                     ></asp:TextBox></td></tr>
        <tr><td align="left">
         Hobby: 
        </td><td>
            <asp:TextBox ID="hobby" runat="server" ReadOnly="True" Width="248px"></asp:TextBox>  </td></tr>
       
       <tr><td align="left">Security Question</td><td>
           <asp:TextBox ID="question" runat="server"  ReadOnly="True" 
               Width="250px"></asp:TextBox></td></tr>
       
                <tr><td align="left">Answer</td><td>
           <asp:TextBox ID="answer" runat="server"  ReadOnly="True" 
               Width="250px"></asp:TextBox></td></tr>
    </table>
    

</div>
   
   <!--end footer-main-->
   <br/>
   <br/>
      <div class="footer">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copyright 2013 Student Management System. Prepared By Dip Pansuriya And Pankaj Sakariya.</div>
        <div class="social-popout"><a href="https://www.twitter.com"><img src="twitter-48circle.png" alt="Twitter" title="Twitter"/></a></div>
        <div class="social-popout"><a href="https://www.rss.com"><img src="rss-circle-color.png" alt="RSS" title="Rss"/></a></div>
        <div class="social-popout"><a href="https://www.youtube.com"><img src="youtube-circle-color.png" alt="Youtube" title="You-Tube"/></a></div>
        <div class="social-popout"><a href="https://www.googleplus.com"><img src="googleplus-48circle.png" alt="Google Plus" title="Google Plus"/></a></div>
        <div class="social-popout"><a href="https://www.facebook.com"><img src="facebook-48circle.png" alt="Facebook" title="Facebook"/></a></div>
      </div>

<!--end-body wrapper-->

    <!--Nivo Slider-->
    <script type="text/javascript" src="../js/slide/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>
	<!--Nivo Slider-->
    </form>
</body>

</html>