<%@ Page Title="" Language="C#" MasterPageFile="~/after_login.master" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container" style=" margin-top:10px; padding:0px 0px 0px 0px; margin-left:40px; margin-bottom:40px;">
<h1 style=" color:Black; font:bold;">Download</h1><hr style=" border-width:medium; border-color:Black ;" />
<center><asp:Label ID="msg" runat="server" Visible="false" style=" font-size:small;" Text=""></asp:Label></center>
    <asp:DataList ID="downloads" runat="server" DataSourceID="SqlDataSource1" 
        onitemcommand="downloads_ItemCommand">
        <ItemTemplate>
           
            <table class=" table  ">
                <tr>
                    <td width="40%">
                        <asp:Label ID="gamename" runat="server" Text='<%# Eval("game_name") %>'></asp:Label>
                    </td>
                    <td width="20%">
                        <asp:Button ID="download" runat="server" CssClass="btn btn-success" 
                            CommandArgument='<%# Eval("game_name") %>' CommandName="download" Text="Download" />
                    </td>
                </tr>
            </table>
           
           
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" 
        SelectCommand="SELECT DISTINCT [game_name] FROM [orders] WHERE (([username] = @username) AND ([phone_no] = @phone_no))">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="login_user" Type="String" />
            <asp:SessionParameter Name="phone_no" SessionField="phoneno" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

