<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClicksPerSecond.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button Text="Click!" runat="server" OnClick="ClickCount"/>
            <asp:Label ID="lblClickRate" runat="server" />
        </div>
    </form>
</body>
</html>
