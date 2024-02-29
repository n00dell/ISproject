using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test2.Models;

namespace Test2
{
    public partial class Description : System.Web.UI.Page
    {
        int Id;
        String Product_name, Product_Description, Product_Brand,Image1;

        protected void Page_Load(object sender, EventArgs e)
        {
          Id  = Convert.ToInt32(Request.QueryString["Id"]);
            var context = new Model1();
            var product = context.Products.Where(p => p.Product_Id == Id).ToList();

            RepeaterDesc.DataSource = product;
            RepeaterDesc.DataBind();
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("");

        }

        protected void btnAddtocart_Click(object sender, EventArgs e)
        {
        //i want the user to be logged in before adding to cart
            if(Login== true)
            {
                var context = new Model1();
                var cart = new OrderDetail();
                cart.Product_Id = Id;
                cart.Product_Quantity = 1;
                context.OrderDetails.Add(cart);
                context.SaveChanges();
                Response.Redirect("Cart.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }
    }
}