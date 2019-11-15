package pl.pgosciniak.milionerzy.service;

import org.springframework.stereotype.Service;
import pl.pgosciniak.milionerzy.model.Question;
import pl.pgosciniak.milionerzy.repository.QuestionRepository;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

@Service
public class QuestionService {
    private final QuestionRepository questionRepository;

    public QuestionService(QuestionRepository questionRepository) {
        this.questionRepository = questionRepository;
    }

    public List<Question> getFirstQuestion(){
        List<Question> questionList = questionRepository.findAll();
        return (List<Question>) questionList.get(1);
    }


}
