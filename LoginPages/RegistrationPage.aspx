<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/LoginPage.master" AutoEventWireup="true" CodeFile="RegistrationPage.aspx.cs" Inherits="LoginPages_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tab" align="center" bgcolor="#EFF3FB">
        <tr>
        <td colspan="3">
        <h1 style="text-align:left ; background-color:Purple ; color:White " class="tdtag"> Registration Page</h1>
        </td>
        </tr>
            <tr>
                <td class="style4">
 First Name:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="178px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" Display="Dynamic" 
                        ErrorMessage="please enter name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">Last Name:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="182px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" Display="Dynamic" 
                        ErrorMessage="please enter last name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">Age:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox3" runat="server" Height="29px" Width="182px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" Display="Dynamic" 
                        ErrorMessage="please enter age" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="please enter age between 18-60" 
                        MaximumValue="60" MinimumValue="19" Type="Integer" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">Email-id:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="180px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" Display="Dynamic" 
                        ErrorMessage="please enter email-id" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="please enter valid format" ControlToValidate="TextBox4" 
                        Display="Dynamic" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">Phone Number:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox5" runat="server" MaxLength="10" Height="26px" 
                        Width="178px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox5" Display="Dynamic" 
                        ErrorMessage="please enter phone number" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">Date Of Birth:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox11" runat="server" 
                        ontextchanged="TextBox11_TextChanged"></asp:TextBox>
                    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true" EnableScriptLocalization="true">
                    </asp:ScriptManager>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox11" />
                </td>
                
                <td class="style3">&nbsp;</td>
                <td class="style3">
                    
                </td>
            </tr>
            <tr>
                <td class="style4">Gender:</td>
                <td class="style5">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" Height="30px" 
                        Width="213px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="style3"></td>
            </tr>
            <tr>
                <td class="style4">Id:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox6" runat="server" Enabled="False" Height="29px" 
                        Width="188px"></asp:TextBox>
                </td>
                <td class="style3">
                    
                </td>
            </tr>
            <tr>
                <td class="style4">Password:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" MaxLength="10" 
                        Height="25px" Width="190px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator" 
                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Confirm Password:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Password" MaxLength="10" 
                        Height="28px" Width="188px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="please enter valid passwod" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox7" ControlToValidate="TextBox8" 
                        ErrorMessage="password not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Food Type:</td>
                <td class="style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="185px">
                        <asp:ListItem Value="Veg">Vegeterian</asp:ListItem>
                        <asp:ListItem Value="Non-Veg">Non-Vegeterian</asp:ListItem>
                        <asp:ListItem>Both</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="please select food type" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
            <td class="style4">
                BloodPressure</td>
            <td class="style5">
                <asp:CheckBox ID="CheckBox1" runat="server" oncheckedchanged="Button1_Click" 
                    ondatabinding="Button1_Click" />
            </td>
            <td class="style10">
                Range<asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True">
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
                <asp:CheckBox ID="CheckBox2" runat="server" ondatabinding="Button1_Click" />
            </td>
            <td class="style6">
                Range<asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem>Low</asp:ListItem>
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>High</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Thyroid</td>
            <td class="style5">
                <asp:CheckBox ID="CheckBox3" runat="server" CausesValidation="True" 
                    ondatabinding="Button1_Click" />
            </td>
            <td class="style6">
                Range<asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem>Low</asp:ListItem>
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>High</asp:ListItem>
                </asp:DropDownList>
            </td>
            
        </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    
                </td>
                <td>&nbsp</td>
                <td>&nbsp</td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Button ID="Button3" runat="server" CssClass="but" 
                        style="text-align: center; margin-left: 0px" Text="Back" Width="86px" 
                        PostBackUrl="~/LoginPages/HomePage.aspx" CausesValidation="False"/>
                </td>
                <td class="style5">

                    <asp:Button ID="Button1" runat="server" Text="Registered" Width="132px" CssClass="but"
                        onclick="Button1_Click" ForeColor="White" />
                </td>
                <td class="style3">

                    <asp:Button ID="Button4" runat="server" CssClass="but" Text="Reset" 
                        onclick="Button4_Click" CausesValidation="False" />
                </td>
            </tr>
        </table>

   
</asp:Content>

