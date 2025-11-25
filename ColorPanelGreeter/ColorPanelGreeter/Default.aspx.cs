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
            if (!IsPostBack)
            {
                var colorParameter = Request.QueryString["color"];
                var countParameter = Request.QueryString["count"];

                if (!String.IsNullOrEmpty(colorParameter))
                    ddlColor.SelectedValue = colorParameter;

                if (!String.IsNullOrEmpty(countParameter))
                    numCount.Text = countParameter;
            }
            
        }

        protected void HandleSubmit(object sender, EventArgs e) {
            var name = Server.UrlEncode(txtName.Text);

            var color = Server.UrlEncode(ddlColor.SelectedValue);

            var number = Server.UrlEncode(numCount.Text);

            var emoji = Server.UrlEncode(ddlEmoji.SelectedValue);

            var size = Server.UrlEncode(ddlSize.SelectedValue);

            Response.Redirect($"Show.aspx?name={name}&color={color}&count={number}&emoji={emoji}&size={size}");
        }
    }
}