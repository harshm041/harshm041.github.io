<%@ Page Language="C#" AutoEventWireup="true" CodeFile="offerdetails.aspx.cs" Inherits="offerdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
<link href="css/Stylesheet1.css" rel="stylesheet" type="text/css" />
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:Black; margin-bottom:50px;">
<div class="jumbotron" style=" margin-bottom:0px; color:white; background-color:Black; height:200px; padding-top:30px;">
    <div class="container text-center">
        <h1><span style="color:#cc00cc">G</span>amer's <span style="color:#cc00cc">S</span>top</h1>
        <p>Offer Details</p>
    </div>
    <hr />
</div>
    <form id="form1" runat="server">
    <div>
    <table border="0" style=" text-align:center;" class="nav-justified" 
            cellpadding="50" cellspacing="50">
    <tr>
        <td>
            <!--<center><strong><h2 style="color:White;">Game Name:</h2></strong></center>-->
            <center><strong><b style="color:White; font-size:medium;">Game Name:</b><asp:Label ID="game_name" style="color:White; font-size:small;" runat="server" Text=""></asp:Label></strong></center>
           <center><hr / width="50%"></center> 
        </td>
    </tr>
    <tr>
        <td>
        <center> <asp:Image ID="game_image" CssClass=" img-thumbnail" runat="server"  /></center>
        <center><hr / width="50%"></center> 
        </td>
    </tr>
    <tr>
        <td>
        <center><strong><b style="color:White; font-size:medium;">Price:</b><asp:Label ID="game_price" style="color:White; font-size:small;" runat="server" Text=""></asp:Label></strong></center>
        <center><hr / width="50%"></center> 
        </td>
    </tr>
    <tr>
        <td>
        <center><strong><b style="color:White; font-size:medium;">Category:</b><asp:Label ID="game_type" style="color:White; font-size:small;" runat="server" Text=""></asp:Label></strong></center>
        <center><hr / width="50%"></center> 
        </td>
    </tr>
    <tr>
        <td>
        <center><strong><b style="color:White; font-size:medium;">About this game: </b><asp:Label ID="game_details" style="color:White; font-size:small;" runat="server" Text=""></asp:Label></strong></center>
        <center><hr / width="50%"></center> 
        </td>
    </tr>
    <tr>
        <td>
        <center><strong><asp:Button ID="buy_btn" style=" margin-bottom:10px;" CssClass=" btn btn-success btn-block" runat="server" Font-Bold="true" Width="50%" Text="Buy" onclick="buy_btn_Click" /></strong></center>
       
        </td>
    </tr>
    <tr>
        <td>
        <center><strong><asp:Button ID="addtocart_btn"  style=" margin-bottom:10px;" 
                CssClass=" btn btn-warning btn-block" Font-Bold="true" Width="50%" 
                runat="server" Text="Add to Cart" Enabled="false" /></strong></center>

        </td>
    </tr>
    <tr>
        <td>
        <br />
        <center><strong><asp:Label ID="msg" runat="server" style=" color:Black; font-size:medium; padding:5px 5px 5px 5px; " Visible="false" Text=""></asp:Label></strong></center>
        </td>
    </tr>
    </table>
    <hr />  
    </div>
    </form>
</body>
</html>
