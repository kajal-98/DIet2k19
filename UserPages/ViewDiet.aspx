<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserPage.master" AutoEventWireup="true" CodeFile="ViewDiet.aspx.cs" Inherits="UserPages_ViewDiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="FoodName" HeaderText="FoodName" 
                SortExpression="FoodName" />
            <asp:BoundField DataField="Calories" HeaderText="Calories" 
                SortExpression="Calories" />
            <asp:BoundField DataField="Meal" HeaderText="Meal" SortExpression="Meal" />
            <asp:BoundField DataField="FoodImage" HeaderText="FoodImage" 
                SortExpression="FoodImage" />
                  <asp:TemplateField>
      <ItemTemplate>
        <asp:Image ID="Image1" ImageUrl='<%#string.Format("../FoodImages/{0}",Eval("FoodImage")) %>' runat="server" Height="50px" Width="70px" />
      </ItemTemplate>
    </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Project_ItemConnectionString %>" 
        SelectCommand="SELECT [FoodName], [Calories], [Meal], [FoodImage] FROM [FoodMasterTemp] ORDER BY [Meal]">
    </asp:SqlDataSource>

</asp:Content>

