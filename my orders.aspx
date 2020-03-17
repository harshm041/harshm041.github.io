<%@ Page Title="" Language="C#" MasterPageFile="~/after_login.master" AutoEventWireup="true" CodeFile="my orders.aspx.cs" Inherits="my_orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style=" margin-top:10px; padding:0px 0px 0px 0px; margin-left:40px; margin-bottom:40px;">
<h1 style=" color:Black; font:bold;">My Orders</h1><hr style=" border-width:medium; border-color:Black ;" />
<center><asp:Label ID="msg" runat="server" Visible="false" style=" font-size:small;" Text=""></asp:Label></center>
    <asp:GridView ID="orders" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
        style=" text-align:center; margin-left:50px; margin-right:50px; margin-top:20px; margin-bottom:20px;" 
        width="100%" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="5" 
        ForeColor="Black" >
        <EmptyDataTemplate>
        Your orders are empty
        </EmptyDataTemplate>
        <Columns>
            <asp:BoundField DataField="game_name" HeaderText="Game Name " 
                SortExpression="game_name" >
            <HeaderStyle VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="product_key" HeaderText="Product Key" 
                SortExpression="product_key">
            <HeaderStyle VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="datetime" HeaderText="Time Of Purchase" 
                SortExpression="datetime">
            <HeaderStyle VerticalAlign="Middle" />
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
        SelectCommand="SELECT [game_name], [product_key], [datetime] FROM [orders] WHERE (([username] = @username) AND ([phone_no] = @phone_no))">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="login_user" Type="String" />
            <asp:SessionParameter Name="phone_no" SessionField="phoneno" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
    
</asp:Content>

