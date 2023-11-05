using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Test2.Models
{
    public class OrderDetail
    {
        public int Id { get; set; }
        public int Qantity { get; set; }
        public int OrderId { get; set; }
        public int ProductId { get; set; } = 0;

        public Order Order { get; set; }

        public Product Product { get; set; }
    }
}