<%@ Page Title="Admin" Language="C#" MasterPageFile="~/admin_page.master" AutoEventWireup="true" CodeFile="edit_product.aspx.cs" Inherits="edit_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style=" margin-top:10px; padding:0px 0px 0px 0px; margin-left:40px; margin-bottom:40px;">
<h1 style=" color:#cc00cc; font:bold;">Edit Game Details</h1><hr />
<asp:Label ID="err_msg" runat="server" Font-Bold="True" Visible="False" style="border-radius:10px; text-align:center; padding:5px 5px 5px 5px;"></asp:Label>
<div class="row">
    <div class="col-sm-12 ">
        <asp:Label ID="gameid_lbl" runat="server" CssClass="col-sm-2"  Text="Game ID: "></asp:Label>
        
        <asp:TextBox ID="Game_ID" CssClass="round-md" ForeColor="Black" 
            runat="server" MaxLength="4" placeholder="Enter Digits only"></asp:TextBox>

        <asp:RequiredFieldValidator ID="gameid_req_validator" runat="server" ValidationGroup="edit"  ErrorMessage="Please fill this field"  Font-Size="X-Small" ControlToValidate="Game_ID"></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="gameid_validator" runat="server" 
            ErrorMessage="*(Enter 3 Or 4 digits only)" ControlToValidate="Game_ID" ValidationGroup="edit" 
            ValidationExpression="^[0-9]*$"  Font-Size="X-Small" ForeColor="Red"></asp:RegularExpressionValidator>

        
    </div>
</div><br />
<div class=" row">
    <div class="col-sm-12 ">
        <asp:Label ID="gamename_lbl" runat="server" CssClass="col-sm-2" Text="Game Name: " Visible="false"></asp:Label>
        
        <asp:TextBox ID="Game_Name" CssClass="round-md" ForeColor="Black" 
            runat="server"  placeholder="Enter Game Name" Visible="false" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="gamename_req_validator" runat="server" 
            ErrorMessage="Provide Game Name" ControlToValidate="Game_Name" 
            Font-Size="X-Small" Font-Underline="False"  ></asp:RequiredFieldValidator>
    
    </div>
</div><br />
<div class="row">
    <div class="col-sm-12">
        <asp:Label ID="Gameprice_lbl" runat="server" CssClass="col-sm-2" Text="Game Price" Visible="false"></asp:Label>

        <asp:TextBox ID="Game_Price" runat="server" CssClass="round-md" 
            ForeColor="Black" placeholder="Enter Game Price"
             MaxLength="5" Visible="false" ></asp:TextBox>

        <asp:RequiredFieldValidator ID="gameprice_req_validator" runat="server" ErrorMessage="Please fill this field" ControlToValidate="Game_Price" 
            Font-Size="X-Small" ></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="gameprice_validator" runat="server" 
            ErrorMessage="*(Enter Digits Only)" ControlToValidate="Game_Price" 
            Font-Size="X-Small" ForeColor="Red" ValidationExpression="^[0-9]*$" ></asp:RegularExpressionValidator>
    </div>
</div><br />
<div class="row">
    <div class="col-sm-12">
    <asp:Label ID="gametype_lbl" runat="server" CssClass="col-sm-2" Text="Game Type:" Visible="false"></asp:Label>
        
        <asp:TextBox ID="Game_Type" runat="server"  CssClass="round-md" 
            ForeColor="Black" visible="false" placeholder="Enter other Game Type"></asp:TextBox>

        <asp:RequiredFieldValidator ID="gametype_req_validator" runat="server" 
            ErrorMessage="Provide other gametype" ControlToValidate="Game_Type" Font-Size="X-Small" ></asp:RequiredFieldValidator>
    </div>
</div><br />
<div class="row">
    <div class="col-sm-12">
    <asp:Label ID="gamedetail_lbl" runat="server" CssClass="col-sm-2" Text="Game Details:" Visible="false"></asp:Label>

    <asp:TextBox ID="Game_Details" CssClass="round-md" ForeColor="Black" 
            Visible="false" placeholder="Provide Game Details" runat="server" 
            TextMode="MultiLine" ></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="gamedetails_req_validator" runat="server" Visible="false" ErrorMessage="Provide Game Details" ControlToValidate="Game_Details" Font-Size="X-Small" ></asp:RequiredFieldValidator>
    </div>
</div><br />
    <asp:Button ID="edit_btn" CssClass="btn btn-warning" runat="server" Text="Edit" 
        onclick="edit_btn_Click" ValidationGroup="edit"  />&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="cancel_btn" CssClass="btn btn-danger" runat="server" 
        Text="Cancel" Visible="false" onclick="cancel_btn_Click" CausesValidation="false" />&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="update_btn" CssClass="btn btn-success" runat="server" 
    Text="Update" Visible="false" onclick="update_btn_Click"></asp:Button>
    <br />
    <br />
    <h1 style=" color:#cc00cc; font:bold;">Games List</h1>
    <hr />
        <asp:GridView ID="gameslist_view" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black"  HorizontalAlign="Center" Width="80%" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="game_id" HeaderText="Game ID:" 
                    SortExpression="game_id" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="game_name" HeaderText="Game Name:" 
                    SortExpression="game_name" >
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" 
            SelectCommand="SELECT [game_id], [game_name] FROM [games_db]">
        </asp:SqlDataSource>
</div>
</asp:Content>

