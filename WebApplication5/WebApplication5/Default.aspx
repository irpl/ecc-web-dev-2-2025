<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h3>Table test</h3>

             <asp:Table ID="myTable" runat="server" GridLines="Both" 
                Font-Names="Verdana" 
                Font-Size="8pt" 
                CellPadding="15" 
                CellSpacing="0" >
                 <asp:TableRow>
                     <asp:TableCell Text="Cell 1"></asp:TableCell>
                     <asp:TableCell Text="Cell 2"></asp:TableCell>
                 </asp:TableRow>
             </asp:Table>

             <hr />
 
            <h3>AdRotator Example</h3>
 
            <asp:AdRotator id="AdRotator1" runat="server"
                 Target="_self"
                 AdvertisementFile="~/App_Data/Ads.xml"/>
        </div>
    </form>
</body>
</html>
