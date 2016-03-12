namespace CodeL1.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Quiz3
    {
        public int id { get; set; }

        [StringLength(50)]
        public string Question { get; set; }

        [StringLength(50)]
        public string a1 { get; set; }

        [StringLength(50)]
        public string a2 { get; set; }

        [StringLength(50)]
        public string a3 { get; set; }

        [StringLength(50)]
        public string a4 { get; set; }

        [StringLength(50)]
        public string Employee_ID { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

       
    }
}
