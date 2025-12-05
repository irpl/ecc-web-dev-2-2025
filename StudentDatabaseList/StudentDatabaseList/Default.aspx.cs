using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentDatabaseList
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["StudentDBConnectionString"].ConnectionString;
            
            string query = "SELECT FirstName, LastName, Hall, K13 FROM Students ORDER BY LastName";

            using ( SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn)) {
                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader()) {

                        while (reader.Read() == true) { 
                            string firstName = reader["FirstName"].ToString();
                            string lastName = reader["LastName"].ToString();
                            string hall = reader["Hall"].ToString();
                            int k13 = Convert.ToInt32(reader["K13"]);

                            Label nameLbl = new Label();
                            nameLbl.Text = $"{firstName} {lastName} - {hall}<br />";

                            switch (hall) {
                                case "Nadine Scott":
                                    nameLbl.BackColor = System.Drawing.Color.Purple;
                                    break;
                                case "Morain Seymour":
                                    nameLbl.BackColor = System.Drawing.Color.Blue;
                                    break;
                                case "Wesley Powell":
                                    nameLbl.BackColor = System.Drawing.Color.Green;
                                    break;
                                case "Dahlia Repole":
                                    nameLbl.BackColor = System.Drawing.Color.Yellow;
                                    break;
                                default:
                                    nameLbl.BackColor = System.Drawing.Color.Gray;
                                    break;
                            }

                            if (k13 == 1)
                            {
                                studentPanelK13.Controls.Add(nameLbl);
                            }
                            else
                            {
                                studentPanelnK13.Controls.Add(nameLbl);
                            }
                        }
                    }
                }
            }
        }
    }
}