<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index1.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        <li><a href="Login.aspx">Login</a></li>
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
		
    </div>
   
   

	<div class="one_fourth"><!--start top half content-->
	  <div class="fancy"><a id="fancybox" href="images/210-150-4.png"><img alt="fancybox" src="images/210-150-4.png" /></a></div>
	</div>
	<div class="one_fourth">
		<div class="fancy"><a id="fancybox" href="images/210-150-1.png"><img alt="fancybox" src="images/210-150-1.png" /></a></div>
	</div>
	<div class="one_fourth">
		<div class="fancy"><a id="fancybox" href="images/210-150-2.png"><img alt="fancybox" src="images/210-150-2.png" /></a></div>
	</div>
	<div class="one_fourth column-last">
		<div class="fancy"><a id="fancybox" href="images/210-150-3.png"><img alt="fancybox" src="images/210-150-3.png" /></a></div>
	</div><!--end top half content-->

	<div class="clear"></div>

	<div class="one_fourth">
		<h3>One</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</p>
	</div>
	<div class="one_fourth">
		<h3>Two</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</p>
	</div>
	<div class="one_fourth">
		<h3>Three</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</p>
	</div>
	<div class="one_fourth column-last">
		<h3>Four</h3>
		<p>Donec metus leo, elementum at ultrices ac, dapibus at justo. Donec tristique hendrerit dui vitae lacinia. Suspendisse ante ligula, adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus ac, fermentum vitae felis.</p>
	</div>
    
    <div class="clear"></div>

	<div id="footer-main"><!--start footer-main-->
		<div class="one_fourth">
			<h3>Footer 1</h3>
			<p>Suspendisse ante ligula, del adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus.</p>
		</div>
		<div class="one_fourth">
			<h3>Footer 2</h3>
			<p>Suspendisse ante ligula, del adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus.</p>
		</div>
		<div class="one_fourth">
			<h3>Footer 3</h3>
			<p>Suspendisse ante ligula, del adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus.</p>
		</div>    
		<div class="one_fourth column-last">
			<h3>Footer 4</h3>
			<p>Suspendisse ante ligula, del adipiscing porta aliquam et, rutrum nec lectus. Nulla erat risus, molestie non dapibus.</p>
		</div>
	</div><!--end footer-main-->

	<div id="footer">
		<p id="footer-text">&copy; Copyright 2012 <a href="http://www.makimyers.co.uk/delivery-html-template/">Delivery</a> by
		<a href="http://www.makimyers.co.uk">Dip Pansuriya</a></p>
	</div>

</div><!--end-body wrapper-->

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
