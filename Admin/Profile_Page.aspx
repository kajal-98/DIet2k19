<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="Profile_Page.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            background-color: #507CD1;
            font-size: xx-large;
            font-family: Arial Rounded MT Bold;
            font-weight: 700;
            color: #FFFFFF;
            width: 1145px;
        }
        .style6
        {
            width: 1145px;
        }
        .style7
        {
            width: 1145px;
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <table class="tabuser">
        <tr>
            <td class="style5" style="background-color:Purple">
             Welcome Admin <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                ......!!!!!!
             </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
          
               <td class="style5"  >
                Edit Details :-</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                 UserName :&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style2"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                 Password :&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style2" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Button ID="Button3" runat="server" CssClass="but" Text="Update" 
                    onclick="Button3_Click" AccessKey="U" ForeColor="Magenta" 
                    ToolTip="Click HereTo Update Name And Password" Width="123px" />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>

