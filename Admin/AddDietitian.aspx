<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="AddDietitian.aspx.cs" Inherits="Admin_AddDietitian" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 170px;
        }
        .style6
        {
        width: 976px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Text="Label" style="text-align: center"></asp:Label>
    <table class="style4" style="background-color:#CCFFFF">
     <tr>
        <td colspan="2" style="text-align:left ; background-color:#DC143C ; color:White ">
        <h1>Add Dietitian</h1>
        </td>
        </tr>
         <tr>
        <td colspan="2">
        <hr style="border-style: solid; width: 1167px; margin-left: 0px;" />
        </td>
        </tr>
        <tr>
            <td class="style5" style="color:#008000">
                First Name:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Please Enter the Name!!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" style="color:#008000">
                Last Name:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="Please Enter The Last Name!!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" style="color:#008000">
                Dietitian Username:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" style="color:#008000">
                Email-Id:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" 
                    ErrorMessage="Please  Enetr the Email Id" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" 
                    ErrorMessage="Plase Enter in correct Format" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" style="color:#008000">
                Contact Number:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    Display="Dynamic" ErrorMessage="Please enter the contact number..." 
                    ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" style="color:#008000">
                Qualification Degree:</td>
            <td class="style6">
                <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="Select The File.." />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    Display="Dynamic" ErrorMessage="Please Upload the file" ForeColor="Red" 
                    ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" style="color:#008000">
                Address Of Clinic:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    Display="Dynamic" ErrorMessage="Please Enter The Address!!" 
                    ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" style="color:#008000">
                Password:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="Please Enter Password!!" ForeColor="Red" 
                    ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Add Dietitian" CssClass="but" 
                onclick="Button1_Click" ForeColor="Yellow" />
       </td>
       <td style="text-align: left">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        </tr>
    </table>

</asp:Content>

