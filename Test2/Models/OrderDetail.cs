namespace Test2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class OrderDetail
    {
        [Key]
        public int Order_Details_Id { get; set; }

        public int Order_Id { get; set; }

        public int Product_Id { get; set; }

        public int Product_Quantity { get; set; }

        public int? Subtotal { get; set; }
    }
}
