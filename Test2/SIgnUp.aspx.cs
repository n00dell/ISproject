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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;
using System.Windows.Forms;
using BCrypt.Net;

namespace Test2
{
    public partial class SIgnUp : System.Web.UI.Page
    {
       
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text; 
            string firstname = txtFirstName.Text;
            string lastname = txtLastName.Text;
            string email = txtEmail.Text;


            using( var context = new Model1() )
            {
                if (context.Test2User.Any(u => u.Username == username))
                {
                    lblError.Text = "Username already exists";
                }
                if (context.Test2User.Any(u => u.Email == email))
                {
                    lblError.Text = "Username already exists";
                }

                Test2User user = new Test2User();
                user.Username = username;
                user.Password = password;
                user.FirstName = firstname;
                user.LastName = lastname;
                user.Email = email;

                context.Test2User.Add(user);
                context.SaveChanges();
            }
            
        }
    }
}

