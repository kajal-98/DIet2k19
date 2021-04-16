<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Dietitian.master" AutoEventWireup="true" CodeFile="AddDietPlan.aspx.cs" Inherits="DietitianPages_AddDietPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            background-color: #507CD1;
            font-size: xx-large;
            font-family: Arial Rounded MT Bold;
            font-weight: 700;
            color: #FFFFFF;
            width: 117px;
        }
        .style7
        {
            width: 117px;
        }
        .style8
        {
            width: 89%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style=" height:200px; width:55% ;background-color:#FFDAB9">
    <tr>
    <td class="style4" colspan="2">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
    </tr>
        <tr>
            <td colspan="2"  style="text-align:left ; background-color:Purple ; color:White ">
             <h1>Upload Diet Plans</h1>
            </td>
          
        </tr>
        <tr>
           <td colspan="2" class="style14">
        <hr style="border-style: solid; width: 1167px; margin-left: 0px;" />
        </td>
        </tr>
        <tr>
            <td>
            DietitianId:
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please Enter Id" ControlToValidate="TextBox1" 
                    Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            Diet Title:
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Please Enter Title" ControlToValidate="TextBox3" 
                    Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
       
       
        <tr>
         <td class="style7" style="font-family:Times New Roman CYR">
         File Description:
        </td>
        <td class="style8">
        <asp:TextBox ID="TextBox2" runat="server" 
                 TextMode="MultiLine"></asp:TextBox>
        </td>
        </tr>
       <tr>
       <td class="style7" style="font-family:Times New Roman CYR">
           Choose File: </td>
       <td class="style8" style="text-align: left">
           <asp:FileUpload ID="FileUpload1" runat="server" />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               Display="Dynamic" ErrorMessage="Please select the file" ForeColor="Red" 
               ControlToValidate="FileUpload1">*</asp:RequiredFieldValidator>
       </td>
       </tr>
       <tr>
       <td colspan="2">
           <asp:Button ID="Button1" runat="server" Text="upload" CssClass="but" 
               onclick="Button1_Click" ForeColor="OrangeRed"/>
       </td>
       </tr>
       

    </table>

</asp:Content>

