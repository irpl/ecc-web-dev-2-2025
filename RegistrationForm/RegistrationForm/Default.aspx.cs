using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationForm
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void HandleRegistration(object sender, EventArgs e) {
            string name = txtName.Text;
            bool invalidName = String.IsNullOrEmpty(name);

            if (invalidName) {
                result.Text = "Please enter a Valid Name.";
                result.ForeColor = System.Drawing.Color.Red;
            }

            string password = txtPassword.Text;
            bool invalidPassword = String.IsNullOrEmpty(password);

            if (invalidPassword)
            {
                result.Text = "Please enter a password.";
                result.ForeColor = System.Drawing.Color.Red;
            }

            string confirmPassword = txtConfirmPassword.Text;

            bool isPasswordsEqual = password.Equals(confirmPassword);

            if (isPasswordsEqual == false) {
                result.Text = "Your passwords do not match";
                result.ForeColor = System.Drawing.Color.Red;
            }

            bool agree = checkTerms.Checked;

            if (agree == false) {
                result.Text = "We really want you to accept our terms so that we can have your soul. pweeese 👉👈";
                result.ForeColor = System.Drawing.Color.Red;
            }

            if (!invalidName && !invalidPassword && isPasswordsEqual && agree)
            {
                result.Text = "You have successfully registered for your soul to be taken. 😈";
                result.ForeColor = System.Drawing.Color.Green;
            }
            else {
                result.Text = "Something went wrong.😢 Please check your inputs";
                result.ForeColor = System.Drawing.Color.Red;
            }


        }
    }
}