<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addbatch_Faculty.aspx.cs" Inherits="Addbatch_Faculty" %>

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
	.abc{
        width:400px;
        height:350px;
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
       
	    .style2
        {
            height: 22px;
        }
        .style8
        {
            height: 52px;
        }
        .style9
        {
            height: 50px;
        }
        .style10
        {
            height: 60px;
        }
        .style11
        {
            height: 52px;
            width: 194px;
        }
        .style12
        {
            width: 194px;
        }
        .style13
        {
            height: 50px;
            width: 194px;
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
		<li class="current"><a href="#">Contact</a></li>
		<li><a href="#">Registration</a></li>
		<li><a href="#">Home </a></li>
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
    Welcome  (<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton>)
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </div>
   
   <div class="abc" align="center">
       <table border="0" align="center" cellpadding="5" cellspacing="0">
       <tr><th colspan="5" align="center" class="style2"><h1 dir="ltr">Add Batch.</h1></th></tr>
        <tr><td align="left" class="style8">Select Branch:</td>
        <td align="left" class="style11">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                Height="25px" Width="161px">

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
        </tr>

        <tr><td align="left">Enter Batch:</td><td align="left" class="style12">
            <asp:TextBox ID="batch" runat="server" Width="162px" Height="22px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="batch" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td></tr>
            <tr><td align="left" class="style9">Select Semester</td>
            <td align="left" class="style13">
            <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" Width="167px">
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
            <tr><td align="center" colspan="2" class="style10">
                <asp:LinkButton ID="AddBatch" runat="server" CssClass="button small black" 
                    onclick="AddBatch_Click">Add Batch</asp:LinkButton></td></tr>
     </table>
   </div>
   <div>
       <br />
       <br />
    </div>
  

</div><!--end-body wrapper-->

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
