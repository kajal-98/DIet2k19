<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserPage.master" AutoEventWireup="true" CodeFile="DietitianDiet.aspx.cs" Inherits="UserPages_DietitianDiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" CssClass="tdtag">WELCOME</asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Width="516px" CellPadding="4" 
        ForeColor="#333333" GridLines="None" Height="163px" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="UserID" 
                SortExpression="UserID" />
            <asp:BoundField DataField="DietitianID" HeaderText="DietitianID" 
                SortExpression="DietitianID" />
            <asp:BoundField DataField="ReplyDate" HeaderText="ReplyDate" 
                SortExpression="ReplyDate" />
            <asp:BoundField DataField="ReplyMssage" HeaderText="ReplyMssage" 
                SortExpression="ReplyMssage" />
            <asp:BoundField DataField="Responsedate" HeaderText="Responsedate" 
                SortExpression="Responsedate" />
                 <asp:BoundField DataField="Filename" HeaderText="Filename" 
                SortExpression="Filename" />
                <asp:TemplateField HeaderText="Download">
        <ItemTemplate>
     <a href='<%# string.Concat("../DietPlanFile/",Eval("Filename")) %>' target="_blank">Download</a>
  </ItemTemplate>
</asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Project_ItemConnectionString %>" 
        
        
        
        SelectCommand="SELECT [UserID], [DietitianID], [ReplyDate], [ReplyMssage], [Responsedate], [Filename] FROM [CustomizedDietPlan] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" 
                SessionField="UserId" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

