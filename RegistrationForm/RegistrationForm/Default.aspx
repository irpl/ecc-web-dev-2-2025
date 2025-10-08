<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RegistrationForm.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Name:"  />
            <asp:TextBox runat="server" placeholder="John Brown" ID="txtName"/>

            <br />
            <br />

            <asp:Label runat="server" Text="Password:"  />
            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"/>

            <br />
            <br />

            <asp:Label runat="server" Text="Confirm Password:"  />
            <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password"/>

            <br />
            <br />

            <asp:CheckBox ID="checkTerms" runat="server" Text="I agree to the terms"/>

            <br />
            <br />

            <asp:Button runat="server" Text="Register" OnClick="HandleRegistration"/>

            <br />
            <br />

            <asp:Label runat="server" ID="result"></asp:Label>
        </div>
    </form>
</body>
</html>
