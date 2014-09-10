﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty_List.aspx.cs" Inherits="Faculty_List" %>


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
         <h1 style="margin-top:30px; font-size:30px; line-height:35px;"><br/>MISSION...<br/>Rather Nice</h1>
       <p>It shall be the constant endeavor of Mehsana District Education Foundation and Ganpat University to meet the educational needs of the youth in the areas of professional studies and provide state-of-the art learning opportunities along with inculcation of values of commitment and uprightness<a href="#">link</a></p>
       <%-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vestibulum massa eu nisi lacinia quis. Dolor sit amet, consectetur adipiscing elit. Fusce vestibulum massa eu nisi lacinia quis. <a href="#">link</a></p>
        --%><p><a class="button small black" href="#"> Contact Us </a></p>
        </div>
        </div>
        
 

	<div class="box">
		
      
    Welcome 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    </div>
     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="1px" Caption="Faculty List" CellPadding="3" 
        DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        HorizontalAlign="Left" PageSize="5">
            <AlternatingRowStyle BackColor="#CCCCCC" ForeColor="#333333" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Facultyname" HeaderText="FirstName" 
                    SortExpression="Facultyname" />
                <asp:BoundField DataField="Middlename" HeaderText="MiddleName" 
                    SortExpression="Middlename" />
                <asp:BoundField DataField="Surname" HeaderText="SurName" 
                    SortExpression="Surname" />
                <asp:BoundField DataField="Emailid" HeaderText="Email Address" 
                    SortExpression="Emailid" />
                <asp:BoundField DataField="Birthdate" HeaderText="Birthdate" 
                    SortExpression="Birthdate" />
                <asp:BoundField DataField="Branch" HeaderText="Branch" 
                    SortExpression="Branch" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" />
                <asp:BoundField DataField="Bllodgroup" HeaderText="Bloodgroup" 
                    SortExpression="Bllodgroup" />
                <asp:BoundField DataField="Post" HeaderText="Post" SortExpression="Post" />
                <asp:BoundField DataField="Experience" HeaderText="Experience" 
                    SortExpression="Experience" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                    SortExpression="Pincode" />
                <asp:BoundField DataField="Hobby" HeaderText="Hobby" SortExpression="Hobby" />
                <asp:BoundField DataField="Specialsubject" HeaderText="Specialsubject" 
                    SortExpression="Specialsubject" />
                <asp:BoundField DataField="Picture" HeaderText="Picture" 
                    SortExpression="Picture" />
                <asp:CommandField ShowEditButton="True" />
                  <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="DeleteButton" runat="server"  ImageUrl="~/Remove-icon.png"
                        CommandName="Delete" OnClientClick="return confirm('Are You Sure  Want To Delete This Entry?');"
                        AlternateText="Delete" ImageAlign="TextTop" />
                </ItemTemplate>
                </asp:TemplateField>
                <%--<asp:CommandField ShowDeleteButton="True" />--%>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#CCFFCC" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:UVPCE_DBConnectionString %>" 
            SelectCommand="SELECT [Id], [Facultyname], [Middlename], [Surname], [Emailid], [Birthdate], [Branch], [Gender], [Bllodgroup], [Post], [Experience], [Address], [Pincode], [Hobby], [Specialsubject], [Picture] FROM [FacultyRegisration1]"
            DeleteCommand="DELETE FROM [FacultyRegisration1] WHERE [id] = @id"
            InsertCommand="INSERT INTO [FacultyRegistation1] ([Id], [Facultyname], [Middlename], [Surname], [Emailid], [Birthdate], [Branch], [Gender], [Bllodgroup], [Post], [Experience], [Address], [Pincode], [Hobby], [Specialsubject], [Picture]) VALUES (@Facultyname, @Middlname,@Surname,@Emailid,@Birthdate,@Branch,@Gender,@Bllodgroup,@Post,@Experience,@Address,@Pincode,@Hobby,@specialsubject,@Picture)"  
            UpdateCommand="UPDATE [FacultyRegisration1] SET [Facultyname] = @Facultyname, [Middlename] = @Middlename, [Surname] = @Surname, [Emailid] = @Emailid, [Birthdate] = @Birthdate, [Branch] = @Branch, [Gender] = @Gender, [Bllodgroup] = @Bllodgroup, [Post] = @Post, [Experience] = @Experience, [Address] = @Address, [Pincode] = @Pincode, [Hobby] = @Hobby, [Specialsubject] = @Specialsubject, [Picture] = @Picture WHERE [id] = @id">
          
        </asp:SqlDataSource>
   
   

	<%--<div class="one_fourth"><!--start top half content-->
	  <div class="fancy"><a id="Moodle" href="images/Moodle.png"><img alt="Moodle" src="images/Moodle.png" /></a></div>
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
	</div><!--end footer-main-->--%>

<!--end-body wrapper-->

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
