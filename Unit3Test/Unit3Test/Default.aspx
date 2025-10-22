<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Unit3Test.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblCount" runat="server" />
            <asp:Button ID="btnClick" runat="server" Text="Click Me" OnClick="btnClick_Click" />
            <hr />

            <asp:TextBox ID="txtName" runat="server" />
            <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />


        </div>
    </form>
</body>
</html>
