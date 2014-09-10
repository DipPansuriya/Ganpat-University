<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration_faculty.aspx.cs" Inherits="Registration_faculty" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>


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
    .abc{
        width:500px;
        height:1530px;
        -webkit-border-radius: 48px 63px 73px 63px;
        -moz-border-radius: 48px 63px 73px 63px;
        border-radius: 48px 63px 73px 63px;
        background-color:#CFCFCF;
        -webkit-box-shadow: #B3B3B3 11px 11px 11px;
        -moz-box-shadow: #B3B3B3 11px 11px 11px; 
        box-shadow: #B3B3B3 11px 11px 11px;
        margin-left:450px; 
       }
       
	    .style11
        {
            height: 38px;
        }
        .style12
        {
            height: 46px;
        }
       
	    .style13
        {
            height: 45px;
        }
       
	</style>
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
    
    </div>
    </div>
   <div class="abc" align="center">
   <table align="center">
   <tr><th  align="center" colspan="2">Registration Form
   
<asp:ScriptManager ID="ScriptManger1" runat="server"></asp:ScriptManager>
   </th></tr>
   <tr><td align="left">Faculy Name</td><td align="left">
       <asp:TextBox ID="name" runat="server" Width="246px"></asp:TextBox><asp:RequiredFieldValidator
           ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
           ControlToValidate="name"></asp:RequiredFieldValidator></td></tr>

    <tr><td align="left">Father/Hasbound Name:</td><td align="left">
        <asp:TextBox ID="fname" runat="server" Width="246px"></asp:TextBox><asp:RequiredFieldValidator
            ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="fname"></asp:RequiredFieldValidator>
    </td></tr>

    <tr><td align="left">Surname:</td><td align="left">
            <asp:TextBox  ID="sname" runat="server" Width="246px"></asp:TextBox><asp:RequiredFieldValidator
                ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="sname"></asp:RequiredFieldValidator>
            </td></tr>

      <tr><td align="left">Email Id:</td><td align="left">
            <asp:TextBox  ID="email" runat="server" Width="246px"></asp:TextBox><asp:RegularExpressionValidator
                ID="RegularExpressionValidator1" runat="server" ErrorMessage="EmailId" 
                ControlToValidate="email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
            </td></tr>
       
       <tr><td align="left" class="style11">Birth Date:</td><td class="style11" align="left">
           
             <asp:DropDownList ID="DropDownList1" runat="server" >
             </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
             </td></tr>
       <tr><td align="left" class="style12">Qualified Branch:</td><td class="style12" align="left">
            <asp:DropDownList id="enginerring" runat="server">
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
         
             <tr><td align="left">Gender:</td><td align="left">
             
                 <asp:RadioButtonList runat="server" ID="Gender" Height="36px">
                 <asp:ListItem Value="Male">Male</asp:ListItem>
                 <asp:ListItem Value="Female">Female</asp:ListItem>
                 </asp:RadioButtonList>
             </td></tr>
             <tr><td align="left">Blood Group:</td><td align="left">
            <asp:DropDownList id="bloodgroup"  runat="server">
              <asp:ListItem Value="A Positive">A Positive</asp:ListItem>
              <asp:listItem Value="A Negetive">A Negetive</asp:listItem>
              <asp:ListItem Value="B Positive">B Positive</asp:ListItem>
              <asp:listItem Value="B Negetive">B Negetive</asp:listItem>
              <asp:ListItem Value="O Positive">O Positive</asp:ListItem>
              <asp:listItem Value="O Negetive">O Negetive</asp:listItem>
              <asp:ListItem Value="AB Positive">AB Positive</asp:ListItem>
              <asp:listItem Value="AB Negetive">AB Negetive</asp:listItem>
             </asp:DropDownList>    </td></tr>

             <tr><td  align="left"> Post</td><td align="left">
            <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem  Value="H.O.D">H.O.D</asp:ListItem>
            <asp:ListItem  Value="Prof">Prof.</asp:ListItem>
            <asp:ListItem  Value="Assi PRof">Assistent Prof.</asp:ListItem>
            <asp:ListItem  Value="lab Assistent">Lab Assistent</asp:ListItem>
            </asp:DropDownList>
        </td></tr>
        <tr><td align="left">Experience</td><td align="left">
            <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem  Value="1 year">1 year</asp:ListItem>
            <asp:ListItem  Value="2 year">2 year</asp:ListItem>
            <asp:ListItem  Value="3 year">3 year</asp:ListItem>
            <asp:ListItem  Value="More Than 3 Year">More Than 3 Year</asp:ListItem>
            </asp:DropDownList>
        </td></tr>
           <tr><td align="left">Password</td>
             <td align="left">
            <asp:TextBox  ID="password" runat="server" TextMode="Password" 
                     Width="246px"></asp:TextBox>
        	     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                     ControlToValidate="password" ErrorMessage="*"></asp:RequiredFieldValidator>
        	     <asp:Label ID="Label4" runat="server"></asp:Label>
               </td></tr>
        
        <tr><td align="left">Confirm Password:</td>
            <td align="left">
            <asp:TextBox  ID="cpassword" runat="server" Width="246px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="Password Not Match" ControlToCompare="password" 
                    ControlToValidate="cpassword"></asp:CompareValidator></td></tr>
        
        <tr><td align="left">
             <label for="address"> Address:</label></td><td align="left">
            <asp:TextBox ID="address" runat="server"  
                         Width="246px" Height="68px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                             runat="server" ErrorMessage="*" ControlToValidate="address"></asp:RequiredFieldValidator>
                         </td></tr>

        <tr><td align="left">Pincode:</td><td align="left">
            <asp:TextBox  ID="pincode" runat="server" Width="242px" ></asp:TextBox><asp:RequiredFieldValidator
                ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" 
                ControlToValidate="pincode"></asp:RequiredFieldValidator>
            </td></tr>

        <tr><td align="left">Hobby:</td><td align="left" Height="25px">
         <asp:CheckBoxList runat="server" ID="checkbox1"  Height="35px">
          <asp:ListItem Value="Reading">Reading</asp:ListItem>
          <asp:ListItem Value="watching">Watching TV</asp:ListItem>
          <asp:ListItem Value="cricket">Cricket</asp:ListItem>
          <asp:ListItem Value="Tennis">Tennis</asp:ListItem>
          <asp:ListItem Value="FootBall">FootBall</asp:ListItem>
          <asp:ListItem Value="Chess">Chess</asp:ListItem>
          <asp:ListItem Value="Hacking">Hacking</asp:ListItem>
          <asp:ListItem Value="Robotics">Robotics</asp:ListItem>
          </asp:CheckBoxList></td></tr>

         <tr><td align="left">Specilist Subject</td><td align="left">
           <asp:TextBox ID="Subject" runat="server"  Width="244px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                 ControlToValidate="Subject" ErrorMessage="*"></asp:RequiredFieldValidator>
             </td></tr>

          <tr><td>
            <label>Picture</label></td><td>
               <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Label ID="Label3" runat="server"></asp:Label></td></tr>

            <tr><td align="left" class="style13">Sequrity Question:</td><td align="left" 
                    class="style13">
            <asp:DropDownList runat="server" ID="question">
            <asp:ListItem Value="what is Your Favirout TestBook?">what is Your Favirout TestBook?</asp:ListItem>
            <asp:ListItem Value="what is your First Friend's Name">what is your First Friend's Name</asp:ListItem>
            <asp:ListItem value="what is your Favirout Food?">what is your Favirout Food?</asp:ListItem>
            <asp:ListItem Value="what is your Favirout TV Show?">what is your Favirout TV Show?</asp:ListItem>
            </asp:DropDownList></td></tr>
        
           <tr><td align="left">Answer:
            </td><td align="left" valign="middle"> 
            <asp:TextBox ID="Answer" runat="server" Width="246px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                       ControlToValidate="Answer" ErrorMessage="*"></asp:RequiredFieldValidator>
               </td></tr>

             <tr><td align="left">Code</td><td align="left">
        <cc1:captchacontrol ID="Captcha1" runat="server" 
        CaptchaBackgroundNoise="Low" CaptchaLength="5" 
        CaptchaHeight="60" CaptchaWidth="200" 
        CaptchaLineNoise="None" CaptchaMinTimeout="5" 
        CaptchaMaxTimeout="240" FontColor = "#529E00" Width="212px" /> 
      <asp:TextBox ID="textCaptcha" runat="server" Width=249px > </asp:TextBox>

                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                     ControlToValidate="textCaptcha" ErrorMessage="*"></asp:RequiredFieldValidator>

            <asp:Label ID="lblMessage" runat="server" Font-Names = "Arial" Text=""></asp:Label></td></tr>
             <tr><td align="right">
          <asp:LinkButton ID="Register" runat="server" CssClass="button small black" 
              Height="20px" onclick="Register_Click">Register Here</asp:LinkButton></td>
            <td align="center">
                <asp:LinkButton ID="Reset" runat="server" CssClass="button small black" 
                     Height="20px" Width="58px">Reset</asp:LinkButton>
                <br />
          </td></tr>

   </table>
   <ajax:PasswordStrength ID="pwdStrength" TargetControlID="password" StrengthIndicatorType="Text" PrefixText="Strength:" HelpStatusLabelID="lblhelp" PreferredPasswordLength="8" 
MinimumNumericCharacters="1" MinimumSymbolCharacters="1" TextStrengthDescriptions="Very Poor;Weak;Average;Good;Excellent" TextStrengthDescriptionStyles="VeryPoorStrength;WeakStrength;
AverageStrength;GoodStrength;ExcellentStrength" runat="server" />
   </div>

   <%--<table border="0" cellpadding="5" cellspacing="0" align="center">
    <tr>
<th align="center" colspan="2"><h1>Registration Form</h1></th></tr>
<tr><td align="left">Faculty Name:</td><td>
    <asp:TextBox ID="name" runat="server" Width="243px"></asp:TextBox>
        	<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                 ControlToValidate="name" ErrorMessage="RequiredFieldValidator" 
                 ForeColor="Red">Please Enter Name</asp:RequiredFieldValidator></td></tr>
        
       
        <tr><td align="left">Father's /Hasbound Name Name:</td><td>
            <asp:TextBox  ID="fname" runat="server" Width="246px" CssClass="textbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="fname" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">Please Enter Father Or Hasbound Name</asp:RequiredFieldValidator></td></tr>
        <tr><td align="left">Surname:</td><td>
            <asp:TextBox  ID="sname" runat="server" Width="246px" CssClass="textbox"></asp:TextBox>
         
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="sname" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">Please Enter Suname</asp:RequiredFieldValidator></td></tr>
        <tr><td align="left">Email Id:</td><td>
            <asp:TextBox  ID="email" runat="server" Width="246px" CssClass="textbox"></asp:TextBox>
        	  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                runat="server" ControlToValidate="email" 
                ErrorMessage="Plase Enter Email In Proper Form" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td></tr>
        <tr><td align="left" class="style6">
        <label for="sname">Birth Date:</label></td><td class="style6">
           
             <asp:DropDownList ID="DropDownList1" runat="server" >
             </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
             </td></tr>
      
             
      <tr><td align="left" class="style7">Qualified Branch:</td><td class="style7">
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
       
        
        
        <tr><td align="left" class="style10">Gender:</td><td align="left" class="style10">
           <asp:RadioButtonList   ID="Gender"  runat="server" RepeatColumns="1">
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:RadioButtonList>
            </td></tr>
        
        <tr><td align="left" class="style9">Blood Group:</td><td class="style9">
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

        <tr><td  align="left" class="style5"> Post</td><td class="style5">
            <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem  Value="H.O.D">H.O.D</asp:ListItem>
            <asp:ListItem  Value="Prof">Prof.</asp:ListItem>
            <asp:ListItem  Value="Assi PRof">Assistent Prof.</asp:ListItem>
            <asp:ListItem  Value="lab Assistent">Lab Assistent</asp:ListItem>
            </asp:DropDownList>
        </td></tr>
        <tr><td align="left" class="style1">Experience</td><td class="style1">
            <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem  Value="1 year">1 year</asp:ListItem>
            <asp:ListItem  Value="2 year">2 year</asp:ListItem>
            <asp:ListItem  Value="3 year">3 year</asp:ListItem>
            <asp:ListItem  Value="More Than 3 Year">More Than 3 Year</asp:ListItem>
            </asp:DropDownList>
        </td></tr>
           <tr><td align="left">Password</td>
             <td>
            <asp:TextBox  ID="password" runat="server" TextMode="Password" CssClass="textbox" 
                     Width="242px"></asp:TextBox>
        	     <asp:Label ID="Label4" runat="server"></asp:Label>
               </td></tr>
        
        <tr><td align="left">Confirm Password:</td>
            <td align="left">
            <asp:TextBox  ID="cpassword" runat="server" Width="246px" TextMode="Password" CssClass="textbox"></asp:TextBox>
        	
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="password" ControlToValidate="cpassword" 
                    ErrorMessage="PassWord Does Not Match" ForeColor="Red"></asp:CompareValidator>
          </td></tr>
             
             <tr><td align="left" class="style1">
             <label for="address"> Address:</label></td><td class="style1">
            <asp:TextBox ID="address" runat="server"  TextMode="MultiLine" CssClass="textbox" 
                         Width="246px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="address" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red"> Enter The Address</asp:RequiredFieldValidator></td></tr>
         
             <tr><td align="left">Pincode:</td><td>
            
            <asp:TextBox  ID="pincode" runat="server" CssClass="textbox" Width="242px" ></asp:TextBox>
        	   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                     ControlToValidate="pincode" ErrorMessage="RequiredFieldValidator" 
                     ForeColor="Red"> Enter The pincode</asp:RequiredFieldValidator></td></tr>
        <tr><td align="left">
         Hobby: 
        </td><td>
         <asp:CheckBoxList runat="server" ID="checkbox1" CssClass="checkbox" Height="45px" 
                Width="703px">
          <asp:ListItem Value="Reading">Reading</asp:ListItem>
          <asp:ListItem Value="watching">Watching TV</asp:ListItem>
          <asp:ListItem Value="cricket">Cricket</asp:ListItem>
          <asp:ListItem Value="Tennis">Tennis</asp:ListItem>
          <asp:ListItem Value="FootBall">FootBall</asp:ListItem>
          <asp:ListItem Value="Chess">Chess</asp:ListItem>
          <asp:ListItem Value="Hacking">Hacking</asp:ListItem>
          <asp:ListItem Value="Robotics">Robotics</asp:ListItem>
          </asp:CheckBoxList></td></tr>
       
       <tr><td align="left" valign="top">Specilist Subject</td><td>
           <asp:TextBox ID="Subject" runat="server" TextMode="MultiLine" Width="244px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
               ControlToValidate="Subject" ErrorMessage="Please Enter The Special Subject" 
               ForeColor="Red"></asp:RequiredFieldValidator>
           </td></tr>
       <tr><td>
            <label>Picture</label></td><td>
               <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Label ID="Label3" runat="server"></asp:Label></td></tr>
            <tr><td align="left" class="style3">
           
            <label for="Question">Sequrity Question:</label></td><td class="style3">
            <asp:DropDownList runat="server" ID="question" CssClass="select">
            <asp:ListItem>what is Your Favirout TestBook?</asp:ListItem>
            <asp:ListItem>what is your First Friend's Name</asp:ListItem>
            <asp:ListItem>what is your Favirout Food?</asp:ListItem>
            <asp:ListItem>what is your Favirout TV Show?</asp:ListItem>
            </asp:DropDownList></td></tr>
        
           <tr><td align="left">Answer:
            </td><td>
            <asp:TextBox ID="Answer" runat="server" Width="262px" CssClass="textbox"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                 ErrorMessage="RequiredFieldValidator" ForeColor="Red" 
                 ControlToValidate="Answer">Please Enter The Proper Answer</asp:RequiredFieldValidator></td></tr>
       <tr><td></td><td>
        <cc1:captchacontrol ID="Captcha1" runat="server" 
        CaptchaBackgroundNoise="Low" CaptchaLength="5" 
        CaptchaHeight="60" CaptchaWidth="200" 
        CaptchaLineNoise="None" CaptchaMinTimeout="5" 
        CaptchaMaxTimeout="240" FontColor = "#529E00" Width="212px" /> 
      <asp:TextBox ID="textCaptcha" runat="server" Width=249px > </asp:TextBox>

            <asp:Label ID="lblMessage" runat="server" Font-Names = "Arial" Text=""></asp:Label></td></tr>
       
      <tr><td class="style2">
          <asp:LinkButton ID="Register" runat="server" CssClass="button small black" 
              Height="20px" onclick="Register_Click">Register Here</asp:LinkButton></td>
            <td class="style2">
                <asp:LinkButton ID="Reset" runat="server" CssClass="button small black" 
                     Height="20px" Width="58px">Reset</asp:LinkButton>
                <br />
          </td></tr>
    </table>
   
   
</div>--%><!--end-body wrapper-->

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

