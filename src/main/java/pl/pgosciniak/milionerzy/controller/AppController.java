package pl.pgosciniak.milionerzy.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
    @GetMapping("/gameSecondAnswer")
    public ModelAndView gamePage2(){
        ModelAndView modelAndView = new ModelAndView("gameSecondAnswer");
        modelAndView.addObject("question",questionService.getFirstQuestion());
        return modelAndView;
    }
    @GetMapping("/finish")
    public ModelAndView finishPage(){
        ModelAndView modelAndView = new ModelAndView("finish");
        return modelAndView;
    }

}
