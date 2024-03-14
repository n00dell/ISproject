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
            if (!IsPostBack) // Ensure this code runs only during the initial page load
            {
                int Id = Convert.ToInt32(Request.QueryString["Id"]);
                using (var context = new Model1())
                {
                    var product = context.Products.FirstOrDefault(p => p.Product_Id == Id);
                    if (product != null)
                    {
                        RepeaterDesc.DataSource = new List<Product> { product };
                        RepeaterDesc.DataBind();
                    }
                }
                
            }
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(Request.QueryString["Id"]);
            using (var context = new Model1())
            {
                var product = context.Products.FirstOrDefault(p => p.Product_Id == Id);
                if (product != null)
                {
                    using (var context2 = new CartModel())
                    {
                        var cartItem = context2.CartItems.FirstOrDefault(c => c.ProductId == Id);
                        if (cartItem == null)
                        {
                            var newCartItem = new CartItem
                            {
                                ProductId = Id,
                                Quantity = 1,
                                DateCreated = DateTime.Now
                            };
                            context2.CartItems.Add(newCartItem);
                        }
                        else
                        {
                            cartItem.Quantity++;
                        }
                        context2.SaveChanges();
                       
                    }
                }
            }
          Response.Redirect("Cart.aspx?Id=" + Id);
        }


        protected void btnAddtocart_Click(object sender, EventArgs e)
        {
            Id = Convert.ToInt32(Request.QueryString["Id"]);
            var context = new Model1();
            var product = context.Products.Where(p => p.Product_Id == Id).ToList();
            foreach (var p in product)
            {
                Product_name = p.Product_Name;
                Product_Description = p.Product_Description;
                Product_Brand = p.Product_Brand;
                Image1 = p.Image1;
            }
            var context2 = new CartModel();
            var cart = context2.CartItems.Where(c => c.ProductId == Id).ToList();

            if (cart.Count == 0)
            {
                var c = new CartItem();
                c.ProductId = Id;
                c.Quantity = 1;
                c.DateCreated = DateTime.Now;
                context2.CartItems.Add(c);
                context.SaveChanges();
            }
            else
            {
                foreach (var c in cart)
                {
                    c.Quantity = c.Quantity + 1;
                    context.SaveChanges();
                }
            }   

        }
    }
}