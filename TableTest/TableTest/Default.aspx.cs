using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace TableTest
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            TableRow row = new TableRow();

            TableCell fnameCell = new TableCell { Text = "Jim" };
            TableCell lnameCell = new TableCell { Text = "Wallace" };
            TableCell addCell = new TableCell { Text = "Here" };

            row.Cells.Add(fnameCell);
            row.Cells.Add(lnameCell);
            row.Cells.Add(addCell);

            testTable.Rows.Add(row);

            var people = new List<Dictionary<string, string>>();

            var person1 = new Dictionary<string, string>
            {
                { "fname", "john"},
                { "lname", "Williams"},
                { "add", "There"},
            };

            var person2 = new Dictionary<string, string>
            {
                { "fname", "Jane"},
                { "lname", "Alexander"},
                { "add", "Ova Suh"},
            };

            people.Add(person1);
            people.Add(person2);


            foreach (var person in people) {
                TableRow newRow = new TableRow();

                TableCell newfnameCell = new TableCell { Text = person["fname"] };
                TableCell newlnameCell = new TableCell { Text = person["lname"] };
                TableCell newaddCell = new TableCell { Text = person["add"] };

                newRow.Cells.Add(newfnameCell);
                newRow.Cells.Add(newlnameCell);
                newRow.Cells.Add(newaddCell);

                testTable.Rows.Add(newRow);
            }

        }
    }
}