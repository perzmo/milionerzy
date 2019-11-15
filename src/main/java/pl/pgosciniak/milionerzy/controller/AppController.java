package pl.pgosciniak.milionerzy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import pl.pgosciniak.milionerzy.service.QuestionService;

@Controller
public class AppController {
    private final QuestionService questionService;

    public AppController(QuestionService questionService) {
        this.questionService = questionService;
    }

    @GetMapping("/")
    public ModelAndView menuPage(){
        ModelAndView modelAndView = new ModelAndView("menu");
        return modelAndView;
    }

    @GetMapping("/gameFirstAnswer")
    public ModelAndView gamePage(){
        ModelAndView modelAndView = new ModelAndView("gameFirstAnswer");
        modelAndView.addObject("question",questionService.getFirstQuestion());
        return modelAndView;
    }

}
