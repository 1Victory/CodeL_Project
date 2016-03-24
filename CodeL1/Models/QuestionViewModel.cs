using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeL1.Models
{
    public class QuestionViewModel
    {
        public string Text { get; set; }
        public List<AnswerViewlModel> Answers { get; set; }
    }
}
