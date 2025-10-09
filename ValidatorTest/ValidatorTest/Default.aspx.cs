using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidatorTest
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cvName_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string value = args.Value;
            args.IsValid = !string.IsNullOrEmpty(value) && char.IsUpper(value[0]);
        }

    }
}