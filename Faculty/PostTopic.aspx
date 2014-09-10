<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostTopic.aspx.cs" Inherits="PostTopic" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
	<style>
	.fancy a img {
	border: 1px solid #BBB;
	padding: 2px;
	margin: 10px 20px 10px 0;
	vertical-align: top;
	}
	.fancy a img.last {
	margin-right: 0;	
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
       
	    .style2
        {
            height: 44px;
            width: 233px;
        }
        .style9
        {
            height: 46px;
            width: 105px;
        }
        .style18
        {
            height: 41px;
        }
        .style20
        {
            height: 46px;
            width: 233px;
        }
        .style21
        {
            height: 41px;
            width: 105px;
        }
        .style22
        {
            width: 105px;
        }
	           
	    .style28
        {
            height: 24px;
        }
       
	    .style29
        {
            height: 25px;
        }
        .abc{
        width:400px;
        height:530px;
        -webkit-border-radius: 48px 63px 73px 63px;
        -moz-border-radius: 48px 63px 73px 63px;
        border-radius: 48px 63px 73px 63px;
        background-color:#CFCFCF;
        -webkit-box-shadow: #B3B3B3 11px 11px 11px;
        -moz-box-shadow: #B3B3B3 11px 11px 11px; 
        box-shadow: #B3B3B3 11px 11px 11px;
        margin-left:450px; 
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
         <h1 style="margin-top:30px; font-size:30px; line-height:35px;">Ohhhhh<br/>I Say...<br/>Rather Nice</h1>
     
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vestibulum massa eu nisi lacinia quis. Dolor sit amet, consectetur adipiscing elit. Fusce vestibulum massa eu nisi lacinia quis. <a href="#">link</a></p>
        <p><a class="button small black" href="#"> Contact Us </a></p>
        </div>
        </div>
        
 

	<div class="box">
		
             <ul id="Ul1" class="menu">
		<li class="current"><a href="Details_faculty.aspx">Details </a></li>
        <li><a href="../Chat/Default.aspx">Chat</a></li>
        <li><a href="Faculty_Post_Query.aspx">Post</a></li>
        <li><a href="Moodle.aspx">Moodle</a></li>
		<li><a href="../Upload_Item.aspx">Upload File</a></li>
        <li><a href="PostTopic.aspx">Post Topic</a></li>
		<li><a href="Addbatch_Faculty.aspx">Add Batch</a></li>
		<li><a href="Profile_faculty.aspx">Profile</a></li>
		<li><a href="Registration_faculty.aspx">Registration</a></li>
		<li><a href="faculty_Home.aspx">Home</a></li>
        </ul>
    Welcome (<asp:LinkButton ID="LinkButton2" runat="server" 
                 onclick="LinkButton2_Click">Logout</asp:LinkButton>) 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </div>
    
    <div class="abc" align="center">
   <table border="0" cellpadding="3" cellspacing="0" style="Width:auto;" ><tr>
       <th align="center" colspan="2"><h3> Post Topics</h3></th></tr>
<tr><td align="left" class="style9" >Select Branch</td><td class="style20" align="left">
  
 <asp:DropDownList ID="DropDownList1" runat="server" align="left">
        <asp:ListItem Value="Select Branch">Select Branch</asp:ListItem>
       <asp:ListItem Value="Computer Engineering">Computer Engineering</asp:ListItem>
        <asp:ListItem Value="Information Technology">Information Technology</asp:ListItem>
        <asp:ListItem Value="Electronics Communication">Electronics Communication</asp:ListItem>
        <asp:ListItem Value="Mechanical Engineering">Mechanical Engineering</asp:ListItem>
        <asp:ListItem Value="Mechtrnoics Engineering">Mechatronics Engineering</asp:ListItem>
        <asp:ListItem Value="BioMedical Engineering">BioMedical Engineering</asp:ListItem>
        <asp:ListItem Value="Civil Engineering">Civil Engineering</asp:ListItem>
        <asp:ListItem Value="Electrical Engineering">Electrical Engineering</asp:ListItem>
        <asp:ListItem Value="Marin Engineering">Marin Engineering</asp:ListItem>
        </asp:DropDownList>  
</td></tr>

<tr><td class="style21" align="left">Select Semester</td>
<td class="style18" align="left">
<asp:DropDownList ID="DropDownList2" runat="server" Width="177px">
        <asp:ListItem Value="Select Semester">Select Semester</asp:ListItem>
       <asp:ListItem Value="1">1st Semseter</asp:ListItem>
     <asp:ListItem Value="2">2nd Semseter</asp:ListItem>
     <asp:ListItem Value="3">3rd Semseter</asp:ListItem>
     <asp:ListItem Value="4">4th Semseter</asp:ListItem>
     <asp:ListItem Value="5">5th Semseter</asp:ListItem>
     <asp:ListItem Value="6">6th Semseter</asp:ListItem>
     <asp:ListItem Value="7">7th Semseter</asp:ListItem>
     <asp:ListItem Value="8">8th Semseter</asp:ListItem>
        </asp:DropDownList>
</td>
</tr>
<tr><td colspan="2" class="style29" align="center">
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button small black" 
        onclick="LinkButton1_Click1">Show Batch</asp:LinkButton>
</td></tr>
<tr><td align="left" class="style21">Select Batch</td><td class="style18" align="left">
  <asp:DropDownList ID="DropDownList3" runat="server" Height="19px" Width="176px">
           
        </asp:DropDownList>
   </td></tr>
       


<tr><td align="left" class="style22">Selece Date</td>
<td class="style2" align="left">


<asp:TextBox ID="txtDate" runat="server">Select Date</asp:TextBox>
    <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
        Enabled="True"  Format = "MM/dd/yy" TargetControlID="txtDate">
    </cc1:CalendarExtender>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>


    </td></tr>
<tr><td valign="top" align="left">Subject</td><td align="left">
    <asp:TextBox ID="TextBox1" runat="server" Width="166px" ></asp:TextBox>
</td></tr>

<tr><td valign="top" align="left">Topics Covered</td>
<td class="style28" align="left">
    
    <asp:TextBox ID="TextBox2" runat="server" Width="166px" Height="48px"></asp:TextBox>
    </td>
</tr>
<tr><td colspan="2" align="center" class="style18">
    <asp:LinkButton ID="Post_Topic" runat="server" CssClass="button small black" 
        onclick="Post_Topic_Click">Post Topic</asp:LinkButton></td></tr>
</table>
 
    
    </div>
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
