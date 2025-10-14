<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidationControls.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Name: " runat="server" /><br />
            <asp:TextBox ID="txtName" runat="server" />
            <asp:CustomValidator 
                Display="None"
                ID="cvName"
                runat="server"
                ControlToValidate="txtName"
                ErrorMessage="Name must start with a capital letter!"
                OnServerValidate="cvName_ServerValidate"
                ForeColor="Red">
            </asp:CustomValidator>
            <asp:RequiredFieldValidator  
	            ID="rfvName" 
	            runat="server" 
	            ControlToValidate="txtName" 
	            ErrorMessage="Name is required!" 
	            ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label Text="Password: " runat="server" /><br />
            <asp:TextBox ID="txtPassword" runat="server" />
            <asp:RequiredFieldValidator  
                ID="RequiredFieldValidator1" 
                runat="server" 
                ControlToValidate="txtPassword" 
                ErrorMessage="Password is required!" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label Text="Confirm Password: " runat="server" /><br />
            <asp:TextBox ID="txtConfirm" runat="server" />
            <asp:RequiredFieldValidator  
                ID="RequiredFieldValidator2" 
                runat="server" 
                ControlToValidate="txtConfirm" 
                ErrorMessage="Confirm Password is required!" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:CompareValidator 
                ID="cvPassword" 
                runat="server" 
                ControlToValidate="txtConfirm" 
                ControlToCompare="txtPassword" 
                ErrorMessage="Passwords do not match!" 
                ForeColor="Red">
            </asp:CompareValidator>

            <br />
            <br />

            <asp:Button Text="Submit" runat="server"/>
        </div>
    </form>
</body>
</html>
