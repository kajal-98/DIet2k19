<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master"AutoEventWireup="true" CodeFile="ViewCharts.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 style="background-color:Purple ; font-family:@Yu Gothic UI" > Charts</h1>
<br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
 <table class="tab" style="background-color:#FFDAB9; height:150px;" align="center">
<tr>
<td>
    <img src="../Images/Food Chart.jpg"alt="food chart" align="middle" border="10" 
    style="width: 585px; height: 360px; margin-left: 132px" />
    <br />
    <br />
    <img src="../Images/pyramid3.jpg" alt="FoodPyramid" align="middle" 
        style="width: 620px; height: 429px; margin-left: 129px" />
        </td>
        </tr>
        </table>
<br />
</asp:Content>

