<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
<link href="css/Stylesheet1.css" rel="stylesheet" type="text/css" />
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
</head>
<body style=" background-color:Black;">
<div class="jumbotron" style=" margin-bottom:0px; color:white; background-color:Black; height:200px; padding-top:30px;">
        <div class="container text-center w3-animate-zoom">
        <h1><span style="color:#cc00cc">G</span>amer's <span style="color:#cc00cc">S</span>top</h1>
        <p>Admin Login</p>
        </div>
    </div>
    <div class="container-fluid ">
    <div class="row">
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
    <div class="col-md-4 col-sm-4 col-xs-12">
    <form id="Form1" class="form-container" style="background-color:black; color:White; border-radius:20px; padding-top:10px" runat="server">
    <center><h1>Admin Account</h1></center>
    <hr />
    <div class="form-group">
      <asp:Label ID="username_label" runat="server" Text="Username" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="admin_username" CssClass="form-control" runat="server" 
          placeholder="Enter Username" CausesValidation="True" ></asp:TextBox>
 
  </div>
  <div class="form-group">
      <asp:Label ID="password_label" runat="server" Text="Password" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="admin_password"  runat="server" CssClass="form-control" 
          placeholder="Enter Password" TextMode="Password"></asp:TextBox>
      
  </div>
  <hr />
    <asp:Button ID="Login_btn" CssClass="btn btn-success btn-block" runat="server" 
        Text="Login" Font-Bold="true" onclick="Login_btn_Click"  />
        <br />
        <asp:Label ID="err_msg" runat="server"  
        CssClass="alert alert-danger center-block" visible="false" 
        style="border-radius:10px; text-align:center; padding:5px 5px 5px 5px;"  Font-Bold="True"   ></asp:Label>

    </form>
    </div>
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
    </div>
    </div>    
</body>
</html>
