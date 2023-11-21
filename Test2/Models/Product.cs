namespace Test2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        [Key]
        public int Product_Id { get; set; }

        [StringLength(50)]
        public string Product_Name { get; set; }

        public int Category_Id { get; set; }

        [StringLength(50)]
        public string Product_Description { get; set; }

        public int Product_Price { get; set; }

        public string Image1 { get; set; }

        [StringLength(50)]
        public string Product_Brand { get; set; }

        public string Long_Description { get; set; }

        [StringLength(50)]
        public string Color { get; set; }
    }
}
