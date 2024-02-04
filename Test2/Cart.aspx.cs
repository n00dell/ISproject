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
                var cart = GetCartFromCookie();

                // Bind the cart items to the repeater
                RepeaterCart.DataSource = cart.Items;
                RepeaterCart.DataBind();
            }
        }

        public void AddToCart(int productId, int quantity)
        {
            // Get the existing cart from the cookie
            var context = new Model1();
            var cart = GetCartFromCookie();

            // Add the new item to the cart
            var item = new OrderDetail {
                Product_Id = productId,
                Product_Quantity = quantity,

            };
            context.OrderDetails.Add(item);

            // Store the updated cart in the cookie
            SetCartCookie(cart);
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            // Get the cart from the cookie
            var cart = GetCartFromCookie();

            // Update the quantities in the cart based on the form inputs
            foreach (RepeaterItem item in RepeaterCart.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var hfProductId = (HiddenField)item.FindControl("hfProductId");
                    var txtQuantity = (TextBox)item.FindControl("txtQuantity");

                    var productId = int.Parse(hfProductId.Value);
                    var quantity = int.Parse(txtQuantity.Text);

                    var cartItem = cart.Items. FirstorDefault (i => i.ProductId == productId);
                    if (cartItem != null)
                    {
                        cartItem.Quantity = quantity;
                    }
                }
            }

            // Store the updated cart in the cookie
            SetCartCookie(cart);

            // Rebind the cart items to the repeater to reflect the updated quantities
            RepeaterCart.DataSource = cart.Items;
            RepeaterCart.DataBind();
        }

        public Cart GetCartFromCookie()
        {
            // Get the cart cookie
            var cartCookie = Request.Cookies["cart"];

            if (cartCookie == null)
            {
                // If the cart cookie doesn't exist, return an empty cart
                return new Cart();
            }
            else
            {
                // If the cart cookie exists, deserialize it to a Cart object
                var cartJson = HttpUtility.UrlDecode(cartCookie.Value);
                var cart = JsonConvert.DeserializeObject<Cart>(cartJson);
                return cart;
            }
        }

        public void SetCartCookie(Cart cart)
        {
            // Serialize the Cart object to a JSON string
            var cartJson = JsonConvert.SerializeObject(cart);

            // Create a cookie with the serialized cart
            var cartCookie = new HttpCookie("cart", HttpUtility.UrlEncode(cartJson));

            // Set the cookie to expire in 30 days
            cartCookie.Expires = DateTime.Now.AddDays(30);

            // Add the cookie to the response
            Response.Cookies.Add(cartCookie);
        }



 

 

 

    }



}






