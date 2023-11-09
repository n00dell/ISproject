using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Test2.Models;
using Microsoft.Ajax.Utilities;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace Test2
{
    public partial class SIgnUp : System.Web.UI.Page
    {
       
        private SqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                string username = txtUsername.Text;
                string email = txtEmail.Text;
                string password = txtPassword.Text;
                string Fname = txtFname.Text;
                string Lname = txtLname.Text;
                string password1 = txtPassword1.Text;

                string connectionString = "name = Model1";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                }
                if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(Fname) || string.IsNullOrEmpty(Lname) || string.IsNullOrEmpty(password1))
                {
                    lblErrorMessage.Text = "Please enter the required fields";
                    return;
                }
                string checkUsernameSQL = "SELECT COUNT(*) FROM Test2User WHERE Username = @Username";
                SqlCommand checkUsernameCommand = new SqlCommand(checkUsernameSQL, connection);
                checkUsernameCommand.Parameters.AddWithValue("@Username", username);

                string checkEmailSQL = "SELECT COUNT(*) FROM Test2User WHERE Email = @Email";
                SqlCommand checkEmailCommand = new SqlCommand(checkEmailSQL, connection);
                checkEmailCommand.Parameters.AddWithValue("@Email", email);
                int usernameCount = (int)checkUsernameCommand.ExecuteScalar();
                int emailCount = (int)checkEmailCommand.ExecuteScalar();

                if (usernameCount > 0)
                {
                    lblErrorMessage.Text = "Username already exists.";
                    return;
                }

                if (emailCount > 0)
                {
                    lblErrorMessage.Text = "Email address already exists.";
                    return;
                }
                string insertUserSQL = "INSERT INTO Test2User (FirstName,LastName, Email, Username, Password) VALUES (@FirstName, @LastName, @Email @Username, @Password)";
                SqlCommand insertUserCommand = new SqlCommand(insertUserSQL, connection);
                insertUserCommand.Parameters.AddWithValue("@Firstname", Fname); 
                insertUserCommand.Parameters.AddWithValue("Lastname", Lname);
                insertUserCommand.Parameters.AddWithValue("@Email", email);
                insertUserCommand.Parameters.AddWithValue("@Username", username);
                insertUserCommand.Parameters.AddWithValue("@Password", password);
                
                lblSuccessMessage.Text = "Successful sign up";
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = "An Error occured";
            }

        }


    }
}

