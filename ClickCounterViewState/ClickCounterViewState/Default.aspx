<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClickCounterViewState.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button Text="Click me!" runat="server" OnClick="CountClick"/>
            <asp:Label ID="lblCount" Text="0" runat="server" />
        </div>
    </form>
</body>
</html>
