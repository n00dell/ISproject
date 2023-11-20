using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test2.Models;

namespace Test2.admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            string username = txtAdminUser.Text;
            string password = txtAdminPassword.Text;
            using (var context = new Model2())
            {
                

                Admin admin = context.Admins.FirstOrDefault(u => u.Username == username);

               if(admin != null)
                {
                    if(VerifyPassword(password, admin.Password))
                    {
                        Response.Redirect("adminDash.aspx");
                    }
                    else
                    {
                        lblAdminError.Text = "Wrong password";
                    }
                  

                }
               else
                {
                    lblAdminError.Text = "Wrong credentials";
                }

            }
            



          


        }
        private bool VerifyPassword(string password, string adminPassword)
        {
            using (var context = new Model2())
            {
                Admin admin = context.Admins.FirstOrDefault(u => u.Password == password);
                return password == adminPassword;
            }
        }
    }
}