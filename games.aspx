<%@ Page Title="" Language="C#" MasterPageFile="~/after_login.master" AutoEventWireup="true" CodeFile="games.aspx.cs" Inherits="games" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- not in project_-->
    <asp:GridView ID="GamesList" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
    <Columns>
      <asp:TemplateField>
      <ItemTemplate>
      <strong>
          <asp:Label ID="game_id" runat="server" Visible="False"  
              Text='<%# Eval("game_id") %>'></asp:Label>
      </strong>
      <strong>
        <center><asp:Label ID="game_name" runat="server" Text='<%# Eval("game_name") %>'></asp:Label></center>
      </strong>
      <center>
        <asp:Image ID="image_display" CssClass=" img-thumbnail" runat="server" ImageUrl='<%# Eval("image_display") %>' />
      </center>
      <strong>
      <center>
        <asp:Label ID="game_price" runat="server" Text='<%# Eval("game_price") %>'></asp:Label>
      </center>
      </strong>
      <center> 
      <asp:Button ID="Button1" style=" margin-bottom:10px; margin-top:-5px;" 
                       CssClass="btn btn-success" runat="server" Text="Buy"
                       PostBackUrl= '<%# string.Format("~/gamedetails.aspx?Id={0}", HttpUtility.UrlEncode(Eval("game_id").ToString())) %>' />
      </center>
      </ItemTemplate>
      </asp:TemplateField>
    </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" 
        SelectCommand="SELECT * FROM [games_db]"></asp:SqlDataSource>
</asp:Content>

