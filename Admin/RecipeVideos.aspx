﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="RecipeVideos.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
        width: 124px;
            height: 46px;
        }
    .style8
    {
        width: 124px;
        height: 42px;
    }
    .style9
    {
        height: 42px;
    }
    .style10
    {
        width: 124px;
        height: 39px;
    }
    .style11
    {
        height: 39px;
    }
        .style13
        {
            height: 46px;
        }
        .style14
        {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <table style=" height:200px; width:55% ;background-color:#FFDAB9">
        <tr>
            <td colspan="2"  style="text-align:left ; background-color:Purple ; color:White ">
             <h1>Upload Diet Recipes</h1>
            </td>
          
        </tr>
        <tr>
           <td colspan="2" class="style14">
        <hr style="border-style: solid; width: 1167px; margin-left: 0px;" />
        </td>
        </tr>
       
        <tr>
         <td class="style8" style="font-family:Times New Roman CYR">
         File Description:
        </td>
        <td class="style9">
        <asp:TextBox ID="TextBox2" runat="server" 
                 TextMode="MultiLine"></asp:TextBox>
        </td>
        </tr>
       <tr>
       <td class="style10" style="font-family:Times New Roman CYR">
           Choose File: </td>
       <td class="style11" style="text-align: left">
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
       </tr>

    </table>

</asp:Content>

