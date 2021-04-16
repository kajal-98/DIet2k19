<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/UserPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
 <table class="tabuser">
 <tr>
 <td class="style6">
 WELCOME 
  <asp:Label ID="Label1" runat="server" Text="WELCOME"></asp:Label>
 </tr>
 <tr>
 <td class="style6">
  
  <asp:Image ID="Image1" runat="server" 
        ImageUrl="~/Images/Weight Loss Program from Health Total - Google Chrome 3_26_2019 8_44_46 PM.png" 
        Height="310px" Width="965px" /> </tr>
<tr>
            <td>
                <strong style="font-style: normal; font-weight: bold; font-size: large; font-family: Verdana; color: #008000; background-color: #FFFFFF;">Exercise Videos</strong>
            </td>
        </tr>
        <tr>
            <td>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="VID" 
        DataSourceID="SqlDataSource1">
        
        
        
      
        
        <EditItemTemplate>
            <span style="">VID:
            <asp:Label ID="VIDLabel1" runat="server" Text='<%# Eval("VID") %>' />
            <br />
            Vname:
            <asp:TextBox ID="VnameTextBox" runat="server" Text='<%# Bind("Vname") %>' />
            <br />
            Discription:
            <asp:TextBox ID="DiscriptionTextBox" runat="server" 
                Text='<%# Bind("Discription") %>' />
            <br />
            UploadeBy:
            <asp:TextBox ID="UploadeByTextBox" runat="server" 
                Text='<%# Bind("UploadeBy") %>' />
            <br />
            UploadDateTime:
            <asp:TextBox ID="UploadDateTimeTextBox" runat="server" 
                Text='<%# Bind("UploadDateTime") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Cancel" />
            <br />
            <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Vname:
            <asp:TextBox ID="VnameTextBox" runat="server" Text='<%# Bind("Vname") %>' />
            <br />
            Discription:
            <asp:TextBox ID="DiscriptionTextBox" runat="server" 
                Text='<%# Bind("Discription") %>' />
            <br />
            UploadeBy:
            <asp:TextBox ID="UploadeByTextBox" runat="server" 
                Text='<%# Bind("UploadeBy") %>' />
            <br />
            UploadDateTime:
            <asp:TextBox ID="UploadDateTimeTextBox" runat="server" 
                Text='<%# Bind("UploadDateTime") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Clear" />
            <br />
            <br />
            </span>
        </InsertItemTemplate>
      
        
      
        
        <ItemTemplate>
            <span style="">VID:
            <asp:Label ID="VIDLabel" runat="server" Text='<%# Eval("VID") %>' />
            <br />
            Vname:
            <asp:Label ID="VnameLabel" runat="server" Text='<%# Eval("Vname") %>' />
            <br />
            Discription:
            <asp:Label ID="DiscriptionLabel" runat="server" 
                Text='<%# Eval("Discription") %>' />
            <br />
            UploadeBy:
            <asp:Label ID="UploadeByLabel" runat="server" Text='<%# Eval("UploadeBy") %>' />
            <br />
            UploadDateTime:
            <asp:Label ID="UploadDateTimeLabel" runat="server" 
                Text='<%# Eval("UploadDateTime") %>' />
            <br />
            <br />
             
             <video width="320" height="240" controls="controls">
                           <source src="<%# "Exercise_Videos/" +Eval("Vname") %>" type="video/mp4">
                            
                        </video>       
             <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">VID:
            <asp:Label ID="VIDLabel" runat="server" Text='<%# Eval("VID") %>' />
            <br />
            Vname:
            <asp:Label ID="VnameLabel" runat="server" Text='<%# Eval("Vname") %>' />
            <br />
            Discription:
            <asp:Label ID="DiscriptionLabel" runat="server" 
                Text='<%# Eval("Discription") %>' />
            <br />
            UploadeBy:
            <asp:Label ID="UploadeByLabel" runat="server" Text='<%# Eval("UploadeBy") %>' />
            <br />
            UploadDateTime:
            <asp:Label ID="UploadDateTimeLabel" runat="server" 
                Text='<%# Eval("UploadDateTime") %>' />
            <br />
            <br />
           <video width="320" height="240" controls="controls">
                           <source src="<%# "Exercise_Videos/" +Eval("Vname") %>" type="video/mp4">
                            
                        </video>
                        <br />
                        <br />
            </span>
        </SelectedItemTemplate>
       
      
        
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Project_ItemConnectionString %>" 
        SelectCommand="SELECT [VID], [Vname], [Discription], [UploadeBy], [UploadDateTime] FROM [Exercise_Videos]">
    </asp:SqlDataSource>
     </td>
        </tr>
    </table>
</asp:Content>

