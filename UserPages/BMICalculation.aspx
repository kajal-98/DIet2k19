<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BMICalculation.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPages/UserPage.master"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <table class="tabuser" style="background-color:#E6E6FA;">
    <tr>
    <td class="style8" colspan="2">
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
   </td>
    </tr>
        <tr>
            <td colspan="2" 
                class="style9" style="color: #FFFFFF; text-align: left; background-color: #008000; height: 62px; margin-bottom: 2px;">
                <h1>
                
                    Body Mass Index(BMI) </h1>
                  <strong style="color: #000000; text-align: left; background-color: #008000; height: 12px; margin-bottom: 2px;">Measuring a body weight</strong>  
               
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style6">
                <hr style="border-style: solid; width: 902px; margin-left: 0px;" />
            </td>
        </tr>
        <tr>
            <td style="color: #000000; " class="style6">
                Weight:(125 lbs)</td>
            <td class="style10">
                <asp:TextBox ID="TextBox1" runat="server" Width="72px" 
                    ontextchanged="TextBox1_TextChanged1" AutoPostBack="True" ></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="please enter weight" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="color: #000000; " class="style6">
                Height:
                (5&#39; 6&quot;)</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox2" runat="server" Width="84px" 
                    style="margin-right: 0px" AutoPostBack="True"></asp:TextBox>
                &nbsp;Feets&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Width="79px" 
                    ontextchanged="TextBox3_TextChanged" AutoPostBack="True"></asp:TextBox>
                inches<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="please enter height in m" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" 
                
                style="border-collapse: separate; list-style-type: circle; color: #000000;" 
                class="style12">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate BMI"
                    Width="139px" CssClass="BMI" Height="32px" />
                
            &nbsp;
                
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style7">
                <asp:Label ID="Label1" runat="server" BackColor="#FFCC00" ForeColor="White"></asp:Label>
            &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="style11">
                <asp:Label ID="Label2" runat="server" BackColor="#FFCC00" ForeColor="White"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Get Diet" 
                    onclick="Button2_Click" />
            </td>
        </tr>
    </table>
  
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
   
   
   
   
   
   
    <style type="text/css">
        .style6
        {
            text-align: left;
        }
        .style7
        {
            width: 139px;
            text-align: left;
            height: 30px;
        }
        .style8
        {
            background-color: #507CD1;
            font-size: xx-large;
            font-family: Arial Rounded MT Bold;
            font-weight: 700;
            color: #FFFFFF;
            text-align: left;
        }
        .style10
        {
            text-align: left;
        }
        .style11
        {
            text-align: left;
            height: 32px;
        }
        .style12
        {
            text-align: left;
            table-layout: auto;
            height: 39px;
        }
    </style>
   
   
   
   
   
   
</asp:Content>

