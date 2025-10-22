<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication6.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Debug My Validation — Broken</title>
    <style>
        body { font-family: Segoe UI, Arial; margin: 24px; }
        .row { margin: 8px 0; }
        label { display:inline-block; width:140px; }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <h2>Debug My Validation (Broken)</h2>

    

    <div class="row">
        <label>Name:</label>
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator ID="rfvName" runat="server"
            ControlToValidate="txtName"
            ErrorMessage="Name is required!"
            ValidationGroup="reg"
            ForeColor="Red" />
    </div>

    <div class="row">
        <label>Email:</label>
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:RegularExpressionValidator ID="revEmail" runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$"
            ErrorMessage="Invalid email format!"
            ValidationGroup="reg"
            ForeColor="Red" />
    </div>

    <div class="row">
        <label>Age (18–65):</label>
        <asp:TextBox ID="txtAge" runat="server" />
        <asp:RangeValidator ID="rvAge" runat="server"
            ControlToValidate="txtAge"
            MinimumValue="18" MaximumValue="65"
            Type="String"
            ErrorMessage="Age must be between 18 and 65!"
            ValidationGroup="reg"
            ForeColor="Red" />
    </div>

    <div class="row">
        <label>Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
    </div>

    <div class="row">
        <label>Confirm Password:</label>
        <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" />
        <asp:CompareValidator ID="cvPassword" runat="server"
            ControlToValidate="txtPassword"
            ControlToCompare="txtConfirm"
            ErrorMessage="Passwords do not match!"
            ValidationGroup="reg"
            ForeColor="Red" />
    </div>

    <div class="row">
        <label>Country:</label>
        <asp:DropDownList ID="ddlCountry" runat="server">
            <asp:ListItem Text="Select..." Value="" />
            <asp:ListItem Text="Jamaica" Value="JM" />
            <asp:ListItem Text="Barbados" Value="BB" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCountry" runat="server"
            ControlToValidate="ddlCountry"
            ErrorMessage="Please choose a country!"
            ValidationGroup="reg"
            ForeColor="Red" />
    </div>

    <div class="row">
        <label>Username:</label>
        <asp:TextBox ID="txtUsername" runat="server" />
        <asp:CustomValidator ID="cvUser" runat="server"
            ControlToValidate="txtUsername"
            ErrorMessage="Username cannot be 'admin'."
            OnServerValidate="cvUser_ServerValidate"
            ValidationGroup="reg"
            ForeColor="Red" />
    </div>

    <div class="row">
        <asp:Button ID="btnSubmit" runat="server"
            Text="Submit"
            ValidationGroup="reg" 
            CausesValidation="true"/>
        <asp:Button ID="btnReset" runat="server" Text="Reset" CausesValidation="false" />
    </div>

    <asp:ValidationSummary 
        ValidationGroup="reg" 
        ID="ValidationSummary1" 
        runat="server"
        HeaderText="Please fix the following:" 
        ForeColor="Red" 
        DisplayMode="BulletList" />
</form>
</body>
</html>
