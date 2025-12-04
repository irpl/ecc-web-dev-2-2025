using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace DBTest
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTest_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager
                .ConnectionStrings["Web2DbConnection"].ConnectionString;

            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand("SELECT GETDATE();", conn))
                    {
                        object result = cmd.ExecuteScalar();
                        lblResult.Text = "✅ Connection OK. Server time: " + result.ToString();
                    }
                }
            }
            catch (Exception ex)
            {
                lblResult.Text = "❌ Connection FAILED: " + ex.Message;
            }
        }

    }
}