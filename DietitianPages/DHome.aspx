<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Dietitian.master" AutoEventWireup="true" CodeFile="DHome.aspx.cs" Inherits="DietitianPages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            background-color: #507CD1;
            font-size: xx-large;
            font-family: Arial Rounded MT Bold;
            font-weight: 700;
            color: #FFFFFF;
            text-align: left;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="tab">
        <tr>
            <td class="style4">
             WELCOME BACK
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
             </td>
        </tr>
        <tr>
            <td>
                <br />
                </td>
        </tr>
        <tr>
            <td>
                Edit Details :-</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                
                UserName :&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style2">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter Username" ForeColor="Red" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                 Password :&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style2" TextMode="Password">
                </asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ErrorMessage="Please.. Enter password" ForeColor="Red" 
                     ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button3" runat="server" CssClass="but" Text="Update" 
                    onclick="Button3_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server">
                </asp:Label></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

