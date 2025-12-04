<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DBTest.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>User Registration</title>
    <style>
        body { font-family: Arial; }
        .form-group { margin-bottom: 10px; }
        .error { color: red; }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <h2>User Registration</h2>

        <div class="form-group">
            Username:
            <asp:TextBox ID="txtUsername" runat="server" />
            
        </div>

        <div class="form-group">
            Password:
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            
        </div>

        <div class="form-group">
            Email:
            <asp:TextBox ID="txtEmail" runat="server" />
            
            
        </div>

        <div class="form-group">
            Phone:
            <asp:TextBox ID="txtPhone" runat="server" />
            
        </div>

        <div class="form-group">
            <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click" />
        </div>

        <asp:Label ID="lblMessage" runat="server" />

    </form>
</body>
</html>
