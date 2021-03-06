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
        return new ModelAndView("menu");
    }

    @GetMapping("/gameFirstAnswer")
    public ModelAndView gamePage(){
        ModelAndView modelAndView = new ModelAndView("gameFirstAnswer");
        modelAndView.addObject("question",questionService.getOneQuestion());
        return modelAndView;
    }

    @GetMapping("/gameSecondAnswer")
    public ModelAndView gamePage2(){
        ModelAndView modelAndView = new ModelAndView("gameSecondAnswer");
        modelAndView.addObject("question",questionService.getOneQuestion());
        return modelAndView;
    }
    @GetMapping("/finish")
    public ModelAndView finishPage(){
        return new ModelAndView("finish");
    }

    @GetMapping("/gameThirdAnswer")
    public ModelAndView gamePage3(){
        ModelAndView modelAndView = new ModelAndView("gameThirdAnswer");
        modelAndView.addObject("question",questionService.getOneQuestion());
        return modelAndView;
    }

    @GetMapping("/gameFourthAnswer")
    public ModelAndView gamePage4(){
        ModelAndView modelAndView = new ModelAndView("gameFourthAnswer");
        modelAndView.addObject("question",questionService.getOneQuestion());
        return modelAndView;
    }

    @GetMapping("/gameFifthAnswer")
    public ModelAndView gamePage5(){
        ModelAndView modelAndView = new ModelAndView("gameFifthAnswer");
        modelAndView.addObject("question",questionService.getOneQuestion());
        return modelAndView;
    }

    @GetMapping("/gameSixthAnswer")
    public ModelAndView gamePage6(){
        ModelAndView modelAndView = new ModelAndView("gameSixthAnswer");
        modelAndView.addObject("question",questionService.getOneQuestion());
        return modelAndView;
    }

    @GetMapping("/gameSeventhAnswer")
    public ModelAndView gamePage7(){
        ModelAndView modelAndView = new ModelAndView("gameSeventhAnswer");
        modelAndView.addObject("question",questionService.getOneQuestion());
        return modelAndView;
    }

    @GetMapping("/gameEighthAnswer")
    public ModelAndView gamePage8(){
        ModelAndView modelAndView = new ModelAndView("gameEighthAnswer");
        modelAndView.addObject("question",questionService.getOneQuestion());
        return modelAndView;
    }

    @GetMapping("/gameNinthAnswer")
    public ModelAndView gamePage9(){
        ModelAndView modelAndView = new ModelAndView("gameNinthAnswer");
        modelAndView.addObject("question",questionService.getOneQuestion());
        return modelAndView;
    }

    @GetMapping("/gameTenthAnswer")
    public ModelAndView gamePage10(){
        ModelAndView modelAndView = new ModelAndView("gameTenthAnswer");
        modelAndView.addObject("question",questionService.getOneQuestion());
        return modelAndView;
    }

    @GetMapping("/gameEleventhAnswer")
    public ModelAndView gamePage11(){
        ModelAndView modelAndView = new ModelAndView("gameEleventhAnswer");
        modelAndView.addObject("question",questionService.getOneQuestion());
        return modelAndView;
    }

    @GetMapping("/gameTwelfthAnswer")
    public ModelAndView gamePage12(){
        ModelAndView modelAndView = new ModelAndView("gameTwelfthAnswer");
        modelAndView.addObject("question",questionService.getOneQuestion());
        return modelAndView;
    }

    @GetMapping("/win")
    public ModelAndView gameWin(){
        return new ModelAndView("win");
    }
}
