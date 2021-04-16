<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Dietitian.master" AutoEventWireup="true" CodeFile="CustomeDietPlan.aspx.cs" Inherits="DietitianPages_CustomeDietPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="tdtag">WELCOME</asp:Label>

   

   
   

    <table class="style4">
        <tr>
            <td>
                Enter the File: <asp:FileUpload ID="FileUpload1" runat="server" /> </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" CssClass="but" 
                    onclick="Button1_Click" /></td>
        </tr>
    </table>

   

   
   

</asp:Content>

