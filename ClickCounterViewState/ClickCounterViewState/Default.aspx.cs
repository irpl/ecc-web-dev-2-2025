using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClickCounterViewState
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ViewState["count"] != null) {
                lblCount.Text = ViewState["count"].ToString();
            }
        }

        //protected void ChangeColor(object sender, EventArgs e)
        //{
        //    pnl.BackColor = System.Drawing.Color.Green;
        //}

        protected void CountClick(object sender, EventArgs e)
        {
            if (ViewState["count"] == null)
            {
                ViewState["count"] = 1;
                lblCount.Text = ViewState["count"].ToString();
            }
            else {
                ViewState["count"] = (int)ViewState["count"] + 1;
                lblCount.Text = ViewState["count"].ToString();
            }
        }

    }
}