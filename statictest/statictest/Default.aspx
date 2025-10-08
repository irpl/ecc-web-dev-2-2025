<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Default.aspx.cs" Inherits="statictest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="Label1" runat="server" Text="Hello, phillip!"></asp:Label>
            
            <asp:Button ID="Button1" Text="Click Me!" runat="server" OnClick="Button1_Click"/>

        </div>
    </form>
</body>
</html>
