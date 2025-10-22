<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AssessmentReview.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnlRegistration" runat="server" BorderWidth="2" BorderColor="Black">
                <asp:Label runat="server" Text="Local Tech Conference Registration."></asp:Label>
                <asp:Image ImageUrl="~/Images/logo.jpg" Height="100" runat="server" />

                <br />
                <asp:Label runat="server"  Text="Name"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>

                <br />
                <asp:Label runat="server"  Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>

                <br />
                <br />
                <asp:Calendar runat="server" ></asp:Calendar>

                <br />
                <br />
                <br />
                <br />
                <h2>Workshop Selection</h2>

                <asp:CheckBoxList runat="server" ID="cblWorkshop">
                    <asp:ListItem Value="1" Text="Workshop 1: ASP.NET Core Fundamentals"></asp:ListItem>
                    <asp:ListItem Value="2" Text="Workshop 2: Cloud Deployment (Azure)"></asp:ListItem>
                    <asp:ListItem Value="3" Text="Workshop 3: Advanced C# Techniques"></asp:ListItem>
                </asp:CheckBoxList>
                <asp:CustomValidator 
                    runat="server" 
                    ID="cvWorkshopSelection" 
                    ErrorMessage="Please select at least 2 workshops"
                    ForeColor="Red"
                    OnServerValidate="CVWorkshopSelector" ></asp:CustomValidator>
            </asp:Panel>

            <br />
            <br />
            <asp:Button runat="server" ID="btnSubmit" Text="Submit"/>
        </div>
    </form>
</body>
</html>
