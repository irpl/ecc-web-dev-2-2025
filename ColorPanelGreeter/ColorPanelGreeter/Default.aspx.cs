using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ColorPanelGreeter
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void HandleSubmit(object sender, EventArgs e) {
            var name = Server.UrlEncode(txtName.Text);

            var color = Server.UrlEncode(ddlColor.SelectedValue);

            var number = Server.UrlEncode(numCount.Text);

            Response.Redirect($"Show.aspx?name={name}&color={color}&count={number}");
        }
    }
}