<%@ Page Title="" Language="C#" MasterPageFile="~/after_login.master" AutoEventWireup="true" CodeFile="transaction details.aspx.cs" Inherits="transaction_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container" style=" margin-top:10px; padding:0px 0px 0px 0px; margin-left:40px; margin-bottom:40px;">
<h1 style=" color:Black; font:bold;">Your Transactions</h1><hr style=" border-width:medium; border-color:Black ;" />
<center><asp:Label ID="msg" runat="server" Visible="false" style=" font-size:small;" Text=""></asp:Label></center>
    <asp:DataList ID="transactions" runat="server"
     Width="80%" DataSourceID="SqlDataSource1"
        onitemcommand="transactions_ItemCommand">
        <ItemTemplate>
            <table  class="nav-justified">
                <tr>
                    <th width="20%" >Game Name:&nbsp; </th>
                    <td width="20%" >
                        <asp:Label ID="gamename" runat="server" Text='<%# Eval("game_name") %>'></asp:Label>
                    </td>
                    <th>Price:&nbsp; </th>
                    <td width="20%" >
                        <asp:Label ID="gameprice" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                    <th width="20%">Date of Payment:&nbsp; </th>
                    <td width="20%" >
                        <asp:Label ID="dateofpurchase" runat="server" Text='<%# Eval("datetime") %>'></asp:Label>
                    </td>
                    <td width="20%" >
                        <asp:Button ID="view_btn" runat="server" CssClass="btn btn-success" CommandName="viewdetail"
                            CommandArgument='<%# Eval("transaction_id") %>' Text="View Transaction" />
                    </td>
                </tr>
            </table>
            <hr style=" border-width:medium;" />
        </ItemTemplate>
    </asp:DataList>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" 
        SelectCommand="SELECT * FROM [orders] WHERE (([username] = @username) AND ([phone_no] = @phone_no))">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="login_user" Type="String" />
            <asp:SessionParameter Name="phone_no" SessionField="phoneno" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</div>
</asp:Content>

