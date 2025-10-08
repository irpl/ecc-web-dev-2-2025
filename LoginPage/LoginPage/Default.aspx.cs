using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["clickCount"] = 0;

            clickMessage.Text = "You have clicked the button " + Session["clicks"] + " times";
        }

        protected void Login(object sender, EventArgs e) {
            string username = usernameTextbox.Text;

            string password = passwordTextBox.Text;

            if (username.Equals("admin") && password.Equals("123")) {
                messageLabel.Text = "Login successful";
            }
            else {
                messageLabel.Text = "Invalid login";
            }
        }
        protected void ClickUpdate(object sender, EventArgs e) {
            int count = 0;
            if (Session["clicks"] != null) {
                count = (int)Session["clicks"];
            }
            count++;
            Session["clicks"] = count;
            clickMessage.Text = "You have clicked the button " + count + " times";
        }
    }
}