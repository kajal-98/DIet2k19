<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span style="">UserID:
                <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                <br />
                DietitianID:
                <asp:Label ID="DietitianIDLabel" runat="server" 
                    Text='<%# Eval("DietitianID") %>' />
                <br />
                ReplyDate:
                <asp:Label ID="ReplyDateLabel" runat="server" Text='<%# Eval("ReplyDate") %>' />
                <br />
                ReplyMssage:
                <asp:Label ID="ReplyMssageLabel" runat="server" 
                    Text='<%# Eval("ReplyMssage") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">UserID:
                <asp:TextBox ID="UserIDTextBox" runat="server" Text='<%# Bind("UserID") %>' />
                <br />
                DietitianID:
                <asp:TextBox ID="DietitianIDTextBox" runat="server" 
                    Text='<%# Bind("DietitianID") %>' />
                <br />
                ReplyDate:
                <asp:TextBox ID="ReplyDateTextBox" runat="server" 
                    Text='<%# Bind("ReplyDate") %>' />
                <br />
                ReplyMssage:
                <asp:TextBox ID="ReplyMssageTextBox" runat="server" 
                    Text='<%# Bind("ReplyMssage") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">UserID:
                <asp:TextBox ID="UserIDTextBox" runat="server" Text='<%# Bind("UserID") %>' />
                <br />DietitianID:
                <asp:TextBox ID="DietitianIDTextBox" runat="server" 
                    Text='<%# Bind("DietitianID") %>' />
                <br />ReplyDate:
                <asp:TextBox ID="ReplyDateTextBox" runat="server" 
                    Text='<%# Bind("ReplyDate") %>' />
                <br />ReplyMssage:
                <asp:TextBox ID="ReplyMssageTextBox" runat="server" 
                    Text='<%# Bind("ReplyMssage") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">UserID:
                <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                <br />
                DietitianID:
                <asp:Label ID="DietitianIDLabel" runat="server" 
                    Text='<%# Eval("DietitianID") %>' />
                <br />
                ReplyDate:
                <asp:Label ID="ReplyDateLabel" runat="server" Text='<%# Eval("ReplyDate") %>' />
                <br />
                ReplyMssage:
                <asp:Label ID="ReplyMssageLabel" runat="server" 
                    Text='<%# Eval("ReplyMssage") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div ID="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">UserID:
                <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                <br />
                DietitianID:
                <asp:Label ID="DietitianIDLabel" runat="server" 
                    Text='<%# Eval("DietitianID") %>' />
                <br />
                ReplyDate:
                <asp:Label ID="ReplyDateLabel" runat="server" Text='<%# Eval("ReplyDate") %>' />
                <br />
                ReplyMssage:
                <asp:Label ID="ReplyMssageLabel" runat="server" 
                    Text='<%# Eval("ReplyMssage") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Project_ItemConnectionString %>" 
            SelectCommand="SELECT [UserID], [DietitianID], [ReplyDate], [ReplyMssage] FROM [CustomizedDietPlan] ORDER BY [CustomizeID]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
