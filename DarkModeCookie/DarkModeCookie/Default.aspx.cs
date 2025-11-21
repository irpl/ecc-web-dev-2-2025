using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DarkModeCookie
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["mode"] != null)
                {
                    string mode = Request.Cookies["mode"].Value;

                    if (mode == "True")
                    {
                        container.Style.Add("background-color", "#333");
                        container.Style.Add("color", "white");
                        modeToggle.Checked = true;
                    }
                }
            }
            
        }

        protected void ToggleDarkMode(object sender, EventArgs e) {
            HttpCookie cookie = new HttpCookie("mode", modeToggle.Checked.ToString());
            cookie.Expires = DateTime.Now.AddDays(7);
            Response.Cookies.Add(cookie);

            if (modeToggle.Checked == true)
            {
                container.Style.Add("background-color", "#333");
                container.Style.Add("color", "white");

            }
            else {
                container.Style.Add("background-color", "#fff");
                container.Style.Add("color", "black");
            }

        }
    }
}