using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBTable
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager
                .ConnectionStrings["Web2DbConnection"].ConnectionString;

            string query = "SELECT FirstName, LastName FROM Students ORDER BY LastName;";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        // Clear existing content
                        pnlStudents.Controls.Clear();

                        while (reader.Read())
                        {
                            string fname = reader["FirstName"].ToString();
                            string lname = reader["LastName"].ToString();
                            //int age = Convert.ToInt32(reader["Age"]);

                            // Create UI elements programmatically
                            Label lbl = new Label();
                            lbl.Text = $"Student: {fname} {lname}";

                            // Optional: add formatting
                            lbl.Style.Add("display", "block");
                            lbl.Style.Add("margin", "4px 0");

                            // Add label to panel
                            pnlStudents.Controls.Add(lbl);
                        }
                    }
                }
            }
        }
    }
}