<%@ Page Title="" Language="C#"  MasterPageFile="~/after_login.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container" style=" margin-top:10px; padding:0px 0px 0px 0px; margin-left:40px; margin-bottom:40px;">
<div class="row">
<div class="col-sm-12 ">
    <asp:TextBox ID="srch" Text="" CssClass=" round-sm" ForeColor="Black" AutoPostBack="true"  runat="server" Width="60%" ></asp:TextBox> 

    <asp:Button ID="srch_btn" runat="server"  CssClass="btn btn-success" 
        Text="Search"   />
</div>
</div>
<hr style=" border-width:medium; border-color:Black ;" />
<div id="div" runat="server">
<center><asp:Label ID="msg" runat="server" Visible="False" Font-Bold="True" ></asp:Label></center></div>
    <asp:DataList ID="game" runat="server" DataSourceID="SqlDataSource1" style=" margin-left:50px; margin-right:50px; margin-top:20px; margin-bottom:20px;"
         RepeatColumns="4" RepeatDirection="Horizontal" 
        ShowFooter="False" ShowHeader="False"  onitemcommand="game_ItemCommand" >
        
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
                    <table width="60">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </SeparatorTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" 
        SelectCommand="SELECT * FROM [games_db] WHERE ([game_name] LIKE '%' + @game_name + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="srch" Name="game_name" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>

