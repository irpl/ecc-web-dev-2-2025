<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TableTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Table test</h1>

            <asp:Table ID="testTable" runat="server" GridLines="Both">
                <asp:TableRow>
                    <asp:TableCell>First Name</asp:TableCell>
                    <asp:TableCell>Last Name</asp:TableCell>
                    <asp:TableCell>Address</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>Phillip</asp:TableCell>
                    <asp:TableCell>Logan</asp:TableCell>
                    <asp:TableCell>3, 137 Mountain View Avenue</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>Alice</asp:TableCell>
                    <asp:TableCell>Jean</asp:TableCell>
                    <asp:TableCell>2 Somewhere Else Place</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
