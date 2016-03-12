namespace CodeL1.Context
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Quiz : DbContext
    {
        public Quiz()
            : base("name=Quiz")
        {
        }

        public virtual DbSet<Quiz3> Quiz3 { get; set; }
        public virtual DbSet<OurPerson> OurPeople { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<OurPerson>().HasKey(e => e.Id).ToTable("OurPerson");

            modelBuilder.Entity<Quiz3>()
                .Property(e => e.Question)
                .IsUnicode(false);

            modelBuilder.Entity<Quiz3>()
                .Property(e => e.a1)
                .IsUnicode(false);

            modelBuilder.Entity<Quiz3>()
                .Property(e => e.a2)
                .IsUnicode(false);

            modelBuilder.Entity<Quiz3>()
                .Property(e => e.a3)
                .IsUnicode(false);

            modelBuilder.Entity<Quiz3>()
                .Property(e => e.a4)
                .IsUnicode(false);

            modelBuilder.Entity<Quiz3>()
                .Property(e => e.Employee_ID)
                .IsUnicode(false);

            modelBuilder.Entity<Quiz3>()
                .Property(e => e.Name)
                .IsUnicode(false);
        }
    }
}
