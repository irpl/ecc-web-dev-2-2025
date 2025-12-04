<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DBTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnTest" runat="server" 
                        Text="Test Database Connection" 
                        OnClick="btnTest_Click" />
            <br /><br />
            <asp:Label ID="lblResult" runat="server" Font-Size="Large"></asp:Label>
        </div>
    </form>
</body>
</html>
