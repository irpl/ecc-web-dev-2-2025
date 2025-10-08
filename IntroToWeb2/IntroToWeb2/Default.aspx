<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IntroToWeb2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="enter a number" runat="server"></asp:Label>
            <br />
            <asp:TextBox runat="server" ID="digit1"></asp:TextBox>

            <br />
            <br />

            <asp:Label Text="enter another number" runat="server"></asp:Label>
            <br />
            <asp:TextBox runat="server" ID="digit2"></asp:TextBox>

            <br />
            <br />

            <asp:Button runat="server" ID="add" Text="+" OnClick="AddNumbers"/>
            <asp:Button runat="server" ID="sub" Text="-" OnClick="SubNumbers"/>

            <br />
            <br />

            <asp:Label runat="server" Text="The answer is:"></asp:Label>
            <asp:Label ID="answer" runat="server"></asp:Label>

            <!-- <h1>Headings and Text</h1>

            <asp:Label ID="label1" runat="server" Text="This is a label"></asp:Label>

            <div>
                <asp:Button ID="button1" runat="server" Text="Click Me!" OnClick="ButtonClick"/>
            </div>

            <asp:Label runat="server" Text="Enter your name: "></asp:Label>
            <asp:TextBox ID="textBox" runat="server"></asp:TextBox>
            <div>
                <asp:Button runat="server" OnClick="GreetMe" Text="Greet Me!"/>
            </div> 

            <p>
                <strong>Bold</strong>, <i>italic</i>, <u>underline</u>
                ,<small>small?</small>, <del>deleted</del>, <ins>inserted</ins>,
                <mark>highlighted</mark>
            </p>
            <p>
                How to make mac and cheese.

                what you'll need:
            </p>
                <ul>
                    <li>macaroni</li>
                    <li>cheese</li>
                    <li>mayonaise?</li>
                    <li>butter</li>
                    <li>water</li>
                    <li>salt</li>
                </ul>

             <p>how to make it:</p>
                <ol>
                    <li>bring 6 cups of water to a boil</li>
                    <li>add a 1-2 tablespoon of salt to water</li>
                    <li>add macaroni and let boil for 6-8 minutes</li>
                    <li>strain water off macaroni</li>
                    <li>add cheese to pot</li>
                    <li>???</li>
                    <li>profit</li>
                </ol>
                -->

        </div>
    </form>
</body>
</html>
