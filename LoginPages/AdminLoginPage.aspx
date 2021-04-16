<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLoginPage.aspx.cs" Inherits="Default2" MasterPageFile="~/MasterPages/LoginPage.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    
    
    
        
        <table class="tab" style="background-color:Pink">
        <tr>
        <td colspan="3">
        <h1 style="text-align:left ; background-color:Purple ; color:White " class="tdtag">Login Page</h1>
        </td>
        </tr>
        <tr>
        <td colspan="3">
        <hr style="border-style: solid; width: 1062px; margin-left: 0px;" />
        </td>
        </tr>
            <tr>
                <td>
                    User Name</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Id not match" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td>
                    Password</td>
                <td class="style3" colspan="1">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="181px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Password not match" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                        Width="123px" CssClass="but" ForeColor="DeepPink" 
                        ToolTip="Click Me... If you want to Login" />
                </td>
               <td>
                   <asp:Button ID="Button2" runat="server" Text="Back"  Width="123px" 
                       CssClass="but" ForeColor="DeepPink" PostBackUrl="~/LoginPages/HomePage.aspx" 
                       ToolTip="Click Me If tou want to go Back to the Home Page" 
                       CausesValidation="False" />
               </td>
            </tr>
        </table>
    
    
   
    </asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
   
    <style type="text/css">
        .style3
        {
            width: 175px;
        }
    </style>
   
</asp:Content>


