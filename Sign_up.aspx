<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign_up.aspx.cs" Inherits="Sign_up" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
<link href="css/Stylesheet1.css" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gamer's Stop -SignUp</title>
</head>
<body style="background-color:Black;">
    
    <div class="jumbotron" style=" margin-bottom:0px; color:White; background-color:Black; height:200px; padding-top:30px;">
        <div class="container text-center w3-animate-zoom">
        <h1><span style="color:#cc00cc">G</span>amer's <span style="color:#cc00cc">S</span>top</h1>
        <p>Sign-Up</p>
        </div>
    </div>
    <!-- signup_form -->
    <div class="container">
    <form runat="server" class="form-container" style="background-color:black; color:White; padding-top:15px; margin-bottom:30px; border-radius:20px; ">
    <h1>Fill Up The Details To Create Account</h1>
    <hr />
    <div class="form-group">
    <b>Username :</b> 
    <asp:TextBox ID="create_username" runat="server" Width="55%" 
        CssClass="round-lg form-control" placeholder="Enter Username" 
            ForeColor="Black" MaxLength="20"></asp:TextBox>
    <asp:RegularExpressionValidator ID="username_validator" runat="server" ErrorMessage="Enter valid username" Font-Bold="true" Font-Size="X-Small" ValidationExpression="^[a-zA-Z0-9@_]{5,12}" ControlToValidate="create_username"></asp:RegularExpressionValidator>
     <asp:RequiredFieldValidator ID="username_req_validator" runat="server" ErrorMessage="Please Enter Username !!" 
        Font-Size="Small" ControlToValidate="create_username" Font-Bold="True" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <b>Password :</b>
        <asp:TextBox ID="password" runat="server" Width="55%" 
        Cssclass="round-lg form-control" placeholder="Create Password" 
            ForeColor="Black" TextMode="Password" MaxLength="14"></asp:TextBox>
        <asp:RegularExpressionValidator ID="password_validator" runat="server" 
            ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" 
            ControlToValidate="password" 
            ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$" Font-Bold="true" Font-Size="X-Small"></asp:RegularExpressionValidator>
        <br />
        <asp:RequiredFieldValidator ID="password_req_validator" runat="server" 
            ErrorMessage="Enter Password" ControlToValidate="password" ForeColor="Red" Font-Bold="True" Font-Size="Small"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <b>Confirm Password :</b>
        <asp:TextBox ID="cnf_password" runat="server" Width="55%"
        Cssclass="round-lg form-control" placeholder="Re-Type Password" 
            ForeColor="Black" TextMode="Password" MaxLength="14"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="Password should se same as above." ControlToCompare="password" 
            ControlToValidate="cnf_password" Font-Size="X-Small"  Font-Bold="true"></asp:CompareValidator>
            <br />
        <asp:RequiredFieldValidator ID="cnfpass_req_validator" runat="server" 
            ErrorMessage="Re-Type Your password to confirm" 
            ControlToValidate="cnf_password" Font-Bold="True" Font-Size="Small" 
            ForeColor="Red"></asp:RequiredFieldValidator>     
    </div>
    <div class="form-group">
    <b>Address :</b>
        <asp:TextBox ID="address" runat="server" Width="45%" CssClass="round-lg form-control" placeholder="Enter Your Address" ForeColor="Black" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="address_req_validator" runat="server" 
            ErrorMessage="Please Enter Address (we need your address for delivery purpose only, you can change it later if needed)" 
            Font-Bold="True" ControlToValidate="address" Font-Size="X-Small" 
            ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
    <b>Phone Number:</b>
        <asp:TextBox ID="ph_no" runat="server" CssClass="round-lg form-control" 
            placeholder="Enter Phone Number" ForeColor="Black" Width="40%" MaxLength="10"></asp:TextBox>
        <asp:RegularExpressionValidator ID="phno_validator" runat="server" 
            ErrorMessage="Enter Valid Phone Number" ControlToValidate="ph_no" 
            Font-Size="X-Small" Font-Bold="true"
            ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
            <br />
        <asp:RequiredFieldValidator ID="phno_req_validator" runat="server" 
            ErrorMessage="Provide your phone number." Font-Bold="True" Font-Size="Small" 
            ControlToValidate="ph_no" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <hr />
    
   <center>
    <asp:Button ID="signup_btn" runat="server" Text="Submit" 
        CssClass="btn btn-success" Width="50%" onclick="signup_btn_Click"   />
    </center>
    <hr />
    <asp:Label ID="err_msg_signup" runat="server" CssClass="alert alert-danger center-block" style="border-radius:10px; text-align:center; padding:5px 5px 5px 5px;" visible="false" Font-Bold="True"></asp:Label>
    </form>
    </div>
    
</body>
</html>
