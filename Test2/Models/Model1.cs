using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace Test2.Models
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<OrderDetail> OrderDetails { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Product>()
                .Property(e => e.Image1)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Product_Brand)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Long_Description)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Color)
                .IsUnicode(false);
        }
    }
}
