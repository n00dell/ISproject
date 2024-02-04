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
using Test2.Models;
using System.Web.Security;

namespace Test2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lblError.Visible = false;
          
        }
      
        protected void btnLogin_Click(object sender, EventArgs e)
        {


            // Get user input
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            using (var context = new Model1())
            {
                Customer user = context.Customers.FirstOrDefault(u => u.Username == username);


                if (user != null)
                {
                  if (VerifyPassword(password, user.Password ))
                    {
                        Response.Redirect("Index.aspx");
                    }
                    else
                    {
                        lblError.Text = "Wrong password";
                    }
                    Session["username"] = username;
                }

                // Verify the password
                else
                {
                    lblError.Text = "Wrong credentials";
                }
                if (username == "admin" && password == "admin")
                {
                    Response.Redirect("admin/AdminLogin.aspx");
                }

               

            }

        }

        private bool VerifyPassword(string password, string customerPassword)
        {
            using(var context = new Model1())
            {
                Customer user = context.Customers.FirstOrDefault(u => u.Password == password);
                return password == customerPassword;
            }

        }

      
      
    }
}
        





