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

        }

        protected void ToggleDarkMode(object sender, EventArgs e) {
            HttpCookie cookie = new HttpCookie("mode", modeToggle.Checked.ToString());
            cookie.Expires = DateTime.Now.AddDays(7);
            Response.Cookies.Add(cookie); 

            container.Style.Add("background-color", "#333");
            container.Style.Add("color", "white");

        }
    }
}