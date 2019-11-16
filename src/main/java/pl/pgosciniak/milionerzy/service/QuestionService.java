package pl.pgosciniak.milionerzy.service;

import org.springframework.stereotype.Service;
import pl.pgosciniak.milionerzy.model.Question;
import pl.pgosciniak.milionerzy.repository.QuestionRepository;

import java.util.*;

@Service
public class QuestionService {
    private final QuestionRepository questionRepository;
    private List listOfNumbers = new ArrayList();

    public QuestionService(QuestionRepository questionRepository) {
        this.questionRepository = questionRepository;
    }

    public Question getFirstQuestion(){
        List<Question> questionList = questionRepository.findAll();
        return questionList.get(1);
    }

    public int generateRandomNumber() {
        return new Random(5 + 1).nextInt();
    }
}
