namespace CodeL1.Context
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Quiz3Ans : DbContext
    {
        public Quiz3Ans()
            : base("name=Quiz")
        {
        }

        public virtual DbSet<Quiz3Answers> Quiz3Answers { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
