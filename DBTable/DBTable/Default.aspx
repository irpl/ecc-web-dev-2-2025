<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DBTable.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnlStudents" runat="server"></asp:Panel>
<asp:Button ID="btnLoad" runat="server" Text="Load Students" OnClick="btnLoad_Click" />
        </div>
    </form>
</body>
</html>
