using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace QueryStringTest
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GreetUser(object sender, EventArgs e) {

            string fname = txtFName.Text;
            string lname = txtLName.Text;

            Response.Redirect("Greet.aspx?fname=" + fname + "&lname=" + lname);

        }
    }
}