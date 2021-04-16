<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/LoginPage.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="LoginPages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
     .style1
     {
        Color:Red;
        
      }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" class="tab">
<tr>
<td>&nbsp;
</td>
</tr>
<tr>
<td style="font-size:x-large; font-family:Arial; font-style:oblique; height:300; background-color:Blue; color:White " height="300">
   You Are Logged Out Click Here To Redirect To  
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPages/HomePage.aspx" ForeColor="White">Home Page</asp:HyperLink>
</td>
</tr>
<tr>
<td>&nbsp;
</td>
</tr>

</table>
</asp:Content>

