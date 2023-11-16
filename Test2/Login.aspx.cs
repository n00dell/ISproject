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
                Customer user = context.Customers.FirstOrDefault(u => u.Username == username && u.Password == password);


                if (user != null)
                {
                    FormsAuthentication.RedirectFromLoginPage(username, false);
                    return;
                }

                // Verify the password
                else
                {
                    lblError.Visible = true;
                    return;
                }



            }

        }

      
      
    }
}
        





