<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidationExercise.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel runat="server" ID="pnlNameEmail" BorderColor="#00FF00"  BorderWidth="2">
                <asp:Label runat="server" Text="Name: "></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="txtName"
                    ErrorMessage="Please enter a name!"
                    ForeColor="Red"
                    ></asp:RequiredFieldValidator>
                <br />
                <asp:CustomValidator
                    ID="cvName"
                    runat="server"
                    ControlToValidate="txtName"
                    ErrorMessage="Name must start with capital letter!"
                    ForeColor="Red"
                    OnServerValidate="CVName_Validate"
                    ></asp:CustomValidator>

                <br />

                <asp:Label runat="server" Text="Email: "></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Please enter an email address!"
                    ForeColor="Red"
                    ></asp:RequiredFieldValidator>
                <br />
            </asp:Panel>
            <asp:Button runat="server" Text="toggle panel" ID="btnTogglePanel1" OnClick="TogglePanel1"/>
            
            <asp:RegularExpressionValidator
                runat="server"
                ID="REEmailValidator"
                ControlToValidate="txtEmail"
                ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$"
                ErrorMessage="Please enter a valid email address!"
                ForeColor="Red"
                ></asp:RegularExpressionValidator>

            <br />
            <asp:Label runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Please enter password"
                ForeColor="Red"
                ></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator
                runat="server"
                ID="REPasswrdValidator"
                ControlToValidate="txtPassword"
                ValidationExpression="^(?=.*[A-Z])(?=.*[^a-zA-Z0-9]).{12,}$"
                ErrorMessage="Password must at least 12 character long, at least one upper and at least one symbol"
                ForeColor="Red"
                ></asp:RegularExpressionValidator>
            <br />
            <asp:Label runat="server" Text="Confirm Password: "></asp:Label>
            <asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server"
                ControlToValidate="txtConfirmPassword"
                ErrorMessage="Please re-enter password"
                ForeColor="Red"
                ></asp:RequiredFieldValidator>
            <asp:CompareValidator
                ID="CVPasswordValidator"
                runat="server"
                ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword"
                ErrorMessage="Passwords do not match!"
                ForeColor="Red"
                ></asp:CompareValidator>

            <br />
            <br />
            <asp:Label runat="server" Text="Select At least 2 courses"></asp:Label>
            <asp:CheckBoxList runat="server" ID="cblCourses">
                <asp:ListItem Text="Gender Studies"></asp:ListItem>
                <asp:ListItem Text="Reggae Studies"></asp:ListItem>
                <asp:ListItem Text="Maths for Computing"></asp:ListItem>
                <asp:ListItem Text="Bio Chemical Law"></asp:ListItem>
                <asp:ListItem Text="Web Development 9"></asp:ListItem>
            </asp:CheckBoxList>
            <asp:CustomValidator 
                runat="server"
                OnServerValidate="CourseSelectorCountValidator"
                ErrorMessage="Please choose at least 2 courses"
                ForeColor="Red"
                ></asp:CustomValidator>
            <br />
            <br />

            <asp:CheckBox runat="server" Text="Accept Terms" ID="cbAcceptTerms"/>
            <asp:CustomValidator 
                runat="server"
                ErrorMessage="You must agree to sell your soul!"
                ForeColor="Red"
                OnServerValidate="AcceptTermsValidator"
                ></asp:CustomValidator>

            <br />
            <br />
            <asp:Button runat="server" Text="Submit"/>

            <asp:Calendar runat="server" ID="calenderDate" OnSelectionChanged="DateChange"></asp:Calendar>
            <asp:Label runat="server" ID="selectedDate" ></asp:Label>
        </div>
    </form>
</body>
</html>
