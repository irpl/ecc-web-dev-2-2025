<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ColorPanelGreeter.Default" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Name: "></asp:Label>
            <asp:TextBox runat="server" ID="txtName"></asp:TextBox>

            <br />
            <br />

            <asp:Label runat="server" Text="Favourite Color: "></asp:Label>
            <asp:DropDownList runat="server" ID="ddlColor">
                <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                <asp:ListItem Value="Chartreuse" Text="Chartreuse"></asp:ListItem>
                <asp:ListItem Value="Teal" Text="Teal"></asp:ListItem>
                <asp:ListItem Value="MidnightBlue" Text="Midnight Blue"></asp:ListItem>
                <asp:ListItem Value="HotPink" Text="Hot Pink"></asp:ListItem>
            </asp:DropDownList>

            <br />
            <br />
            <asp:Label runat="server" Text="Enter a number from 1-10: "></asp:Label>
            <asp:TextBox runat="server" ID="numCount" TextMode="Number"></asp:TextBox>
            <br />
            <br />

            <asp:Label runat="server" Text="Favourite Emoji: "></asp:Label>
            <asp:DropDownList runat="server" ID="ddlEmoji">
                <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                <asp:ListItem Value="😇" Text="😇"></asp:ListItem>
                <asp:ListItem Value="😒" Text="😒"></asp:ListItem>
                <asp:ListItem Value="🥳" Text="🥳"></asp:ListItem>
                <asp:ListItem Value="😌" Text="😌"></asp:ListItem>
                <asp:ListItem Value="🤭" Text="🤭"></asp:ListItem>
                <asp:ListItem Value="🚙" Text="🚙"></asp:ListItem>
                <asp:ListItem Value="🔫" Text="🔫"></asp:ListItem>
                <asp:ListItem Value="👩" Text="👩"></asp:ListItem>
            </asp:DropDownList>
            
            <br />
            <br /> 

            <asp:Label runat="server" Text="Text Size: "></asp:Label>
            <asp:DropDownList runat="server" ID="ddlSize">
                <asp:ListItem Value="" Text="Select..."></asp:ListItem>
                <asp:ListItem Value="Small" Text="Small"></asp:ListItem>
                <asp:ListItem Value="Medium" Text="Medium"></asp:ListItem>
                <asp:ListItem Value="Large" Text="Large"></asp:ListItem>
            </asp:DropDownList>

            <br />
            <br />
            <asp:Button runat="server" Text="Show Greeting" OnClick="HandleSubmit"/>
        </div>
    </form>
</body>
</html>
