<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
<link href="css/Stylesheet1.css" rel="stylesheet" type="text/css" />
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gamer's Stop -Login</title>
</head>
<body style="background-color:Black;">
<div class="jumbotron" style=" margin-bottom:0px; color:white; background-color:Black; height:200px; padding-top:30px;">
        <div class="container text-center w3-animate-zoom">
        <h1><span style="color:#cc00cc">G</span>amer's <span style="color:#cc00cc">S</span>top</h1>
        <p>Login</p>
        </div>
    </div>

<!-- login_form -->
    <div class="container-fluid ">
    <div class="row">
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
    <div class="col-md-4 col-sm-4 col-xs-12">
    <form class="form-container" style="background-color:black; color:White; border-radius:20px;" runat="server">
  <div class="form-group">
      <asp:Label ID="username_label" runat="server" Text="Username" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="username" CssClass="form-control" runat="server" 
          placeholder="Enter Username" CausesValidation="True" ></asp:TextBox>
 
  </div>
  <div class="form-group">
      <asp:Label ID="password_label" runat="server" Text="Password" Font-Bold="True"></asp:Label>
      <asp:TextBox ID="password"  runat="server" CssClass="form-control" 
          placeholder="Enter Password" TextMode="Password"></asp:TextBox>
      
  </div>
  <div class="form-check">
      <asp:CheckBox ID="CheckBox1" runat="server" />
    
      <asp:Label ID="rmb_lbl" CssClass= " form-check-label w3-small" runat="server" 
          Text="Remmember me" Font-Bold="True"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#"><asp:Label ID="frgt_lbl" CssClass="w3-small" runat="server" 
          Text="Forgot Password?" Font-Bold="True" ></asp:Label></a>
  </div>
  <hr />
    <asp:Button ID="Login_btn" CssClass="btn btn-success btn-block" runat="server" 
        Text="Login" Font-Bold="true" onclick="Login_btn_Click" />
        <br />
        <center>
        <a href="admin_login.aspx" style=" font-weight:bold;">Admin Login</a>
        </center>
  <center>
      <a href="Sign_up.aspx"><asp:Label ID="crt_accnt" runat="server" 
          Text="Don't have account? create here!" Font-Bold="True"></asp:Label> </a></center>
          <br />
    <asp:Label ID="err_msg" runat="server"  
        CssClass="alert alert-danger center-block" visible="False" 
        style="border-radius:10px; text-align:center; padding:5px 5px 5px 5px;"  Font-Bold="True" ></asp:Label>
</form>
     </div>
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
    </div>
    </div>
</body>
</html>
