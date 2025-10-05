<%@ Page Language="C#" AutoEventWireup="true"  Inherits="WebApplication4.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Calendar id="calendar1" runat="server">

               <OtherMonthDayStyle ForeColor="LightGray">
               </OtherMonthDayStyle>

               <TitleStyle BackColor="Blue"
                           ForeColor="White">
               </TitleStyle>

               <DayStyle BackColor="gray">
               </DayStyle>

               <SelectedDayStyle BackColor="LightGray"
                                 Font-Bold="True">
               </SelectedDayStyle>

          </asp:Calendar>

            <asp:HyperLink id="hyperlink1" 
                  ImageUrl="images/img.jpg"
                  ImageHeight="200"
                  NavigateUrl="Text.aspx?deep=toot"
                  Text="Microsoft Official Site"
                  Target="_new"
                  runat="server"/> 
            <br />
            <asp:ListBox id="ListBox1" Rows="5" Width="200px" SelectionMode="Multiple" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ListBoxChangeHandler">
                <asp:ListItem Value="ItemA">Item A</asp:ListItem>
                <asp:ListItem Value="ItemB">Item B</asp:ListItem>
                <asp:ListItem Value="ItemC">Item C</asp:ListItem>
                <asp:ListItem Value="ItemD">Item D</asp:ListItem>
            </asp:ListBox>
            <br />
            <asp:Label runat="server" ID="Label1"></asp:Label>

        </div>
    </form>
    <script language="C#" runat="server">
        void ListBoxChangeHandler(Object sender, EventArgs e)
        {
            int[] indices = ListBox1.GetSelectedIndices();
            string items = "";
            foreach( int index in indices )
            {
                items += ListBox1.Items[index].Text + "<br />";
            }

            Label1.Text = items;
            //if ( ListBox1.SelectedIndex > -1 )
            //Label1.Text = "You chose: " + ListBox1.SelectedItem.Text;

        }

    </script>
</body>
</html>
