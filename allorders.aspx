<%@ Page Title="" Language="C#" MasterPageFile="~/admin_page.master" AutoEventWireup="true" CodeFile="allorders.aspx.cs" Inherits="allorders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style=" margin-top:10px; padding:0px 0px 0px 0px; margin-left:40px; margin-bottom:40px;">
<h1 style=" color:#cc00cc; font:bold;">All Orders</h1><hr />
<asp:Label ID="err_msg" runat="server" Font-Bold="True" Visible="False" style="border-radius:10px; text-align:center; padding:5px 5px 5px 5px;"></asp:Label>
    <asp:GridView ID="allorders_list" runat="server" AllowPaging="True" Width="80%" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataSourceID="SqlDataSource1" EmptyDataText="---" 
        ForeColor="Black" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="game_name" HeaderText="Game Name" 
                SortExpression="game_name">
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="username" HeaderText="User" 
                SortExpression="username">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="datetime" HeaderText="Time of purchase" 
                SortExpression="datetime">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="phone_no" HeaderText="Phone no" 
                SortExpression="phone_no">
            <ItemStyle HorizontalAlign="Center" />
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
        SelectCommand="SELECT [game_name], [price], [username], [datetime], [phone_no] FROM [orders]">
    </asp:SqlDataSource>
</div>
</asp:Content>

