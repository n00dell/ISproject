using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test2.Models;

namespace Test2
{
    public partial class WatchesandBracelets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var context = new Model1())
            {
                var products = context.Products.Where(p => p.Category_Id == 3).ToList();

                Repeater1.DataSource = products;
                Repeater1.DataBind();
            }

        }
    }
}