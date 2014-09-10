<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_List.aspx.cs" Inherits="Admin_Student_List" %>

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
	.gridview{
    background-color:#fff;
   
   padding:2px;
   margin:2% auto;
   
   
}
.gridview a{
  margin:auto 1%;
    border-radius:50%;
      background-color:#444;
      padding:5px 10px 5px 10px;
      color:#fff;
      text-decoration:none;
      -o-box-shadow:1px 1px 1px #111;
      -moz-box-shadow:1px 1px 1px #111;
      -webkit-box-shadow:1px 1px 1px #111;
      box-shadow:1px 1px 1px #111;
     
}
.gridview a:hover{
    background-color:#C0C0C0;
    color:#fff;
}
.gridview span{
    background-color:#A0A0A0;
    color:#fff;
     -o-box-shadow:1px 1px 1px #111;
      -moz-box-shadow:1px 1px 1px #111;
      -webkit-box-shadow:1px 1px 1px #111;
      box-shadow:1px 1px 1px #111;

    border-radius:50%;
    padding:5px 10px 5px 10px;
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
		<li class="current"><a href="Batch_List_Faculty.aspx">Batch List</a></li>
         <li><a href="Student_List.aspx">Student List</a></li>
         <li><a href="Admin_Home.aspx">Home</a></li>
	</ul>
    Welcome  (<asp:LinkButton ID="LinkButton1" runat="server" 
            onclick="LinkButton1_Click">Logout</asp:LinkButton>)
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
          
    </div>
    </div>
    
    <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="7" DataSourceID="SqlDataSource1" ForeColor="Black" 
            GridLines="Vertical" Width="1000px" DataKeyNames="Id" AllowPaging="True" 
            Caption="Student List" HorizontalAlign="Center" PageSize="5">
            <AlternatingRowStyle BackColor="#CCCCCC" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                    SortExpression="Id" InsertVisible="False" />
                <asp:BoundField DataField="Enrollmentno" HeaderText="Enrollmentno" 
                    SortExpression="Enrollmentno" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                    SortExpression="Firstname" />
                <asp:BoundField DataField="Middlename" HeaderText="Middlename" 
                    SortExpression="Middlename" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" 
                    SortExpression="Surname" />
                <asp:BoundField DataField="Emailid" HeaderText="Emailid" 
                    SortExpression="Emailid" />
                <asp:BoundField DataField="Birthdate" HeaderText="Birthdate" 
                    SortExpression="Birthdate" />
                <asp:BoundField DataField="Branch" HeaderText="Branch" 
                    SortExpression="Branch" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Pincode" HeaderText="Pincode" 
                    SortExpression="Pincode" />
                <asp:BoundField DataField="Hobby" HeaderText="Hobby" SortExpression="Hobby" />
                <asp:CommandField ShowEditButton="True"/>
                <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="DeleteButton" runat="server" ImageUrl="~/Admin/Remove-icon.png"
                        CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"
                        AlternateText="Delete" ImageAlign="TextTop" />
                </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Silver" Font-Bold="True" ForeColor="Black" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" CssClass="gridview"/>
            <RowStyle Height="5px" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:UVPCE_DBConnectionString %>" 
            DeleteCommand="DELETE FROM [Registration1] where [Id]=@Id" 
            InsertCommand="INSERT INTO [Registration1]([Id], [Enrollmentno], [Firstname], [Middlename], [Surname], [Emailid], [Birthdate], [Branch], [Gender], [Address], [Pincode], [Hobby]) VALUES (@Enrollmentno,@Firstname,@Middlename,@Surname,@Eamilid,@Birthdate,@Branch,@Gender,@Address,@Pincode,@Hobby)" 
            SelectCommand="SELECT [Id], [Enrollmentno], [Firstname], [Middlename], [Surname], [Emailid], [Birthdate], [Branch], [Gender], [Address], [Pincode], [Hobby] FROM [Registration1]" 
            UpdateCommand="UPDATE [Registration1] SET [Enrollmentno] =@Enrollmentno, [Firstname] =@Firstname, [Middlename] =@Middlename, [Surname] =@Surname, [Emailid ]=@Emailid, [Birthdate] =@Birthdate, [Branch] =@Branch, [Gender] =@Gender, [Address] =@Address, [Pincode] =@Pincode, [Hobby] =@Hobby where [Id]=@Id">
        </asp:SqlDataSource>
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
