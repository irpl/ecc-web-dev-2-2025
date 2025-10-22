<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QueryStringTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="First Name: "></asp:Label>
            <asp:TextBox runat="server" ID="txtFName"></asp:TextBox>

            <br />

            <asp:Label runat="server" Text="Last Name: "></asp:Label>
            <asp:TextBox runat="server" ID="txtLName"></asp:TextBox>

            <br />

            <asp:Button runat="server" Text="Greet Me!" OnClick="GreetUser"/>
        </div>
    </form>
</body>
</html>
