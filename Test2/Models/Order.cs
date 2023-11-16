namespace Test2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Order")]
    public partial class Order
    {
        [Key]
        public int Order_Id { get; set; }

        public int Order_No { get; set; }

        public int? Customer_Id { get; set; }

        public int? Order_Total { get; set; }
    }
}
