<%@ Page Title="" Language="C#" MasterPageFile="~/after_login.master" AutoEventWireup="true" CodeFile="viewtransactiondetails.aspx.cs" Inherits="viewtransactiondetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container" style=" margin-top:10px; padding:0px 0px 0px 0px; margin-left:40px; margin-bottom:40px;">
    <h1 style=" color:Black; font:bold;">Transaction Details</h1><hr style=" border-width:medium; border-color:Black ;" />
    <table class=" table table-hover" style=" position:fixed;">
    <tr>
        <td>Transaction ID:  </td>
        <td><asp:Label ID="transid" runat="server" Text=""></asp:Label></td>
        
    </tr>
    
    <tr>
        <td>Game Name: </td>
        <td><asp:Label ID="gamename" runat="server" Text=""></asp:Label> </td>
        
    </tr>
    
    <tr>
        <td>Price Paid: </td>
        <td><asp:Label ID="price" runat="server" Text=""></asp:Label> </td>
        
    </tr>
    
    <tr>
        <td>Card Number: </td>
        <td><asp:Label ID="cardno" runat="server" Text=""></asp:Label></td>
        
    </tr>
    
    <tr>
        <td>Name on Card: </td>
        <td><asp:Label ID="nameoncard" runat="server" Text=""></asp:Label></td>
        
    </tr>
    
    <tr>
        <td>Date and Time of purchase: </td>
        <td><asp:Label ID="date_time" runat="server" Text=""></asp:Label></td>
       
    </tr>
    
    </table>
</div>
</asp:Content>

