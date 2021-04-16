<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/LoginPage.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="LoginPages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
   
    
        <table class="tab" style="background-color:#AFFFAF">
        <tr align="center">
        <td colspan="3">
        <h1 style="text-align:center ; background-color:#DC143C ; color:White ; " class="tdtag">User Login Page</h1>
        </td>
        </tr>
        <tr>
        <td colspan="3" class="style12">
        <hr style="border-style: solid; width: 1057px; margin-left: 0px;" />
        </td>
        </tr>
            <tr>
                <td class="style14">
                    Login Id</td>
                <td class="style13">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Id not match" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    Password</td>
                <td class="style16">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="181px"></asp:TextBox>
                </td>
                <td class="style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Password not match" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                <td class="style18">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SignIn" 
                        Width="123px" CssClass="but" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        PostBackUrl="~/LoginPages/Forgot password.aspx">Forgot Password?</asp:LinkButton>
                </td>
               <td class="style18">
                    </td>
            </tr>
        </table>
    

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style12
        {
            height: 22px;
        }
        .style13
        {
            height: 21px;
            text-align: left;
        }
        .style14
        {
            width: 19%;
            height: 21px;
        }
        .style15
        {
            width: 19%;
            height: 25px;
        }
        .style16
        {
            height: 25px;
        }
        .style17
        {
            width: 19%;
            height: 5px;
        }
        .style18
        {
            height: 5px;
        }
        .style19
        {
            height: 2px;
            text-align: left;
        }
        </style>

</asp:Content>

