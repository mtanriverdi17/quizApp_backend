using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using quizApp.Data;
using quizApp.Models;


namespace quizApp.Controllers
{   [ApiController]
    [Route("[controller]")]
    public class QuestionController : ControllerBase
    {
        private readonly ApplicationDbContext _dbContext;

        public QuestionController(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        [HttpGet]
        public IEnumerable<QuestionAnswerModel> Get()
        {
            var questions = _dbContext.Question.ToList();
            var array = new List<QuestionAnswerModel>(); 
            foreach (var question in questions)
            {
              var answers = _dbContext.Choice.Where(x => x.QuestionId == question.Id).ToList();
              var qaModel = new QuestionAnswerModel
              {
                  QuestionId = question.Id,
                  Question = question.QuestionText
              };
              qaModel.Choices = answers;
              array.Add(qaModel);

            }

            var rnd = new Random();
            return array.OrderBy(x => rnd.Next()).Take(5).ToArray();
        }
    }
}