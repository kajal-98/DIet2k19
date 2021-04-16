<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/Images/Food Chart.jpg">
            <asp:RectangleHotSpot Bottom="496" Left="367" Right="129" Top="29" AlternateText="click for fruit details" NavigateUrl="~/Images/canada-food-diet-pyramid.jpg" />
        
        </asp:ImageMap>
    </div>
    </form>
</body>
</html>
