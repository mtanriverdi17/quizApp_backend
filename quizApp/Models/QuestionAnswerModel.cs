using System.Collections.Generic;
using quizApp.Data;

namespace quizApp.Models
{
    public class QuestionAnswerModel
    {
        public QuestionAnswerModel()
        {
            Choices = new List<ChoiceModel>();
        }
        public int QuestionId { get; set; }
        public string Question { get; set; }
        
        public IList<ChoiceModel> Choices { get; set; }
    }
}