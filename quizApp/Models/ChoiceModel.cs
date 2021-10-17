namespace quizApp.Models
{
    public class ChoiceModel
    {
        public int Id { get; set; }
        public string ChoiceText { get; set; }
        public bool IsCorrect { get; set; }
        public int QuestionId { get; set; }
    }
}