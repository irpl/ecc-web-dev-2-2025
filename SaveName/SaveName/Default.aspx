<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SaveName.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnl" runat="server" BorderWidth="2" EnableViewState="false"      >

            <asp:Label Text="Color: " runat="server" />
            <asp:TextBox EnableViewState="false" runat="server" ID="txtName"  PlaceHolder="Enter you name"/>
            <br />
            <asp:Button runat="server" Text="Save Name" OnClick="SaveName" />

            <br />
            <asp:Button runat="server" Text="Count" OnClick="btnClick_Click"/>

            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
