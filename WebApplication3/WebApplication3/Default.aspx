<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Fruit Picker</h1>
            <asp:Label runat="server" Text="Please choose a fruit: "></asp:Label>
            
            <asp:RadioButtonList runat="server" ID="fruitRadio" 
                AutoPostBack="true" OnSelectedIndexChanged="ChooseImage">
                <asp:ListItem Text="Apple" Value="apple"></asp:ListItem>
                <asp:ListItem Text="Jimbilin" Value="jimbilin"></asp:ListItem>
                <asp:ListItem Text="Pranganat" Value="pranganat"></asp:ListItem>
            </asp:RadioButtonList>

            <asp:Image ID="imageDisplay" runat="server" />
            
            <hr />
            <h1>Order Pizza</h1>
            <asp:Label runat="server" Text="Please choose the desired pizza size:"></asp:Label>
            <asp:RadioButtonList ID="sizeRadio" runat="server">
                <asp:ListItem Text="Large" Value="lg"></asp:ListItem>
                <asp:ListItem Text="Medium" Value="md"></asp:ListItem>
                <asp:ListItem Text="Small" Value="sm"></asp:ListItem>
            </asp:RadioButtonList>
            <br />

            <asp:Label runat="server" Text="Please choose the desired crust style:"></asp:Label>
            <asp:RadioButtonList ID="crustRadio" runat="server">
                <asp:ListItem Text="Curry Goat Stuffed Crust" Value="cg"></asp:ListItem>
                <asp:ListItem Text="Tastee Cheese Stuffed Crust" Value="tc"></asp:ListItem>
                <asp:ListItem Text="Festival Crust" Value="fc"></asp:ListItem>
            </asp:RadioButtonList>
            <br />

            <asp:Label runat="server" Text="Please choose the desired pizza toppings:"></asp:Label>
            <asp:CheckBoxList ID="toppingCheckbox" runat="server">
                <asp:ListItem Text="Pepperoni" Value="pepperoni"></asp:ListItem>
                <asp:ListItem Text="Pinapple" Value="pineapple"></asp:ListItem>
                <asp:ListItem Text="Jerk Chicken" Value="jerk-chicken"></asp:ListItem>
                <asp:ListItem Text="Sausage" Value="sausage"></asp:ListItem>
                <asp:ListItem Text="Scotch Bonnet Pepper" Value="scotch-pepper"></asp:ListItem>
                <asp:ListItem Text="Curry Gravy" Value="curry-gravy"></asp:ListItem>

            </asp:CheckBoxList>
            <br />

            <asp:Button runat="server" Text="Order" OnClick="OrderPizza"/>
            <br />
            <asp:Label ID="orderLabel" runat="server"></asp:Label>
            <hr />

            <h1>Color picker</h1>
            <asp:RadioButtonList ID="colorSelection" runat="server">
                <asp:ListItem Text="Red" Value="Yellow"></asp:ListItem>
                <asp:ListItem Text="Blue" Value="Blue"></asp:ListItem>
                <asp:ListItem Text="Green" Value="Green"></asp:ListItem>
            </asp:RadioButtonList>

            <asp:Label ID="colorLabel" runat="server" Text="Choose a colour!"></asp:Label>
            <br />
            <asp:Button runat="server" Text="Choose Color" OnClick="ChangeColour"/>

            <hr />
            <h1>New Mini Calculator</h1>
            
            <asp:Label Text="Enter a number" runat="server"></asp:Label>
            <asp:TextBox TextMode="Number" ID="newDigit1" runat="server"></asp:TextBox>

            <br />
            <br />

            <asp:Label Text="Enter another number" runat="server"></asp:Label>
            <asp:TextBox TextMode="Number" ID="newDigit2" runat="server"></asp:TextBox>

            <br />
            <br />

            <asp:DropDownList ID="ddlOperator" runat="server">
                <asp:ListItem Text="+" Value="add"></asp:ListItem>
                <asp:ListItem Text="-" Value="sub"></asp:ListItem>
                <asp:ListItem Text="*" Value="mul"></asp:ListItem>
                <asp:ListItem Text="/" Value="div"></asp:ListItem>
            </asp:DropDownList>

            <br />
            <asp:Button Text="Calculate" runat="server" OnClick="Calculate"/>
            <br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
            <hr />

            <h1>PostBack Test</h1>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <asp:Button Text="Click me" runat="server"/>
            <hr />

            <h1>C to F converter</h1>
            <asp:Label Text="Enter a temperature" runat="server"></asp:Label>
            <asp:TextBox ID="celciusTxt" TextMode="Number" runat="server"></asp:TextBox>
            <br />
            <asp:Button runat="server" Text="Convert to F" OnClick="ConvertToF"/>
            <br />
            <asp:Label ID="fTemp" runat="server"></asp:Label>
            <hr />

            <h1>Word counter</h1>
            <asp:Label Text="Enter some text" runat="server"></asp:Label>
            <br />
            <asp:TextBox ID="wordCountInput" runat="server"></asp:TextBox>
            <br />
            <asp:Button runat="server" Text="Count Words" OnClick="CountWords"/>
            <br />
            <asp:Label ID="wordCountLabel" runat="server"></asp:Label>

            <br />
            <hr />


            <h1>Calculator</h1>
            <asp:Label Text="Enter a number" runat="server"></asp:Label>
            <asp:TextBox TextMode="Number" ID="digit1" runat="server"></asp:TextBox>
            
            <br />
            <br />

            <asp:Label Text="Enter another number" runat="server"></asp:Label>
            <asp:TextBox TextMode="Number" ID="digit2" runat="server"></asp:TextBox>
            
            <br />
            <br />
             
            <asp:Button runat="server" Text="+" OnClick="AddNumbers"/>
            <asp:Button runat="server" Text="-" OnClick="SubNumbers"/>
            <asp:Button runat="server" Text="*" OnClick="MulNumbers"/>
            <asp:Button runat="server" Text="/" OnClick="DivNumbers"/>
            
            <br />
            <br />

            <asp:Label runat="server" ID="answer"></asp:Label>
        </div>
    </form>
</body>
</html>
