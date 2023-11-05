using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Test2.Models
{
    public class Order
    {
        public int Id { get; set; }

        public int CustomerId { get; set; } = 0;
        public Customer Customer { get; set; }

        public DateTime OrderPlaced {  get; set; }
        public DateTime OrderFulfilled { get; set; }
        //public int OrderStatus { get; set; }
        public ICollection<OrderDetail> OrderDetails { get; set; }
    }
}