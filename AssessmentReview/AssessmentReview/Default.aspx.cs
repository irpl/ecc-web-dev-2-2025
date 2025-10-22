using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssessmentReview
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CVWorkshopSelector(object source, ServerValidateEventArgs args)
        {
            var count = 0;

            //var name = txtName.Text;

            foreach (ListItem item in cblWorkshop.Items) {
                if (item.Selected) {
                    count++;
                }
            }

            if (count >= 2)
            {
                args.IsValid = true;
            }
            else {
                args.IsValid = false;
            }
        }
    }
}