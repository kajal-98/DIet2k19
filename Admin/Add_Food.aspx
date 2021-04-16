<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="Add_Food.aspx.cs" Inherits="Admin_Add_Food" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label" style="text-align: center ; position:relative"></asp:Label>
    <table style="background-color:#FFDAB9" align="center">

        <tr>
            
             <td colspan="2"  style="text-align:left ; background-color:Purple ; color:White; font-family:Calibri">
             <h1>Add Food Items</h1>
            </td>
            
           
        </tr>
        <tr>
        
            <td colspan="2" class="style14">
        <hr style="border-style: solid; width: 1167px; margin-left: 0px; border-color:#008000" />
        </td>
        </tr>
        <tr>
        
            <td>
                Enter FoodName:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Display="Dynamic" 
                    ErrorMessage="Please Enter food name" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr>
        
            <td>
                Category ID:</td>
            <td style="text-align: right">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" style="text-align: left" Height="65px" 
                    CellSpacing="5" RepeatColumns="3">
                    <asp:ListItem Value="1">Fruits</asp:ListItem>
                    <asp:ListItem Value="2">Vegetables</asp:ListItem>
                    <asp:ListItem Value="3">Sprouts</asp:ListItem>
                    <asp:ListItem Value="4">Meat,Eggs,Fish</asp:ListItem>
                    <asp:ListItem Value="5">nuts,Seeds</asp:ListItem>
                    <asp:ListItem Value="6">Soups,juices</asp:ListItem>
                    <asp:ListItem Value="7">milk,Yougurt</asp:ListItem>
                    <asp:ListItem Value="8">Grains,wholegrains</asp:ListItem>
                    <asp:ListItem Value="9">Legumes</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="RadioButtonList1" Display="Dynamic" 
                    ErrorMessage="Please choose category" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
        
            <td>
                Calories:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" Display="Dynamic" 
                    ErrorMessage="please enter calories" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr>
        
            <td>
                Fats:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="Please enter fats for given food" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
        
            <td>
                Carbohydrates:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" 
                    ErrorMessage="Please enter carbs" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr>
            <td>
                Proteins:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" 
                    ErrorMessage="Please enter proteins" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
        
            <td>
                Allow For Diebetes:</td>
            <td style="text-align: left">
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>allowed</asp:ListItem>
                    <asp:ListItem>not allowed</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="RadioButtonList3" Display="Dynamic" 
                    ErrorMessage="Please Choose the option" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
        
            <td>
                Allowe For Blood Pressure:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList4" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>allowed</asp:ListItem>
                    <asp:ListItem>not allowed</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="RadioButtonList4" Display="Dynamic" 
                    ErrorMessage="please choose " ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr>
        
            <td>
                Allow For Thyroid:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList5" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>allowed</asp:ListItem>
                    <asp:ListItem>not allowed</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="RadioButtonList5" Display="Dynamic" 
                    ErrorMessage="Please choose the option" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
        
         <td>
             Food Image:</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="select file" 
                ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        
         <td>
             Meal For:</td>
        <td>
            <asp:RadioButtonList ID="RadioButtonList6" runat="server" 
                RepeatDirection="Horizontal">
                <asp:ListItem>Breakfast</asp:ListItem>
                <asp:ListItem>Lunch</asp:ListItem>
                <asp:ListItem>Snacks</asp:ListItem>
                <asp:ListItem>Dinner</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="RadioButtonList6" Display="Dynamic" 
                ErrorMessage="Please choose the option" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
        </tr>
        
        <tr>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="but" 
                onclick="Button1_Click" />
            
        </td>
        </tr>
    </table>
</asp:Content>

