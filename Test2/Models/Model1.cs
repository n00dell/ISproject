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

        public virtual DbSet<Test2User> Test2User { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Test2User>()
                .Property(e => e.FirstName)
                .IsUnicode(false);

            modelBuilder.Entity<Test2User>()
                .Property(e => e.LastName)
                .IsUnicode(false);

            modelBuilder.Entity<Test2User>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<Test2User>()
                .Property(e => e.Username)
                .IsUnicode(false);

            modelBuilder.Entity<Test2User>()
                .Property(e => e.Password)
                .IsUnicode(false);
        }
    }
}
