<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserPage.master" AutoEventWireup="true" CodeFile="CustomeRequest.aspx.cs" Inherits="UserPages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label" style="text-align: left"></asp:Label>

    <table class="style6">
        <tr>
            <td style="text-align: left">
                Your Query:&nbsp;&nbsp; 
                <asp:TextBox ID="TextBox1" runat="server" Height="76px" 
                    TextMode="MultiLine" Width="232px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Please enter your query" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:Button ID="Button1" runat="server" Text="Button" CssClass="but" 
                    onclick="Button1_Click" />
             </td>
        </tr>
    </table>

</asp:Content>

