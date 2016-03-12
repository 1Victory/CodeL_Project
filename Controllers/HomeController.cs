using CodeL1.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CodeL1.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult Data()
        {
            ViewBag.Message = "Quiz";
            /*
                        using (DBContext context = new DBContext())
                        {
                            var results = (from p in context.People
                                           select p).Take(10).ToList();




                            return View(results);
                        }
                        */
            using (Quiz context = new Quiz())
            {
                var results = (from p in context.Quiz3
                               select p).Take(5).ToList();




                return View(results);
            }
        }

        [HttpPost]
        public ActionResult Data(List<int> Answer)
        {
            var answers = Answer;
            if (Answer[0] == 1) {
                return View("Result", model: "This is a string as a model");
            }
            // do something with this

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Quiz()
        {
            /*
            var quiz = new Models.QuizViewModel();

            var answers = new List<Models.AnswerViewlModel>();
            answers.Add(new Models.AnswerViewlModel() { Id = 1, Name = "This is the first answer" });
            answers.Add(new Models.AnswerViewlModel() { Id = 2, Name = "This is the second answer" });

            var questions = new List<Models.QuestionViewModel>();
            questions.Add(new Models.QuestionViewModel() { Text = "Question 1", Answers = answers });
            questions.Add(new Models.QuestionViewModel() { Text = "Question 2", Answers = answers });

            quiz.Questions = questions;


            return View(quiz);
            */

            return View();
        }

        [HttpPost]
        public ActionResult Quiz(Models.QuizViewModel viewModel)
        {

            return RedirectToAction("Index");
        }

        public ActionResult Person()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Person(OurPerson model)


            
        {
            using(var context = new Quiz()){
                context.OurPeople.Add(model);
                context.SaveChanges();
            }

            return RedirectToAction("Person");

        }
    }
}