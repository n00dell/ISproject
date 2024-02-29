using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test2.Models;

namespace Test2
{
    public partial class Cart : System.Web.UI.Page
    {

        CartModel context = new CartModel();
        
 
            protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get the cart from the cookie
                //var cart = GetCartFromCookie();

                //Bind the cart items to the repeater
            //    RepeaterCart.DataSource = cart.Items;
            //    RepeaterCart.DataBind();
            //}
        }

        public void AddToCart(int productId, int quantity)
        {
            // Get the existing cart from the cookie
            var context = new Model1();
            //var cart = GetCartFromCookie();

            // Add the new item to the cart
            var item = new OrderDetail {
                Product_Id = productId,
                Product_Quantity = quantity,

            };
            context.OrderDetails.Add(item);

            // Store the updated cart in the cookie
            //SetCartCookie(cart);
        }

  

    }



}






