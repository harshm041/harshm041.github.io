<%@ Page Language="C#" AutoEventWireup="true" CodeFile="transaction.aspx.cs" Inherits="transaction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
<link href="css/Stylesheet1.css" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:Black;">
<div class="jumbotron" style=" margin-bottom:0px; color:White; background-color:Black; height:200px; padding-top:30px;">
        <div class="container text-center w3-animate-zoom">
        <h1><span style="color:#cc00cc">G</span>amer's <span style="color:#cc00cc">S</span>top</h1>
        <p>Transaction Details</p>
        </div>
    </div>
     <div class=" container">
    <form id="form1" runat="server" class="form-container" style="background-color:black; color:White; padding-top:15px; margin-bottom:30px; border-radius:20px; ">
    <h1 style=" color:Green;">Payment Successfull</h1>
    <hr />

    <div class=" form-group">
    <b>Transaction Id:</b>
    <asp:Label ID="transaction_id" runat="server"   ForeColor="White" ></asp:Label>
    </div>

    <div class=" form-group">
    <b>Game Name: </b>
    <asp:Label ID="game_name" runat="server"  ForeColor="White" ></asp:Label>
    </div>

    <div class=" form-group">
    <b>Price: </b>
    <asp:Label ID="price" runat="server" ForeColor="White" ></asp:Label> 
    </div>

    <div class=" form-group">
    <asp:Label ID="pdk" runat="server"  ForeColor="White"></asp:Label>
    </div>
    <hr />
    <center><asp:Button ID="continue_btn" runat="server" CssClass="btn btn-success" 
            ForeColor="White" Text="Continue Shopping" onclick="continue_btn_Click" /></center>
    <br />
    <br />
    </form>
    </div>
</body>
</html>
