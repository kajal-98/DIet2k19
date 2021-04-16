<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgot password.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPages/LoginPage.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tab" style="width:78%; height:290px" align="center">
        <tr>
        <td colspan="3" class="tdtag">
        <h1 style="text-align:left ; background-color:Purple ; color:White ; font-family:@NSimSun ; ">Forgot Password?</h1>
        </td>
        </tr>
        <tr>
        <td colspan="3">
        <hr style="border-style: solid" />
        </td>
        </tr>
            <tr>
                <td class="style3" style="font-family: Arial Calibri Courier ; font-size:large; font-style:normal; ">
                    Email-id</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please enter the ID" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" Display="Dynamic" 
                        ErrorMessage="Please enter in right format" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
          
            <tr>
                <td class="style5" style="font-family: Arial Calibri Courier ; font-size:large; font-style:normal; ">
                    User-id</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox3" runat="server" Width="154px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="plase enter email id" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Height="37px" 
                        style="text-align: center" Width="104px"></asp:Label>
                    </td>
                <td class="style10">
                    <asp:Button ID="Button1" runat="server" Text="Send mail" Width="137px" 
                        onclick="Button1_Click" CssClass="but" />
                </td>
                <td class="style10">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        PostBackUrl="~/LoginPages/UserLogin.aspx" Height="38px" Width="161px" 
                        Font-Size="Larger" style="text-align: center ; font-family:Courier New Baltic">sign up</asp:LinkButton>
                </td>
            </tr>
        </table>
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
  
</asp:Content>
