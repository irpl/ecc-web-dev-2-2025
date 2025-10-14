using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationExercise
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CVName_Validate(object source, ServerValidateEventArgs args)
        {
            string name = args.Value;
            char firstLetter = name[0];

            if (Char.IsUpper(firstLetter))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void CourseSelectorCountValidator(object source, ServerValidateEventArgs args)
        {
            ListItemCollection allCourses = cblCourses.Items;

            int count = 0;
            foreach (ListItem course in allCourses)
            {
                if (course.Selected)
                    count++;
            }

            if (count >= 2)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void AcceptTermsValidator(object source, ServerValidateEventArgs args)
        {
            args.IsValid = cbAcceptTerms.Checked;
        }

        protected void TogglePanel1(object sender, EventArgs e)
        {
            pnlNameEmail.Visible = !pnlNameEmail.Visible;
        }

        protected void DateChange(object sender, EventArgs e)
        {
            selectedDate.Text = "You have seleceted: " + calenderDate.SelectedDate.ToShortDateString();
        }
    }
}