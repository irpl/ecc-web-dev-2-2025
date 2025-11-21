<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DarkModeCookie.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <asp:Panel runat="server" ID="container">
                <h1>Dark Mode Example</h1>
                <asp:Label Text="The following page is in Light Mode" runat="server" />

                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam massa erat, elementum sed nibh sed, dictum tristique enim. Aenean sit amet mollis dui, vitae ullamcorper sapien. Sed est magna, consequat quis augue efficitur, ultricies porta lacus. Mauris posuere at ligula at scelerisque. Nunc non posuere ipsum. Vestibulum feugiat at mi id suscipit. In vitae odio id orci consequat sollicitudin. Etiam vitae magna a nisl euismod aliquam. Nunc quam velit, mollis vitae ex et, lobortis elementum odio. Nam eu fringilla sem. Vestibulum urna tellus, semper a dui sed, tempor finibus ante. Cras blandit luctus nisi sit amet consectetur. Nunc convallis, augue ut hendrerit cursus, nisl turpis facilisis urna, a vulputate purus tellus a dolor.
                 </p>
                 <p>
                    Praesent tincidunt, lacus et dapibus tristique, neque lorem tempor neque, ac placerat magna nisi a velit. Aenean vel lorem sit amet diam mattis suscipit. Nulla dignissim nibh enim, vel molestie ante bibendum a. Praesent ut suscipit sapien, a venenatis velit. Curabitur aliquam et magna quis fermentum. Duis ut dolor in sapien molestie ultricies a vel eros. Suspendisse non tellus pharetra odio condimentum iaculis ac sed lacus. Pellentesque sodales nulla ac leo facilisis, non ornare purus fringilla. Vestibulum et ligula non lorem commodo imperdiet. Integer mollis risus nec nisi rutrum eleifend. Cras ac nisi in tortor eleifend vestibulum nec vitae magna. Donec fringilla rhoncus sapien quis maximus. Morbi in elementum nisi. Suspendisse volutpat nisi nisi. 
                </p>

                <asp:CheckBox AutoPostBack="true" ID="modeToggle" Text="Toggle Dark Mode" runat="server"
                    OnCheckedChanged="ToggleDarkMode"/>
        
            </asp:Panel>
            </div>
    </form>
</body>
</html>
