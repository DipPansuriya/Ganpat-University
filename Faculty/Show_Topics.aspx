<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Show_Topics.aspx.cs" Inherits="Show_Topics" %>

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
        <li><a href="Show_Topics.aspx">Show Covered Topics</a></li>
        <li><a href="ShowBatch.aspx">Show batch</a></li>
        <li><a href="Sendmail.aspx">Send Mail</a></li>
		<li><a href="faculty_Home.aspx">Home</a></li>
	</ul>
    Welcome (<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton>) 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
</div>
<div align="center">
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
    BorderStyle="Solid" BorderWidth="1px" Caption="List Of Topics" 
    CaptionAlign="Top" CellPadding="3" DataKeyNames="id" 
    DataSourceID="SqlDataSource1" ForeColor="Black" HorizontalAlign="Center" 
    PageSize="5" Width="721px">
    <AlternatingRowStyle BackColor="#CCCCCC" BorderColor="#333333" 
        BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Top" 
        ForeColor="#333333" />
    <Columns>
        <asp:TemplateField HeaderText="id" >
                <ItemTemplate>
                    <asp:Label ID="lblid" runat="server" text='<%# Bind("id") %>'></asp:Label>
               
               </ItemTemplate>    </asp:TemplateField>
        <asp:BoundField DataField="branch" HeaderText="branch" 
            SortExpression="branch" />
        <asp:BoundField DataField="semester" HeaderText="semester" 
            SortExpression="semester" />
        <asp:BoundField DataField="batch" HeaderText="batch" SortExpression="batch" />
        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        <asp:BoundField DataField="topiccovered" HeaderText="topiccovered" 
            SortExpression="topiccovered" />
        <asp:BoundField DataField="excercises" HeaderText="excercises" 
            SortExpression="excercises" />
        <asp:CommandField ShowEditButton="True" />
     <%--   <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:ImageButton ID="UpdateButton" runat="server"  ImageUrl="~/edit.png"
                        CommandName="Update" OnClientClick="return confirm('Are You Sure  Want To Edit This Entry?');"
                        AlternateText="Update" />
                </ItemTemplate>
                </asp:TemplateField>--%>
          <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="DeleteButton" runat="server"  ImageUrl="~/Remove-icon.png"
                        CommandName="Delete" OnClientClick="return confirm('Are You Sure  Want To Delete This Entry?');"
                        AlternateText="Delete" ImageAlign="TextTop" />
                </ItemTemplate>
                </asp:TemplateField>
        <asp:TemplateField>
            <HeaderTemplate>
                <asp:CheckBox ID="cdHeader" runat="server" AutoPostBack="True" 
                    oncheckedchanged="cdDeleteHeader_CheckedChanged" />
            </HeaderTemplate>
            <ItemTemplate>
                <asp:CheckBox ID="cdDelete" runat="server" AutoPostBack="True" 
                    oncheckedchanged="cdDelete_CheckedChanged" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <EditRowStyle ForeColor="Black" />
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="#999999" Font-Bold="True" ForeColor="#333333" 
        BorderColor="#666666" BorderStyle="Solid" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" CssClass="gridview" />
    <RowStyle ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="Gray" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:UVPCE_DBConnectionString %>" 
    SelectCommand="SELECT * FROM [Facultytopics1]" 
    DeleteCommand="DELETE FROM [Facultytopics1] WHERE [id] = @id" 
    InsertCommand="INSERT INTO [Facultytopics1] ([branch], [semester], [batch], [date], [topiccovered], [excercises]) VALUES (@branch, @semester, @batch, @date, @topiccovered, @excercises)" 
    UpdateCommand="UPDATE [Facultytopics1] SET [branch] = @branch, [semester] = @semester, [batch] = @batch, [date] = @date, [topiccovered] = @topiccovered, [excercises] = @excercises WHERE [id] = @id">
              <DeleteParameters>
                  <asp:Parameter Name="id" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="branch" Type="String" />
                  <asp:Parameter Name="semester" Type="String" />
                  <asp:Parameter Name="batch" Type="String" />
                  <asp:Parameter Name="date" Type="DateTime" />
                  <asp:Parameter Name="topiccovered" Type="String" />
                  <asp:Parameter Name="excercises" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="branch" Type="String" />
                  <asp:Parameter Name="semester" Type="String" />
                  <asp:Parameter Name="batch" Type="String" />
                  <asp:Parameter Name="date" Type="DateTime" />
                  <asp:Parameter Name="topiccovered" Type="String" />
                  <asp:Parameter Name="excercises" Type="String" />
                  <asp:Parameter Name="id" Type="Int32" />
              </UpdateParameters>
</asp:SqlDataSource>

          </div>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:LinkButton ID="Button1" runat="server" onclick="Button1_Click" OnClientClick="return confirm('Are you sure you want to delete this event?');"  CssClass="black small button">Delete</asp:LinkButton>
    <div></div>
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
