using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Create a new TableRow
                TableRow newRow = new TableRow();

                // Create TableCells and add to the row
                TableCell cell1 = new TableCell();
                cell1.Text = "Dynamic Cell 1";
                newRow.Cells.Add(cell1);

                TableCell cell2 = new TableCell();
                cell2.Text = "Dynamic Cell 2";
                newRow.Cells.Add(cell2);

                // Add the new row to the Table control
                myTable.Rows.Add(newRow);
            }
        }
    }
}