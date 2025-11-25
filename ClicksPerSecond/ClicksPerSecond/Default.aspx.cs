using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClicksPerSecond
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                ViewState["clicks"] = 0;
                ViewState["click1"] = 0;
                ViewState["click2"] = 0;
                lblClickRate.Text = "0";
            }
        }

        protected void ClickCount(object sender, EventArgs e)
        { 
            var click = (int)ViewState["clicks"];

            if (click % 10 == 0)
            {
                var now = DateTimeOffset.Now;
                ViewState["click1"] = now.ToUnixTimeMilliseconds();
                 
            }
        }
    }
}