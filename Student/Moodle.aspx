<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Moodle.aspx.cs" Inherits="Moodle" %>

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
        <li class="current"><a href="Moodle.aspx">Moodle</a></li>	
        <li><a href="../ChangePassword.aspx">Change PassWord</a></li>
        <li><a href="Syllabus_Student.aspx">Syllabus</a></li>
        <li><a href="../Chat/Default.aspx">Chat</a></li>
        <li><a href="../Download_Items.aspx">Download Items</a></li>
		<li><a href="Student_Post_Query.aspx">Post Query</a></li>
        <li><a href="Student_Profile.aspx">Profile</a></li>
		<li><a href="Student_Home.aspx">Home</a></li>
	</ul>
    Welcome  (<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton>)
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    
          
     <%--<table border="0" align="center" cellpadding="5" cellspacing="0" align="left">
     <tr><th  align="left"><h1 dir="ltr">Moodle</h1></th></tr>
     <tr><td align="left"><a href="http://202.131.126.226/ceit/login/index.php">Computer Engineeing / Information Technology.</a></td></tr>
     <tr><td><a href="http://202.131.126.226/ec/login/index.php">Electronics And Communication.</a></td></tr>
     <tr><td><a href="http://202.131.126.226/memc/login/index.php">Mechanical Engineeing / Mechatronics Engineering.</a></td></tr>
     <tr><td><a href="http://202.131.126.226/civil/login/index.php">Civil Engineering.</a></td></tr>
     <tr><td><a href="http://202.131.126.226/ee/login/index.php">Electrincal Engineeing.</a></td></tr>
      <tr><td><a href="http://202.131.126.226/bm/login/index.php">Bio Medical Engineering.</a></td></tr>
     <tr><td><a href="http://202.131.126.226/marin/login/index.php">Marin Engineeing.</a></td></tr>
      </table>
          --%>
   <div class="one_fourth"><!--start top half content-->
	  <div class="fancy"><a id="CSE" href="../BranchImage/cs.jpg"><img alt="CSE" src="../BranchImage/cs.jpg" /></a></div>
		<h3><a href="http://202.131.126.226/ceit/login/index.php">Computer Science And Engineering</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</a></p>
	
    </div>
    <div class="one_fourth">
		<div class="fancy"><a id="IT" href="../BranchImage/ITstockphoto2_1 cropped 4.jpg"><img alt="fancybox" src="../BranchImage/ITstockphoto2_1 cropped 4.jpg" /></a></div>
		<h3><a href="http://202.131.126.226/ceit/login/index.php">Information Technology</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</a></p>
	
    </div>
	<div class="one_fourth">
		<div class="fancy"><a id="EC" href="../BranchImage/electronic.jpg"><img alt="fancybox" src="../BranchImage/electronic.jpg" /></a></div>
		<h3><a href="http://202.131.126.226/ec/login/index.php">Electronics Commnication Engineering</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</a></p>
	
    </div>
	<div class="one_fourth">
		<div class="fancy"><a id="ME" href="../BranchImage/mechanical-engineeringdd.jpg"><img alt="fancybox" src="../BranchImage/mechanical-engineeringdd.jpg" /></a></div>
		<h3><a href="http://202.131.126.226/memc/login/index.php">Mechanical Engineering</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</a></p>
	
    </div>
	<div class="one_fourth">
		<div class="fancy"><a id="MECHA" href="../BranchImage/machatronic-banner.jpg"><img alt="fancybox" src="../BranchImage/machatronic-banner.jpg" /></a></div>
		<h3><a href="http://202.131.126.226/memc/login/index.php">Mechatronics Engineering</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</a></p>
	
    </div>
    <div class="one_fourth">
		<div class="fancy"><a id="BIO" href="../BranchImage/Senior-Biomedical-Engineer-150917566533268.png"><img alt="fancybox" src="../BranchImage/Senior-Biomedical-Engineer-150917566533268.png" /></a></div>
		<h3><a href="http://202.131.126.226/bm/login/index.php">Bio Medical Engineering</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</a></p>
	
    </div>
	<div class="one_fourth">
		<div class="fancy"><a id="CIVIL" href="../BranchImage/banner-civil-engineering.jpg"><img alt="fancybox" src="../BranchImage/banner-civil-engineering.jpg" /></a></div>
		<h3><a href="http://202.131.126.226/civil/login/index.php">Civil Engineering</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</a></p>
	
    </div>
	<div class="one_fourth">
		<div class="fancy"><a id="Electrical" href="../BranchImage/ee_logo1.gif"><img alt="fancybox" src="../BranchImage/ee_logo1.gif" /></a></div>
		
    	<h3><a href="http://202.131.126.226/ee/login/index.php">Electical Engineering</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</a></p>
	</div>
    <div class="one_fourth column-last">
		<div class="fancy"><a id="Marin" href="../BranchImage/marine-engineering.jpg"><img alt="fancybox" src="../BranchImage/marine-engineering.jpg" /></a></div>
		<h3><a href="http://202.131.126.226/marin/login/index.php">Marin Enginering</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</a></p>
	</div>
    <!--end top half content-->
 
	
</div><!--end-body wrapper-->
<br /><br /> <br /><br /><br /><br /> <br /><br /> <br /><br /><br /><br /><br /><br /><br /><br /> <br /><br /><br /><br /><br />
          <br /> <br /> <br /><br /><br /><br /> <br /><br /> <br /><br /><br /><br /><br /><br /><br /><br /> <br /><br /><br /><br /><br />
          <br /><br/><br /> <br /><br /><br /><br /> <br /><br /> <br /><br /><br /><br /><br /><br /><br /><br /> <br /><br /><br /><br /><br />
          <br />
         
     
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
