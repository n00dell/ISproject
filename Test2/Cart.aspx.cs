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




        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (var context = new CartModel())
                using (var context2 = new Model1())
                {
                    var cartItems = from c in context.CartItems
                                    join p in context2.Products on c.ProductId equals p.Product_Id
                                    select new
                                    {
                                        c.ItemId,
                                        c.ProductId,
                                        c.Quantity,
                                        p.Product_Name,
                                        p.Product_Price,
                                        p.Image1
                                    };

                    RepeaterCart.DataSource = cartItems;
                    RepeaterCart.DataBind();
                }
            }
        }




    }
}






