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

        //protected void btnTest_Click(object sender, EventArgs e)
        //{
        //    string connString = ConfigurationManager
        //        .ConnectionStrings["Web2DbConnection"].ConnectionString;

        //    try
        //    {
        //        using (SqlConnection conn = new SqlConnection(connString))
        //        {
        //            conn.Open();

        //            using (SqlCommand cmd = new SqlCommand("SELECT * from users;", conn))
        //            {
        //                object result = cmd.ExecuteScalar();
        //                lblResult.Text = "✅ Connection OK. Server time: " + result.ToString();
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        lblResult.Text = "❌ Connection FAILED: " + ex.Message;
        //    }
        //}

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string username = txtUsername.Text;
                string password = txtPassword.Text;
                string email = txtEmail.Text;
                string phone = txtPhone.Text;

                string connString = ConfigurationManager.ConnectionStrings["Web2DbConnection"].ConnectionString;

                try
                {
                    using (SqlConnection conn = new SqlConnection(connString))
                    {
                        conn.Open();

                        string sqlquery = $"INSERT INTO users (username, password, emailaddress, phone) VALUES ('{username}', '{password}', '{email}', '{phone}');";

                        using (SqlCommand cmd = new SqlCommand(sqlquery, conn))
                        {
                            object result = cmd.ExecuteScalar();
                            //lblMessage.Text = "✅ Connection OK. Server time: " + result.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "❌ Connection FAILED: " + ex.Message;
                }

                // Example: display data (later you can save to DB)
                lblMessage.Text =
                    $"User Registered:<br/>" +
                    $"Username: {username}<br/>" +
                    $"Email: {email}<br/>" +
                    $"Phone: {phone}";

                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
        }


    }
}