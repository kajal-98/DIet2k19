<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Diesease.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPages/LoginPage.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div style="width: 1795px; height: 609px; margin-left: 0px;">
      
    <table class="tab" style="width:47% ; height: 438px; margin-left: 0px;">
    <tr>
    <td colspan="3">
     <h1 style="text-align:left ; background-color:Purple ; color:White ; font-family:@NSimSun ; " class="tdtag"><b>Diesease Selection</b></h1>
    </td>
    </tr>
        <tr>
            <td class="style8">
                Blood Pressure</td>
            <td class="style9">
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </td>
            <td class="style10">
                Range</td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Low</asp:ListItem>
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>High</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Diebetes</td>
            <td class="style5">
                <asp:CheckBox ID="CheckBox2" runat="server" />
            </td>
            <td class="style6">
                Range</td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Low</asp:ListItem>
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>High</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Thyroid</td>
            <td class="style5">
                <asp:CheckBox ID="CheckBox3" runat="server" />
            </td>
            <td class="style6">
                Range</td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>Low</asp:ListItem>
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>High</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="4">
            <asp:Button ID="Button1" runat="server" Height="28px" Text="Submit" CssClass="but"
                    Width="109px" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
  
    
    </div>
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style3
    {
        width: 1135px;
        height: 264px;
        margin-left: 56px;
        text-align: center;
    }
    .style4
    {
        text-align: center;
        width: 194px;
    }
    .style5
    {
        width: 7px;
        text-align: center;
    }
    .style6
    {
        width: 44px;
        text-align: center;
    }
    .style7
    {
        width: 94px;
    }
    .style8
    {
        text-align: center;
        height: 36px;
        width: 194px;
    }
    .style9
    {
        width: 7px;
        text-align: center;
        height: 36px;
    }
    .style10
    {
        width: 44px;
        text-align: center;
        height: 36px;
    }
    .style11
    {
        width: 94px;
        height: 36px;
    }
</style>
</asp:Content>

