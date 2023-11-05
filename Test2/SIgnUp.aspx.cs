using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Test2
{
    public partial class SIgnUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string username1 = txtUsername.Text;
            string confirmPass = txtPassword1.Text;
            string password1 = txtPassword.Text;
            string FirstName1 = txtFname.Text;
            string LastName1 = txtLname.Text;
            string email1 = txtEmail.Text;

            if (string.IsNullOrWhiteSpace(FirstName1) || string.IsNullOrWhiteSpace(LastName1) || string.IsNullOrWhiteSpace(username1) || string.IsNullOrWhiteSpace(email1) || string.IsNullOrWhiteSpace(password1) || string.IsNullOrWhiteSpace(confirmPass))
            {
                lblErrorMessage.Text = "Please fill in all required fields.";
                return;
            }


            // Construct the connection string
            string connectionString = "Data Source=DESKTOP-K6BULSV\\SQLEXPRESS;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False";

            // Create a new SqlConnection object
            
            SqlConnection connection = new SqlConnection(connectionString);
            try
            {
                string query = "INSERT INTO UserRegistration.dbo (FirstName, LastName, Username, Email, Password) VALUES(@FirstName, @LastName, @Username, @Email, @pPassword)";

                using (SqlCommand cmd = new SqlCommand(query))
                        {
                    cmd.Parameters.AddWithValue("@FirstName", FirstName1);
                    cmd.Parameters.AddWithValue("@LastName", LastName1);
                    cmd.Parameters.AddWithValue("@Username", username1);
                    cmd.Parameters.AddWithValue("@Email", email1);
                    cmd.Parameters.AddWithValue("@Password", password1);
                    connection.Open();
                    int rowAffected = cmd.ExecuteNonQuery();
                    if (rowAffected > 0)
                    {
                        Response.Redirect("Index.aspx");
                    }
                    else
                    {
                        lblErrorMessage.Text = "Invalid username or password";
                    }
                }

            }
            catch (Exception ex){
                lblErrorMessage.Text = "An error has occured" + ex.Message;
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