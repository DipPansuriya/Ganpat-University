<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SendQuery.aspx.cs" Inherits="SendQuery" %>

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
        <li><a href="../Chat/Default.aspx">Chat</a></li>
		<li class="current"><a href="">Moodle</a></li>	
		<li><a href="PostQuery.aspx">Post Query</a></li>
		<li><a href="Student_Home.aspx">Home</a></li>
	</ul>
    Welcome  (<asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton>)
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </div>

    <table>
<tr>
<td>Name: </td>
<td>
    <asp:TextBox ID="Textname" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td>Subject: </td>
<td><asp:TextBox ID="txtSubject" runat="server"/></td>
</tr>
<tr>
<td valign="top">Comment :</td>
<td><asp:TextBox ID="txtComment" runat="server" Rows="5" Columns="20" 
        TextMode="MultiLine" Width="391px"/></td>
</tr>
<tr>
<td></td>
<td>
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button small black" 
        onclick="LinkButton1_Click">Post Query</asp:LinkButton>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </td>
</tr>
</table>
</div>
</div>
<div>
    <asp:Repeater ID="RepDetails" runat="server">
        <HeaderTemplate>
            <table cellpadding="0" style=" border:1px solid #df5015; width:500px">
                <tr style="background-color:#df5015; color:White">
                    <td colspan="2">
                        <b>Post a Feedback, Comment, or Question about this article</b>
                    </td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemTemplate>
            <tr style="background-color:#EBEFF0">
                <td>
                    <table style="background-color:#EBEFF0;border-top:1px dotted #df5015; width:500px">
                        <tr>
                            <td>
                                Subject:
                                <asp:Label ID="lblSubject" runat="server" Font-Bold="true" 
                                    Text='<%#Eval("subject") %>' />
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("no") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblComment" runat="server" Text='<%#Eval("comment") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <table style="background-color:#EBEFF0;border-top:1px dotted #df5015;border-bottom:1px solid #df5015; width:500px">
                        <tr>
                            <td>
                                Post By:
                                <asp:Label ID="lblUser" runat="server" Font-Bold="true" 
                                    Text='<%#Eval("username") %>' />
                            </td>
                            <td>
                                Created Date:<asp:Label ID="lblDate" runat="server" Font-Bold="true" 
                                    Text='<%#Eval("posteddate") %>' />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
 
    <br />
    <br />

	<div id="footer">
		<p id="footer-text">&copy; Copyright 2012 <a href="http://www.makimyers.co.uk/delivery-html-template/">Delivery</a> by
		<a href="http://www.makimyers.co.uk">DipPansuriya</a></p>
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
