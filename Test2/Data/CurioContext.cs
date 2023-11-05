using Test2.Models;
using Microsoft.EntityFrameworkCore;

namespace Test2.Data
{
    public class CurioContext :DbContext
    {
        public DbSet <Customer> Customers { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<OrderDetail> OrderDetail { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Data Source=DESKTOP-K6BULSV\\SQLEXPRESS;Initial Catalog=CurioDB;Integrated Security=True");
        }
    }
}