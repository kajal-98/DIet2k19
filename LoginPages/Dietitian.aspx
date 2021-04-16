<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/LoginPage.master" AutoEventWireup="true" CodeFile="Dietitian.aspx.cs" Inherits="LoginPages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            height: 104px;
        }
        .style10
        {
            height: 38px;
        }
        .style12
        {
            height: 31px;
            width: 281px;
        }
        .style13
        {
            height: 31px;
        }
        .style14
        {
            height: 23px;
        }
        .style15
        {
            height: 23px;
            width: 281px;
        }
        .style16
        {
            height: 28px;
        }
        .style17
        {
            height: 28px;
            width: 281px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
    <div style="width: 1795px; height: 609px; margin-left: 0px; margin-right: 258px;">
    
        &nbsp;&nbsp;&nbsp;&nbsp;
    
        <table class="tab" style="width:63% ; height: 327px; margin-left: 0px;">
        <tr>
        <td colspan="3" class="style9">
        <h1 style="text-align:left ; background-color:Purple ; color:White " class="tdtag">Login Page</h1>
        </td>
        </tr>
        <tr>
        <td colspan="3" class="style10">
        <hr style="border-style: solid; width: 1123px; margin-left: 0px;" />
        </td>
        </tr>
            <tr>
                <td class="style14">
                    Email Id</td>
                <td class="style14">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Id not match" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    Password</td>
                <td class="style16">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="181px"></asp:TextBox>
                </td>
                <td class="style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Password not match" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    </td>
                <td class="style13">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                        Width="123px" CssClass="but" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        PostBackUrl="~/LoginPages/Forgot password.aspx">Forgot Password</asp:LinkButton>
                </td>
               <td class="style12">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>

