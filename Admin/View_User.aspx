<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="View_User.aspx.cs" Inherits="Admin_View_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
    .style5
    {
        text-align: center;
            width: 486px;
        }
</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <table class="style4" style="background-color:#FFFFAF; height:150px;">
        <tr>
             <td colspan="2" style="text-align:left ; background-color:#FF3939 ; color:White ">
        <h1>View Users</h1>
        </td>
        </tr>
        <tr>
           <td colspan="2">
        <hr style="border-style: solid; width: 1167px; margin-left: 0px; border-color:#00C000" />
        </td>
        </tr>
        <tr>
            <td class="style5" style="color: #FF0066">

                Enter Name of User:&nbsp;&nbsp;

                <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="177px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Search" Height="30px" 
                    Width="76px" BackColor="#6969FF" BorderColor="MediumBlue" 
                    BorderStyle="Solid" BorderWidth="5px" ForeColor="Red" />

             </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="370px" 
                    AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" 
                            SortExpression="UserId" />
                        <asp:BoundField DataField="UserFirstName" HeaderText="UserFirstName" 
                            SortExpression="UserFirstName" />
                        <asp:BoundField DataField="UserLastName" HeaderText="UserLastName" 
                            SortExpression="UserLastName" />
                        <asp:BoundField DataField="UserAge" HeaderText="UserAge" 
                            SortExpression="UserAge" />
                        <asp:BoundField DataField="UserEmail_Id" HeaderText="UserEmail_Id" 
                            SortExpression="UserEmail_Id" />
                        <asp:BoundField DataField="UserPhone_Number" HeaderText="UserPhone_Number" 
                            SortExpression="UserPhone_Number" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Project_ItemConnectionString %>" 
                    SelectCommand="SELECT [UserId], [UserFirstName], [UserLastName], [UserAge], [UserEmail_Id], [UserPhone_Number] FROM [UserMaster] WHERE ([UserFirstName] LIKE '%' + @UserFirstName + '%') ORDER BY [Date]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="UserFirstName" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>

