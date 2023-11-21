using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test2.Models;

namespace Test2.admin
{
    public partial class adminProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string name = txtProductName.Text;
            string description = txtDescription.Text;
            int category = Convert.ToInt32(txtCategory.Text);
            int price = Convert.ToInt32(txtPrice.Text);
            string LongDesc = txtLongDesc.Text;
            string brand = txtBrand.Text;
            string color = txtColor.Text;

            var context = new Model1();

            img1.SaveAs(Request.PhysicalApplicationPath + "./TestImg" + img1.FileName.ToString());
            string a;
            a = "./TestImg" + img1.FileName.ToString();

            Product product = new Product
            {
                Product_Name = name,
                Product_Description = description,
                Category_Id = category,
                Product_Price = price,
                Long_Description =LongDesc,
                Product_Brand = brand,
                Color = color,
                Image1 = a
               
            };
            context.Products.Add(product);
            context.SaveChanges();
        }
       


    }
}