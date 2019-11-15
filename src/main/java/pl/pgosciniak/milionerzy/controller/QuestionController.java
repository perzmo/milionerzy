package pl.pgosciniak.milionerzy.controller;

import org.springframework.stereotype.Controller;
import pl.pgosciniak.milionerzy.service.QuestionService;

@Controller
public class QuestionController {
    private final QuestionService questionService;

    public QuestionController(QuestionService questionService) {
        this.questionService = questionService;
    }


}
