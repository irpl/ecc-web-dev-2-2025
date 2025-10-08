using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.WebRequestMethods;

namespace statictest
{
    public partial class Default : System.Web.UI.Page
    {

        private static readonly HttpClient http = new HttpClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "You clicked the button at " + DateTime.Now.ToLongTimeString();
        }

        //protected async void BtnGetJoke_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        // Example public API that returns JSON: { "value": "the joke ..." , ... }
        //        string url = "https://api.chucknorris.io/jokes/random";

        //        string json = await http.GetStringAsync(url);

        //        // Parse with JavaScriptSerializer (no extra NuGet needed)
        //        JavaScriptSerializer serializer = new JavaScriptSerializer();
        //        var data = serializer.Deserialize<dynamic>(json);

        //        // Extract the text
        //        string joke = data.ContainsKey("value") ? (string)data["value"] : "(no joke)";

        //        // “DOM update” on server: set Label text, ASP.NET will render it into HTML
        //        LblJoke.Text = Server.HtmlEncode(joke);
        //    }
        //    catch (Exception ex)
        //    {
        //        LblJoke.Text = "Error: " + Server.HtmlEncode(ex.Message);
        //    }
        //}
    }
}