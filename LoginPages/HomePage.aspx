<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/LoginPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="LoginPages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" class="style5" style="background-color: #EFF3FB" >
        <tr>
            <td colspan="4">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                <asp:Image ID="Image1" runat="server"  Height="282px" Width="1024px" 
                    BorderColor="#000099" BorderStyle="Solid" />
                </ContentTemplate>
                <Triggers>
                <asp:AsyncPostBackTrigger ControlId="Timer1" Eventname="Tick" />
                
                </Triggers>
            </asp:UpdatePanel>
             <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
                    </asp:Timer>
             </td>
            
        </tr>
        <tr>
            <td colspan="4">
              <hr style="border-color: #000099; border-style: solid" />
             </td>
            
        </tr>
        <tr>
            <td align="center" height="150" valign="top" width="400"  style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bolder">
                <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Registration" 
                    BorderStyle="Solid" ImageUrl="~/Images/Registration.jpg" Height="130px" 
                    Width="130px" onclick="ImageButton1_Click" 
                    ToolTip="CLick Here For Registration....." />
              <br/>
              REGISTRATION  
              </td>
            <td align="center" height="150" valign="top" width="400"  style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bolder">
                <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="User Login" 
                    BorderStyle="Solid" ImageUrl="~/Images/Customers.png" Height="130px" 
                    Width="130px" onclick="ImageButton2_Click" 
                    ToolTip="Click If You Are User" />
              <br/>
              USER LOGIN  
              </td>
            <td align="center" height="150" valign="top" width="400"  style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bolder">
                <asp:ImageButton ID="ImageButton3" runat="server" AlternateText="ADMIN LOGIN" 
                    BorderStyle="Solid" ImageUrl="~/Images/Admin.png" Height="130px" Width="130px" 
                    onclick="ImageButton3_Click" ToolTip="Click If You Are Admin..." />
                <br/>
                ADMIN LOGIN
             </td>
            <td align="center" height="150" valign="top" width="400"  style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bolder">
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    AlternateText="DIETITIAN LOGIN" BorderStyle="Solid" 
                    ImageUrl="~/Images/Dietitian.jpg" Height="130px" Width="130px" 
                    onclick="ImageButton4_Click" ToolTip="Click If You Are Dietitian" />
            <br/>
            DIETITIAN LOGIN
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
           
        </tr>
    </table>

</asp:Content>

