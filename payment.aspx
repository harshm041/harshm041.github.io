<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
<link href="css/Stylesheet1.css" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Refresh" content="120;url=gamescart.aspx" />
</head>
<body style="background-color:Black;">
<div class="jumbotron" style=" margin-bottom:0px; color:White; background-color:Black; height:200px; padding-top:30px;">
        <div class="container text-center w3-animate-zoom">
        <h1><span style="color:#cc00cc">G</span>amer's <span style="color:#cc00cc">S</span>top</h1>
        <p>Payment Gateway</p>
        </div>
    </div>
    <div class=" container">
    <form id="form1" runat="server" class="form-container" style="background-color:black; color:White; padding-top:15px; margin-bottom:30px; border-radius:20px; ">
    <h1>Confirm by doing payment</h1>
    <hr />
    <h5 style=" color:Red;"><strong>Note:  </strong>This Page is Available for 2 minutes only...</h5>
    <center><asp:Label ID="failure_msg" runat="server" CssClass=" alert alert-danger" Visible="false"></asp:Label></center>
    <div class=" form-group">
    <b>Game Name: </b>
    <asp:TextBox ID="game_name" runat="server" Width="55%" Enabled="false" 
        CssClass="round-lg form-control" ForeColor="Black" MaxLength="20"></asp:TextBox>
    </div>

    <div class="form-group">
    <b>Payment Price:</b>
    <asp:TextBox ID="game_price" runat="server" Width="55%" Enabled="false"
        CssClass="round-lg form-control" ForeColor="Black" MaxLength="6"></asp:TextBox> 
    </div>

    <div class="form-group">
    <b>Name on Card: </b>
        <asp:TextBox ID="name_on_card" runat="server" Width="55%" CssClass="round-lg form-control" ForeColor="Black" placeholder="Name On Your Card"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="cardname_req_validator" runat="server" 
            ErrorMessage="Provide your name." ControlToValidate="name_on_card" 
            SetFocusOnError="True" ForeColor="White"></asp:RequiredFieldValidator>
    </div>

    <div class="form-group">
    <b>Card Number: </b>
        <asp:TextBox ID="card_number" runat="server" Width="55%" CssClass="round-lg form-control" ForeColor="Black" placeholder="Card Number " MaxLength="16"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="cardno_req_validator" runat="server" ErrorMessage="Provide Card Number." ControlToValidate="card_number" 
    SetFocusOnError="True" ForeColor="White"></asp:RequiredFieldValidator>
    
        <asp:RegularExpressionValidator ID="cardno_validator" runat="server" 
            ErrorMessage="Enter Valid Card Number." ControlToValidate="card_number" 
            SetFocusOnError="True" ValidationExpression="^[0-9]{16}$" ForeColor="White"></asp:RegularExpressionValidator>
    
    </div>
    
    <div class="form-group">
    <b>CVV: </b>
        <asp:TextBox ID="cvv" runat="server" TextMode="Password" MaxLength="3" Width="55%" CssClass="round-lg form-control" ForeColor="Black" placeholder="CVV"></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="cvv_req_validator" runat="server" ErrorMessage="Provide CVV." ControlToValidate="cvv" 
    SetFocusOnError="True" ForeColor="White"></asp:RequiredFieldValidator>
        
        <asp:RegularExpressionValidator ID="cvv_validator" runat="server" ControlToValidate="cvv" ErrorMessage="Enter a Valid CVV."
        SetFocusOnError="True" ValidationExpression="^[0-9]{3}$" ForeColor="White"></asp:RegularExpressionValidator>

    </div>
    <center>
        <asp:Button ID="makepayment_btn" runat="server" Text="Make Payment" 
        CssClass="btn btn-success" Width="50%" onclick="makepayment_btn_Click"    />
    </center>
    <br />
    <center>
    <asp:Button ID="cancel_btn" runat="server" Text="Cancel" 
        CssClass="btn btn-danger" Width="50%" CausesValidation="false" onclick="cancel_btn_Click"    />
    </center>


        
    
    </form>
    </div>
</body>
</html>
