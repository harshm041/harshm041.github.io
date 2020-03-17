<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            >
        <Columns>
        <asp:TemplateField>
        
   
            <ItemTemplate>
               <strong> <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="Large" Text='<%# Eval("game_id") %>'></asp:Label></strong>
                <center>
                <asp:Image ID="Image1" CssClass=" img-thumbnail" runat="server" ImageUrl='<%# Eval("image_display") %>' />
               </center>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("game_price") %>'></asp:Label>
               <center> <asp:Button ID="Button1" style=" margin-bottom:10px; margin-top:-5px;" 
                       CssClass="btn btn-success" runat="server" Text="Buy"
                       PostBackUrl= '<%# string.Format("~/gamedetails.aspx?Id={0}", HttpUtility.UrlEncode(Eval("game_id").ToString())) %>' /></center>
            </ItemTemplate>
        
            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        
        </asp:TemplateField>
       </Columns>

            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />

        </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mydbConnectionString %>" 
            SelectCommand="SELECT * FROM [games_db]"></asp:SqlDataSource>
          </div>    
           </form> 
</body>
</html>
