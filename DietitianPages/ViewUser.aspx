 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Dietitian.master" AutoEventWireup="true" CodeFile="ViewUser.aspx.cs" Inherits="DietitianPages_ViewRequests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="tdtag">WELCOME </asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" DataKeyNames="CustomizeID" 
        onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="CustomizeID" HeaderText="CustomizeID" 
                SortExpression="CustomizeID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" 
                SortExpression="UserID" />
            <asp:BoundField DataField="DietitianID" HeaderText="DietitianID" 
                SortExpression="DietitianID" />
            <asp:BoundField DataField="ReplyDate" HeaderText="ReplyDate" 
                SortExpression="ReplyDate" />
            <asp:BoundField DataField="ReplyMssage" HeaderText="ReplyMssage" 
                SortExpression="ReplyMssage" />
            <asp:ButtonField Text="Create Plan" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Project_ItemConnectionString %>" 
        
    
        SelectCommand="SELECT [CustomizeID], [UserID], [DietitianID], [ReplyDate], [ReplyMssage] FROM [CustomizedDietPlan] WHERE ([DietitianID] = @DietitianID)">
        <SelectParameters>
            <asp:SessionParameter Name="DietitianID" SessionField="DietitianId" 
                Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

