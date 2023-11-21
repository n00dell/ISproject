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
        protected void Page_Load(object sender, EventArgs e)
        {
          Id  = Convert.ToInt32(Request.QueryString["Product_Id"]);
            var context = new Model1();
            var product = new List<Product>();

            RepeaterDesc.DataSource = product;
            RepeaterDesc.DataBind();
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {


        }

        protected void btnAddtocart_Click(object sender, EventArgs e)
        {

        }
    }
}