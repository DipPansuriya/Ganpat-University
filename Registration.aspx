<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Student_Registration" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>

<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>

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
.VeryPoorStrength
{
background: Red;
color:White;
font-weight:bold;
}
.WeakStrength
{
background: Gray;
color:White;
font-weight:bold;
}
.AverageStrength
{
background: orange;
color:black;
font-weight:bold;
}
.GoodStrength

{
background: blue;
color:White;
font-weight:bold;
}
.ExcellentStrength

{
background: Green;
color:White;
font-weight:bold;
}
.BarBorder
{
border-style: solid;
border-width: 1px;
width: 180px;
padding:2px;
}
</style>

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
        width:575px;
        height:1475px;
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
       
       .t
       {
           margin-left:10px;
           width:495px;
           }
	    .style2
        {
            width: 450px;
        }
        .style3
        {
            height: 47px;
            width: 450px;
        }
	    .style4
        {
            height: 39px;
        }
        .style5
        {
            width: 450px;
            height: 39px;
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
         <h1 style="margin-top:30px; font-size:30px; line-height:35px;"><br/>MISSION...<br/>Rather Nice</h1>
       <p>It shall be the constant endeavor of Mehsana District Education Foundation and Ganpat University to meet the educational needs of the youth in the areas of professional studies and provide state-of-the art learning opportunities along with inculcation of values of commitment and uprightness<a href="#">link</a></p>
       <%-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vestibulum massa eu nisi lacinia quis. Dolor sit amet, consectetur adipiscing elit. Fusce vestibulum massa eu nisi lacinia quis. <a href="#">link</a></p>
        --%><p><a class="button small black" href="#"> Contact Us </a></p>
        </div>
        </div>
        
 

	<div class="box">
		
    </div>
    </div>
 
 <div class="abc" align="center">
 <table border="0" cellspacing="0" align="center" class="t">
 <tr><td colspan="2" align="center"><h1>&nbsp;</h1>
     <h1>Registration Form<asp:ScriptManager ID="ScriptManger1" runat="server"></asp:ScriptManager></h1></td></tr>

<tr><td align="center">Enrollment No:</td><td align="left" class="style2">
    <asp:TextBox ID="enroll" runat="server" Width="246px"></asp:TextBox>
        	<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                 ControlToValidate="enroll" ErrorMessage="EnrollmentNo Required" 
                 ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
    </td></tr>
        
        <tr><td align="center" >Student Name:</td><td align="left" class="style2">
            <asp:TextBox  ID="uname" runat="server" Width="246px" CssClass="textbox"></asp:TextBox>
        	  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="uname" ErrorMessage="StudentName Required" 
                ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
        
        <tr><td align="center">father's Name:</td><td align="left" class="style2">
            <asp:TextBox  ID="fname" runat="server" Width="246px" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="fname" ErrorMessage="Father'sName Required" 
                ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
        
        <tr><td align="center" >Surname:</td><td align="left" class="style2">
            <asp:TextBox  ID="sname" runat="server" Width="246px" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="sname" ErrorMessage="Surname Required" 
                ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
       
        <tr><td align="center">Email Id:</td>
          <td align="left" class="style2">  <asp:TextBox  ID="email" runat="server" Width="246px" CssClass="textbox"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Enter Proper EmailId" ControlToValidate="email" 
                ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> </td></tr>
       
        <tr><td align="center">Birth Date:</td><td align="left" class="style3">
           
             <asp:DropDownList ID="DropDownList1" runat="server" >
             </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
             </td></tr>
      
             
      <tr><td align="center" class="style1">Branch:</td><td align="left" class="style3">
            <asp:DropDownList id="enginerring" CssClass="select" runat="server">
              <asp:ListItem Value="Compter Science And Engineering">Compter Science And Engineering</asp:ListItem>
              <asp:listItem Value="Information Technology">Information Technology</asp:listItem>
              <asp:ListItem Value="Electronicas Communication Engineering">Electronicas Communication Engineering</asp:ListItem>
              <asp:listItem Value="Mechanincal Engineering">Mechanincal Engineering</asp:listItem>
              <asp:ListItem Value="Mechatronics Engineering">Mechatronics Engineering</asp:ListItem>
              <asp:listItem Value="Civil Technology">Civil Technology</asp:listItem>
              <asp:ListItem Value="BioMedical Engineering">BioMedical Engineering</asp:ListItem>
              <asp:listItem Value="Electrical Engineering">Electrical Engineering</asp:listItem>
              <asp:ListItem Value="Marin Engineering">Marin Engineering</asp:ListItem>
             </asp:DropDownList></td></tr>
       
        
        
        <tr><td align="center">
        Gender:</td><td align="left" class="style2">
            <asp:RadioButtonList   ID="Gender"  runat="server" RepeatColumns="1">
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:RadioButtonList>
            </td></tr>
        
        <tr><td align="center">
        <label for="Blood Group">Blood Group:</label></td><td align="left" class="style3">
            <asp:DropDownList id="bloodgroup" CssClass="select" runat="server">
              <asp:ListItem Value="A Positive">A Positive</asp:ListItem>
              <asp:listItem Value="A Negetive">A Negetive</asp:listItem>
              <asp:ListItem Value="B Positive">B Positive</asp:ListItem>
              <asp:listItem Value="B Negetive">B Negetive</asp:listItem>
              <asp:ListItem Value="O Positive">O Positive</asp:ListItem>
              <asp:listItem Value="O Negetive">O Negetive</asp:listItem>
              <asp:ListItem Value="AB Positive">AB Positive</asp:ListItem>
              <asp:listItem Value="AB Negetive">AB Negetive</asp:listItem>
             </asp:DropDownList>    </td></tr>
        
           <tr><td align="center">
             <label for="password">Password</label> </td>
             <td align="left" class="style2">
            <asp:TextBox  ID="password" runat="server" Width="246px" TextMode="Password" CssClass="textbox"></asp:TextBox>
            
          
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="password" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:Label ID="Label1" runat="server"></asp:Label>
                  <asp:Label ID="lblhelp" runat="server"/>
               </td></tr>

        <tr><td align="center">Confirm Password:</td>
            <td align="left" class="style2">
            <asp:TextBox  ID="cpassword" runat="server" Width="246px" TextMode="Password" CssClass="textbox"></asp:TextBox>
        	
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="password" ControlToValidate="cpassword" 
                ErrorMessage="Doesn't Match" ForeColor="Red"></asp:CompareValidator>
          </td></tr>
          <tr><td align="center">Address:</td><td align="left" class="style2">
            <asp:TextBox ID="address" runat="server" Width="246px" TextMode="MultiLine" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="address" ErrorMessage="Address Required" 
                ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
         
             <tr><td align="center">Pincode:</td><td align="left" class="style2">
            
            <asp:TextBox  ID="pincode" runat="server" Width="246px" CssClass="textbox"></asp:TextBox>
        	   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                     ControlToValidate="pincode" ErrorMessage="Pincode Required" 
                     ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
        <tr><td align="center">
         Hobby: 
        </td><td align="left" class="style2">
         <asp:CheckBoxList runat="server" ID="checkbox1" CssClass="checkbox" Height="45px" >
          <asp:ListItem Value="Reading">Reading</asp:ListItem>
          <asp:ListItem Value="watching">Watching TV</asp:ListItem>
          <asp:ListItem Value="cricket">Cricket</asp:ListItem>
          <asp:ListItem Value="Tennis">Tennis</asp:ListItem>
          <asp:ListItem Value="FootBall">FootBall</asp:ListItem>
          <asp:ListItem Value="Chess">Chess</asp:ListItem>
          <asp:ListItem Value="Hacking">Hacking</asp:ListItem>
          <asp:ListItem Value="Robotics">Robotics</asp:ListItem>
          </asp:CheckBoxList></td></tr>
       
       <tr><td align="center">Picture</td><td align="left" class="style2">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            </td></tr>
            <tr><td align="left" class="style4">Sequrity Question:</td><td class="style5" align="left">
            <asp:DropDownList runat="server" ID="question" CssClass="select">
            <asp:ListItem Value="what is Your Favirout TextBook?">what is Your Favirout TextBook?</asp:ListItem>
            <asp:ListItem Value="what is your First Friend's Name?">what is your First Friend's Name?</asp:ListItem>
            <asp:ListItem Value="what is your Favirout Food?">what is your Favirout Food?</asp:ListItem>
            <asp:ListItem Value="what is your Favirout TV Show?">what is your Favirout TV Show?</asp:ListItem>
            </asp:DropDownList></td></tr>
        
           <tr><td align="center">Answer:
            </td><td align="left" class="style2">
            <asp:TextBox ID="Answer" runat="server" Width="262px" CssClass="textbox"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                 ErrorMessage="Answer Required" ForeColor="Red" 
                 ControlToValidate="Answer"></asp:RequiredFieldValidator></td></tr>
    <tr><td align="left"> code</td><td align="left" class="style2">
        <cc1:captchacontrol ID="Captcha1" runat="server" 
        CaptchaBackgroundNoise="Low" CaptchaLength="5" 
        CaptchaHeight="60" CaptchaWidth="200" 
        CaptchaLineNoise="None" CaptchaMinTimeout="5" 
        CaptchaMaxTimeout="240" FontColor = "#529E00" Width="198px" /> 
      <asp:TextBox ID="textCaptcha" runat="server" Width=249px > </asp:TextBox>

            <asp:Label ID="lblMessage" runat="server" Font-Names = "Arial" Text=""></asp:Label></td></tr>
      <tr><td align="left">
       
     <asp:LinkButton ID="Submit" runat="server" CssClass="button small black" 
                  Height="24px" Width="46px">Reset</asp:LinkButton>
       </td><td  align="left" class="style2">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="Register" runat="server" CssClass="button small black" 
              onclick="Register_Click" Height="24px" Width="46px">Register</asp:LinkButton>
      </td></tr>
    </table>
    <ajax:PasswordStrength ID="PasswordStrength2" TargetControlID="password" 
         StrengthIndicatorType="BarIndicator" PrefixText="Strength:" 
         HelpStatusLabelID="lblhelp1" PreferredPasswordLength="8"
MinimumNumericCharacters="1" MinimumSymbolCharacters="1" 
         BarBorderCssClass="BarBorder" 
         TextStrengthDescriptionStyles="VeryPoorStrength;WeakStrength;AverageStrength;GoodStrength;ExcellentStrength" 
         runat="server" />
    </div>
    <script type="text/javascript" src="js/slide/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>
        </form>
</body>
</html>
