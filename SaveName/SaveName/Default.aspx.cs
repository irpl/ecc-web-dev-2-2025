using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SaveName
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (ViewState["userName"] != null)
            //{
            //    var name = ViewState["userName"].ToString();
            //    txtName.Text = name;
            //    lblMessage.Text = "Hello again " + txtName.Text + "!";
            //}
            if (ViewState["count"] != null)
            {
                lblMessage.Text = ViewState["count"].ToString();
            }
        }

        protected void SaveName(object sender, EventArgs e)
        {
            var name = txtName.Text;

            //ViewState["userName"] = name;
            //lblMessage.Text = "Welcome " + name + "!";

            pnl.BorderColor = System.Drawing.Color.FromName(name);

        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            
            if (ViewState["count"] == null)
            {
                ViewState["count"] = 0;
            }
            else {
                ViewState["count"] = (int)ViewState["count"] + 1;
            }

            
            lblMessage.Text = ViewState["count"].ToString();
        }
    }
}