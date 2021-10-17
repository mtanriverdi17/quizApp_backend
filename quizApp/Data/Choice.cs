using System.ComponentModel.DataAnnotations.Schema;
using quizApp.Data;
using System.ComponentModel.DataAnnotations;


namespace quizApp.Data
{
    public class Choice
    {   [Key]
        public int Id { get; set; }
        public string ChoiceText { get; set; }
        public bool IsCorrect { get; set; }
        
        public Question Question { get; set; }
        [ForeignKey("Question")]
        public int QuestionId { get; set; }
    }
}