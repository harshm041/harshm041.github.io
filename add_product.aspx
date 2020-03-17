<%@ Page Title="Admin" Language="C#" MasterPageFile="~/admin_page.master"  AutoEventWireup="true" CodeFile="add_product.aspx.cs" Inherits="add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container" style=" margin-top:10px; padding:0px 0px 0px 0px; margin-left:40px; margin-bottom:40px;">
<h1 style=" color:#cc00cc; font:bold;">Add Game Details</h1><hr />
<asp:Label ID="err_msg" runat="server" Font-Bold="True" Visible="False" 
         style=" border-radius:10px; text-align:center; padding:5px 5px 5px 5px;  "></asp:Label>
<div class="row">
    <div class="col-sm-12 ">
        <asp:Label ID="gameid_lbl" runat="server" CssClass="col-sm-2"  Text="Game ID: "></asp:Label>
        
        <asp:TextBox ID="Game_ID" CssClass="round-md" ForeColor="Black" 
            runat="server" MaxLength="4" placeholder="Enter Digits only"></asp:TextBox>

        <asp:RequiredFieldValidator ID="gameid_req_validator" runat="server" ErrorMessage="Please fill this field"  Font-Size="X-Small" ControlToValidate="Game_ID"></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="gameid_validator" runat="server" 
            ErrorMessage="*(Enter 3 Or 4 digits only)" ControlToValidate="Game_ID" 
            ValidationExpression="^[0-9]{3,4}$"  Font-Size="X-Small" ForeColor="Red"></asp:RegularExpressionValidator>

        
    </div>
</div><br />
<div class=" row">
    <div class="col-sm-12 ">
        <asp:Label ID="gamename_lbl" runat="server" CssClass="col-sm-2" Text="Game Name: "></asp:Label>
        
        <asp:TextBox ID="Game_Name" CssClass="round-md" ForeColor="Black" 
            runat="server"  placeholder="Enter Game Name" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="gamename_req_validator" runat="server" 
            ErrorMessage="Provide Game Name" ControlToValidate="Game_Name" 
            Font-Size="X-Small" Font-Underline="False" ></asp:RequiredFieldValidator>
    
    </div>
</div><br />
<div class="row">
    <div class="col-sm-12">
        <asp:Label ID="Gameprice_lbl" runat="server" CssClass="col-sm-2" Text="Game Price"></asp:Label>

        <asp:TextBox ID="Game_Price" runat="server" CssClass="round-md" 
            ForeColor="Black" placeholder="Enter Game Price"
             MaxLength="5" ></asp:TextBox>

        <asp:RequiredFieldValidator ID="gameprice_req_validator" runat="server" ErrorMessage="Please fill this field" ControlToValidate="Game_Price" 
            Font-Size="X-Small"></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="gameprice_validator" runat="server" 
            ErrorMessage="*(Enter Digits Only)" ControlToValidate="Game_Price" 
            Font-Size="X-Small" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
    </div>
</div><br />
<div class="row">
    <div class="col-sm-12">
    <asp:Label ID="gametype_lbl" runat="server" CssClass="col-sm-2" Text="Game Type:"></asp:Label>
        
    <asp:DropDownList ID="gametype_drplst" runat="server" ForeColor="Black" 
            CssClass="round-md" 
            onselectedindexchanged="gametype_drplst_SelectedIndexChanged" 
            AutoPostBack="True">
        <asp:ListItem >TPS</asp:ListItem>
        <asp:ListItem>FPS</asp:ListItem>
        <asp:ListItem>Adventure</asp:ListItem>
        <asp:ListItem>Fantasy</asp:ListItem>
        <asp:ListItem>Role Playing</asp:ListItem>
        <asp:ListItem Selected="True">Others</asp:ListItem>
        </asp:DropDownList>
    
        <asp:TextBox ID="gametype" runat="server"  CssClass="round-md" 
            ForeColor="Black" placeholder="Enter other Game Type" ></asp:TextBox>

        <asp:RequiredFieldValidator ID="gametype_req_validator" runat="server" 
            ErrorMessage="Provide other gametype" ControlToValidate="gametype" Font-Size="X-Small"></asp:RequiredFieldValidator>
    </div>
</div><br />
<div class="row">
    <div class="col-sm-12">
    <asp:Label ID="gamedetail_lbl" runat="server" CssClass="col-sm-2" Text="Game Details:"></asp:Label>

    <asp:TextBox ID="Game_Details"  TextMode="MultiLine" runat="server" CssClass="round-md" ForeColor="Black" Width="40%" placeholder="Provide Game Detail"></asp:TextBox>

    <asp:RequiredFieldValidator ID="gamedetails_req_validator" runat="server" 
            ErrorMessage="Please fill this field" ControlToValidate="Game_Details" 
            Font-Size="X-Small" ></asp:RequiredFieldValidator>

    </div>
</div><br />
<div class="row">
    <div class="col-sm-12">
    <asp:Label ID="gamephoto_lbl" runat="server" CssClass="col-sm-2" Text="Game Photo:"></asp:Label>

    <asp:FileUpload ID="Game_Photo_upload" CssClass="round-md"  runat="server"  />
    &nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="gamephoto_req_validator" runat="server" ErrorMessage="Please provide a image" ControlToValidate="Game_Photo_upload" Font-Size="X-Small"></asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator ID="image_ext_validator" runat="server" 
            ErrorMessage="Provide only .(jpg,png,gif) files"  
            ControlToValidate="Game_Photo_upload" Font-Size="X-Small" ForeColor="Red" 
            ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.gif)$"></asp:RegularExpressionValidator>
    </div>
</div><br />
    <asp:Button ID="add_game_btn" runat="server" CssClass="btn btn-success " 
        Text="Add Game" onclick="add_game_btn_Click"  />
        <hr />
    
</div>
</asp:Content>

