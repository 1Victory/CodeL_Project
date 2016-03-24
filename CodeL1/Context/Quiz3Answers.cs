namespace CodeL1.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Quiz3Answers
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int QuestionID { get; set; }

        public int? EmployeeID { get; set; }

        public int? a1 { get; set; }

        public int? a2 { get; set; }

        public int? a3 { get; set; }

        public int? a4 { get; set; }

        public int? Score { get; set; }
    }
}
