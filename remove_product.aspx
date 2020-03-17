<%@ Page Title="Admin" Language="C#" MasterPageFile="~/admin_page.master" AutoEventWireup="true" CodeFile="remove_product.aspx.cs" Inherits="remove_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style=" margin-top:10px; padding:0px 0px 0px 0px; margin-left:40px; margin-bottom:40px;">
<h1 style=" color:#cc00cc; font:bold;">Remove Game</h1><hr />
<div class="row">
    <div class="col-sm-12">
   
        <asp:Label ID="gameid_lbl" runat="server" CssClass="col-sm-2" Text="Game ID:"></asp:Label>

        <asp:TextBox ID="Game_ID" runat="server" CssClass="round-md" ForeColor="Black" 
            MaxLength="4" placeholder="Enter Digits only"></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="gameid_req_validator" runat="server" ErrorMessage="Please fill this field"  Font-Size="X-Small" ControlToValidate="Game_ID"></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="gameid_validator" runat="server" 
            ErrorMessage="*(Enter digits only)" ControlToValidate="Game_ID" 
            ValidationExpression="^[0-9]*$" Font-Size="X-Small" ForeColor="Red"></asp:RegularExpressionValidator>
    
    </div>
</div><br />
<div class="row">
    <div class="col-sm-12">
   
        <asp:Label ID="gamename_lbl" runat="server" CssClass="col-sm-2" Text="Game Name:"></asp:Label>

        <asp:TextBox ID="Game_Name" CssClass="round-md" ForeColor="Black" 
            runat="server"  placeholder="Enter Gme Name" ></asp:TextBox>

        <asp:RequiredFieldValidator ID="gamename_req_validator" runat="server" 
            ErrorMessage="Provide Game Name" ControlToValidate="Game_Name" 
            Font-Size="X-Small" Font-Underline="False" ></asp:RequiredFieldValidator>
        
    </div>
</div><br />
    <asp:Button ID="Removegame_btn" runat="server" Text="Remove" CssClass="btn btn-warning " style=" margin-left:10%" onclick="Remove_btn_Click"/>
    <hr />
    <asp:Label ID="err_msg" runat="server" Font-Bold="true" CssClass="alert alert-danger center-block" Text="" Visible="false" style="border-radius:10px; text-align:center; padding:5px 5px 5px 5px;"></asp:Label>
    <hr />
    <h1 style=" color:#cc00cc; font:bold;">Games List</h1>
    <hr />
        <asp:GridView ID="gamelist_view" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
            HorizontalAlign="Center" Width="80%" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="game_id" HeaderText="Game ID:" 
                    SortExpression="game_id">
                <HeaderStyle VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="game_name" HeaderText="Game Name:  " 
                    SortExpression="game_name">
                <HeaderStyle VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
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

