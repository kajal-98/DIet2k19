<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserPage.master" AutoEventWireup="true" CodeFile="ShowVideos.aspx.cs" Inherits="UserPages_ShowVideos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style6
        {
            background-color: #507CD1;
            font-size: xx-large;
            font-family: Arial Rounded MT Bold;
            font-weight: 700;
            color: #FFFFFF;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="tabuser">
    <tr>
     <td class="style6">
         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
    </tr>
        <tr>
            <td class="style6">
                <strong>Receipe Videos</strong>
            </td>
        </tr>
        <tr>
            <td>
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True"
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
                    DataSourceID="SqlDataSource1" GridLines="Both">
                    <EditItemTemplate>VideoName:
                        <asp:TextBox ID="VideoNameTextBox" runat="server" Text='<%# Bind("VideoName") %>' />
                        <br />
                        UploadBy:
                        <asp:TextBox ID="UploadByTextBox" runat="server" Text='<%# Bind("UploadBy") %>' />
                        <br />
                        UploadDateTime:
                        <asp:TextBox ID="UploadDateTimeTextBox" runat="server" 
                            Text='<%# Bind("UploadDateTime") %>' />
                        <br />
                        videoDescription:
                        <asp:TextBox ID="videoDescriptionTextBox" runat="server" 
                            Text='<%# Bind("videoDescription") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                            Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                            CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>VideoName:
                        <asp:TextBox ID="VideoNameTextBox" runat="server" 
                            Text='<%# Bind("VideoName") %>' />
                        <br />
                        UploadBy:
                        <asp:TextBox ID="UploadByTextBox" runat="server" 
                            Text='<%# Bind("UploadBy") %>' />
                        <br />
                        UploadDateTime:
                        <asp:TextBox ID="UploadDateTimeTextBox" runat="server" 
                            Text='<%# Bind("UploadDateTime") %>' />
                        <br />
                        videoDescription:
                        <asp:TextBox ID="videoDescriptionTextBox" runat="server" 
                            Text='<%# Bind("videoDescription") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                            Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                            CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                    <video width="320" height="240" controls="controls">
                           <source src="<%# "Recipe_Videos/" +Eval("VideoName") %>" type="video/mp4">
                            
                        </video>       
             <br />
                        VideoName:
                        <asp:Label ID="VideoNameLabel" runat="server" Text='<%# Bind("VideoName") %>' />
                        <br />
                        UploadBy:
                        <asp:Label ID="UploadByLabel" runat="server" Text='<%# Bind("UploadBy") %>' />
                        <br />
                        UploadDateTime:
                        <asp:Label ID="UploadDateTimeLabel" runat="server" 
                            Text='<%# Bind("UploadDateTime") %>' />
                        <br />
                        videoDescription:
                        <asp:Label ID="videoDescriptionLabel" runat="server" 
                            Text='<%# Bind("videoDescription") %>' />
                        <br />
                    </ItemTemplate>
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project_ItemConnectionString %>"
                    
                    
                    SelectCommand="SELECT [VideoName], [UploadBy], [UploadDateTime], [videoDescription] FROM [Video] ORDER BY [videoID]" 
                    onselecting="SqlDataSource1_Selecting">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

</asp:Content>

