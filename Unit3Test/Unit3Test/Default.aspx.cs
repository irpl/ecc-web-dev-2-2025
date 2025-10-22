using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Unit3Test
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ViewState["count"] = 0;
        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            int count = (int)ViewState["count"];
            count++;
            ViewState["count"] = count;
            lblCount.Text = "You clicked " + count + " times.";
        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Receiver.aspx?name=" + Server.UrlEncode(txtName.Text));
        }


    }
}