<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserPage.master" AutoEventWireup="true" CodeFile="View_Dietitian.aspx.cs" Inherits="UserPages_View_Dietitian" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="tdtag"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Width="871px" DataKeyNames="DietitianID" 
        onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="DietitianID" HeaderText="DietitianID" 
                SortExpression="DietitianID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="DietitianFirstName" HeaderText="DietitianFirstName" 
                SortExpression="DietitianFirstName" />
            <asp:BoundField DataField="DietitianLastName" 
                HeaderText="DietitianLastName" SortExpression="DietitianLastName" />
            <asp:BoundField DataField="DietitianPhonenumber" HeaderText="DietitianPhonenumber" 
                SortExpression="DietitianPhonenumber" />
            <asp:BoundField DataField="DietitianEmailID" HeaderText="DietitianEmailID" 
                SortExpression="DietitianEmailID" />
            <asp:BoundField DataField="DietitianAddress" HeaderText="DietitianAddress" 
                SortExpression="DietitianAddress" />
            <asp:ButtonField Text="View Plans" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Project_ItemConnectionString %>" 
        
        SelectCommand="SELECT [DietitianID], [DietitianFirstName], [DietitianLastName], [DietitianPhonenumber], [DietitianEmailID], [DietitianAddress] FROM [DietitianMaster] ORDER BY [DietitianId]"></asp:SqlDataSource>
</asp:Content>

