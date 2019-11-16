package pl.pgosciniak.milionerzy.service;

import org.springframework.stereotype.Service;
import pl.pgosciniak.milionerzy.model.Question;
import pl.pgosciniak.milionerzy.repository.QuestionRepository;


import java.util.List;

@Service
public class QuestionService {
    private final QuestionRepository questionRepository;

    public QuestionService(QuestionRepository questionRepository) {
        this.questionRepository = questionRepository;
    }

    public Question getFirstQuestion(){
        List<Question> questionList = questionRepository.findAll();
        return  questionList.get(1);
    }


}
