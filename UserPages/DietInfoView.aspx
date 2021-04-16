<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserPage.master" AutoEventWireup="true" CodeFile="DietInfoView.aspx.cs" Inherits="UserPages_DietInfoView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="tdtag"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="DietPlanId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="DietPlanId" HeaderText="DietPlanId" 
                InsertVisible="False" ReadOnly="True" SortExpression="DietPlanId" />
            <asp:BoundField DataField="DietitianId" HeaderText="DietitianId" 
                SortExpression="DietitianId" />
            <asp:BoundField DataField="DietTitle" HeaderText="DietTitle" 
                SortExpression="DietTitle" />
            <asp:BoundField DataField="DietDescription" HeaderText="DietDescription" 
                SortExpression="DietDescription" />
         <asp:TemplateField HeaderText="Download">
        <ItemTemplate>
     <a href='<%# string.Concat("../DietPlanFile/",Eval("DietFile")) %>' target="_blank">Download</a>
  </ItemTemplate>
</asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Project_ItemConnectionString %>" 
        SelectCommand="SELECT * FROM [Diet_Plan_Dietitian] WHERE ([DietitianId] = @DietitianId)">
        <SelectParameters>
            <asp:SessionParameter Name="DietitianId" SessionField="Selecteddid" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Customized Diet Plan" CssClass="BMI" 
        onclick="Button1_Click" style="text-align: right"  />
</asp:Content>

