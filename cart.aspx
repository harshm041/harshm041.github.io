<%@ Page Title="" Language="C#" MasterPageFile="~/after_login.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container" style=" margin-top:10px; padding:0px 0px 0px 0px; margin-left:40px; margin-bottom:40px;">
<h1 style=" color:Black; font:bold;">Your Wishlist</h1><hr style=" border-width:medium; border-color:Black ;" />
<center><asp:Label ID="msg" runat="server" Visible="false" style=" font-size:small;" Text=""></asp:Label></center>
    <asp:DataList ID="cartlist" runat="server" 
    style=" margin-left:50px; margin-right:50px; margin-top:20px; margin-bottom:20px;" 
    DataSourceID="SqlDataSource1"  
        Width="80%" onitemcommand="cartlist_ItemCommand">
       
        <ItemTemplate>
            
            <table  style=" text-align:center;" class="nav-justified"  >
              <tr>  
                    <td width="20%">
                       ID: <asp:Label ID="game_id" runat="server" Text='<%# Eval("game_id") %>' ></asp:Label>
                    </td>
                    <td width="20%">
                        <asp:Label ID="game_name" runat="server" Text='<%# Eval("game_name") %>' ></asp:Label>
                    </td>
                    <td width="20%">
                        <asp:Button ID="buy_btn" style=" margin-bottom:5px; margin-top:5px;" 
                            CssClass="btn btn-success" runat="server"  Text="View" 
                        CommandName="viewdetail" CommandArgument='<%# Eval("game_id") %>' 
                              />
                    </td>
                    <td width="20%" >
                        <asp:Button ID="remove_btn" style=" margin-bottom:5px; margin-top:5px;" 
                            CssClass="btn btn-danger" runat="server"  Text="Remove" 
                            CommandArgument='<%# Eval("game_id") %>' CommandName="remove_from_cart" />
                    </td>
                </tr>
                
            </table>
                    <hr style=" border-width:1px; border-color:inherit;"/>
                   
                
        </ItemTemplate>
 
    </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" 
    SelectCommand="SELECT [game_id], [game_name] FROM [carts_db] WHERE (([username] = @username) AND ([phone_no] = @phone_no))">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="login_user" Type="String" />
            <asp:SessionParameter Name="phone_no" SessionField="phoneno" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
    </asp:Content>

