<%@ Page Title="" Language="C#" MasterPageFile="~/after_login.master" AutoEventWireup="true" CodeFile="offerscart.aspx.cs" Inherits="offerscart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="offerscart_list" runat="server" DataSourceID="SqlDataSource1"
    style=" margin-left:50px; margin-right:50px; margin-top:20px; margin-bottom:20px;" 
    RepeatColumns="4" RepeatDirection="Horizontal" 
        ShowFooter="False" ShowHeader="False" 
        onitemcommand="offerscart_list_ItemCommand" >
        <ItemTemplate>
           <table border="1" style=" text-align:center;" class="nav-justified" >
            <tr >
                <td  >
                    <asp:Label ID="game_id" runat="server" Visible="False" Font-Bold="true"  
              Text='<%# Eval("game_id") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style=" background-color:Black;">
                    <asp:Label ID="game_name" runat="server" style=" color:white;" Font-Bold="true"  Text='<%# Eval("game_name") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="image_display"  style=" margin-bottom:10px; margin-top:10px; margin-left:40px; margin-right:40px;" width="50%"   runat="server" ImageUrl='<%# Eval("image_display") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="game_price" runat="server" Font-Bold="true" Text='<%# Eval("game_price") %>'></asp:Label> Rs
                </td>
            </tr>
            <tr style=" background-color:Black;">
                <td>
                    <asp:Button ID="viewdetail_btn" style=" margin-bottom:5px; margin-top:5px;" 
                       CssClass="btn btn-success" runat="server" Text="Buy" 
                       CommandName="viewdetail" CommandArgument='<%# Eval("game_id") %>'  />
                </td>
            </tr>
        </table>
        <br />
        </ItemTemplate>
        <SeparatorTemplate>
                    <table width="20">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
        </SeparatorTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" 
        SelectCommand="SELECT * FROM [offers_db]"></asp:SqlDataSource>
</asp:Content>

