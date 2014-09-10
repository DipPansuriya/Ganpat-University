<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sendmail.aspx.cs" Inherits="Faculty_Sendmail" %>

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
	.fancy a img.last {
	margin-right: 0;	
	}
	.abc{
        width:400px;
        height:650px;
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
       
	    .style1
        {
            height: 47px;
        }
        .style3
        {
            height: 25px;
        }
        .style4
        {
            height: 48px;
        }
	    .style5
        {
            height: 31px;
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
            <img src="../images/ganpatbhaipatel.jpg" title="Mr.GANPATBHAI PATEL" alt="GanpatBhai Patel"/>
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
        <li class="current"><a href="Details_faculty.aspx">Details </a></li>
        <li><a href="../Chat/Default.aspx">Chat</a></li>
        <li><a href="Faculty_Post_Query.aspx">Post</a></li>
        <li><a href="Moodle.aspx">Moodle</a></li>
        <li><a href="Show_Topics.aspx">Show Covered Topics</a></li>
        <li><a href="ShowBatch.aspx">Show batch</a></li>
        <li><a href="Sendmail.aspx">Send Mail</a></li>
		<li><a href="faculty_Home.aspx">Home</a></li>
	</ul>
    Welcome
        (<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton>)
        <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>
    </div>
    
   </div> 
   <div class="abc" align="center">
   
<table border="0" cellpadding="0" cellspacing="0" align="center" dir="ltr"> 
<tr><th align="center" colspan="2" class="style5"><h1>Email.</h1></th></tr>
<tr><td align="left">Faculty Name</td><td align="left" class="style3">
            <asp:TextBox  ID="Facultyname" runat="server" ReadOnly="True"></asp:TextBox>
    </td></tr> 
    <tr><td align="left">EmailId</td><td align="left">
        <asp:TextBox ID="Fid" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td align="left">Password</td><td align="left">
        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
    </td></tr>
<tr><td align="left" class="style4">Branch</td><td align="left" class="style4">
    <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="176px">
    <asp:listitem value="Computer Engineering">Computer Engineering</asp:listitem>
    <asp:listitem value="Information Technology">Information Technology</asp:listitem>
    <asp:listitem value="Electronics Communication">Electronics Communication</asp:listitem>
    <asp:listitem value="Mechanical Engineering">Mechanical Engineering</asp:listitem>
    <asp:listitem value="Mechatronics Engineering">Mechatronics Engineering</asp:listitem>
    <asp:listitem value="BioMedical Engineering">BioMedical Engineering</asp:listitem>
    <asp:listitem value="Civil Engineering">Civil Engineering</asp:listitem>
    <asp:listitem value="Marin Engineering">Marin Engineering</asp:listitem>

    </asp:DropDownList>
</td></tr>

<tr><td align="left" class="style1">Semester</td><td align="left" class="style1">
    <asp:DropDownList ID="DropDownList2" runat="server" Height="24px" Width="180px">
    <asp:ListItem Value="1st">1st Semester</asp:ListItem>
    <asp:ListItem Value="2nd">2nd Semester</asp:ListItem>
    <asp:ListItem Value="3rd">3rd Semester</asp:ListItem>
    <asp:ListItem Value="4th">4th Semester</asp:ListItem>
    <asp:ListItem Value="5th">5th Semester</asp:ListItem>
    <asp:ListItem Value="6th">6th Semester</asp:ListItem>
    <asp:ListItem Value="7th">7th Semester</asp:ListItem>
    <asp:ListItem Value="8th">8th Semester</asp:ListItem>
    </asp:DropDownList>
</td></tr>

<tr><td align="left">Email ID:</td><td align="left" class="style3"><asp:TextBox ID="Emailid" runat="server" ></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="Emailid" ErrorMessage="Email Address" ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </td></tr>
    <tr><td align="left">Subject</td><td align="left">
        <asp:TextBox ID="subject" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td align="left">Body</td><td align="left">
        <asp:TextBox ID="Body" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td align="left">Attachment</td><td align="left">
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </td></tr>
         <tr><td class="style1">
             <asp:LinkButton ID="Submit" runat="server" CssClass="button small black" 
                 onclick="Submit_Click">Send Mail</asp:LinkButton>   </td><td class="style1">
             <asp:LinkButton ID="Reset" runat="server" CssClass="button small black">Reset</asp:LinkButton>
       </td></tr></table>
       </div>

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
