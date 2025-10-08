<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LoginPage.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Username"></asp:Label>
            <br />
            <asp:TextBox runat="server" ID="usernameTextbox"></asp:TextBox>
            <br />
            <br />

            <asp:Label runat="server" Text="Password"></asp:Label>
            <br />

            <asp:TextBox runat="server" TextMode="Password" ID="passwordTextBox"></asp:TextBox>

            <br />
            <br />

            <asp:Button runat="server" Text="Submit" OnClick="Login"/>

            <br /><br />
            <asp:Label runat="server" ID="messageLabel"></asp:Label>

            <hr />

            <h1>Button Clicker</h1>
            <asp:Label runat="server" ID="clickMessage"></asp:Label>
            <br />
            <asp:Button runat="server" Text="Click Me" OnClick="ClickUpdate"/>

        </div>
    </form>
</body>
</html>
