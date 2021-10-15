using System.ComponentModel.DataAnnotations.Schema;

namespace quizApp
{
    public class Choice
    {
        public int Id { get; set; }
        public string ChoiceText { get; set; }
        public bool IsCorrect { get; set; }
        
        [ForeignKey("Question")]
        public int QuestionId { get; set; }
        public Question Question { get; set; }
    }
}