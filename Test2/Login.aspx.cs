using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Ajax.Utilities;
using static System.Collections.Specialized.BitVector32;
using System.Configuration;
using System.Security.AccessControl;

namespace Test2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lblErrorMessage.Visible = false;
            if (Request.HttpMethod == "POST")
            {
                // Retrieve the password from the request
                string password = Request.Form["password"];

                // Perform authentication and respond accordingly
                if (AuthenticateUser(password))
                {
                    Response.Write("success");
                }
                else
                {
                    Response.Write("failure");
                }

                Response.End();
            }
        }
        private bool AuthenticateUser(string password)
        {
            // Add your authentication logic here
            // Validate the password against the database, and return true if it's valid
            // Replace this with your actual authentication code
            return false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {


            // Get user input
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // Build your connection string
            string connectionString = "Data Source=DESKTOP-K6BULSV\\SQLEXPRESS;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False";

            // Create a connection to the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Perform authentication using a SQL command
                string query = "SELECT* FROM UserRegistration WHERE Username = @Username AND Password = @Password";
                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", HashPassword(password)); // Replace with your secure password hashing function

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            // Authentication successful
                            int userId = reader.GetInt32(0);
                            string authenticatedUsername = reader.GetString(1);

                            // Store user information in session or redirect to a secure page
                            Session["UserID"] = userId;
                            Session["Username"] = authenticatedUsername;

                            // Redirect to a secure page (e.g., user dashboard)
                            Response.Redirect("Index.aspx");
                        }
                        else
                        {
                            // Authentication failed
                            lblErrorMessage.Text = "Invalid username or password. Please try again.";
                        }
                    }
                }
            }
        }

        // Secure password hashing function (replace with your actual implementation)
        private string HashPassword(string password)
        {
            // Implement your password hashing logic here (e.g., using a secure hashing library)
            // Return the hashed password
            return password; // Insecure placeholder; replace with secure hashing
        }
    }
}
        





