<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidatorTest.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Name: " runat="server"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" />
            <asp:RequiredFieldValidator Display="None" ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label Text="Password: " runat="server"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:Label Text="Confirm Password: " runat="server"></asp:Label>
            <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" />
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match!" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />

            <asp:Label Text="Age: " runat="server"></asp:Label>
            <asp:TextBox ID="txtAge" runat="server" />
            <asp:RangeValidator 
                ID="rvAge"
                runat="server"
                ControlToValidate="txtAge"
                MinimumValue="18"
                MaximumValue="65"
                Type="Integer"
                ErrorMessage="Age must be between 18 and 65!"
                ForeColor="Red">
            </asp:RangeValidator>

            <br />
            <br />
            
            <asp:Label Text="Email: " runat="server"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" />
            <asp:RegularExpressionValidator 
                ID="revEmail"
                runat="server"
                ControlToValidate="txtEmail"
                ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$"
                ErrorMessage="Enter a valid email address!"
                ForeColor="Red">
            </asp:RegularExpressionValidator>

            <br />
            <br />

            <asp:Label Text="First Name: " runat="server"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" />
            <asp:CustomValidator 
                ID="cvName"
                runat="server"
                ControlToValidate="txtFirstName"
                ErrorMessage="Name must start with a capital letter!"
                OnServerValidate="cvName_ServerValidate"
                ForeColor="Red">
            </asp:CustomValidator>

            <br />
            <br />

            <asp:ValidationSummary 
                ID="ValidationSummary1"
                runat="server"
                HeaderText="Please fix these errors:"
                ForeColor="Red"
                DisplayMode="BulletList">
            </asp:ValidationSummary>



            <br />
            <asp:Button runat="server" Text="Submit"/>
            


        </div>
    </form>
</body>
</html>
