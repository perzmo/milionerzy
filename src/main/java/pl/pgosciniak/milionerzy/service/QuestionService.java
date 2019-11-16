package pl.pgosciniak.milionerzy.service;

import org.springframework.stereotype.Service;
import pl.pgosciniak.milionerzy.model.Question;
import pl.pgosciniak.milionerzy.repository.QuestionRepository;


import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

@Service
public class QuestionService {
    private final QuestionRepository questionRepository;
    private Set<Integer> numbersList = new HashSet<>();

    public QuestionService(QuestionRepository questionRepository) {
        this.questionRepository = questionRepository;
    }

    public Question getFirstQuestion(){
        List<Question> questionList = questionRepository.findAll();
        int randomNumber = generateRandomNumber();
        while (numbersList.contains(randomNumber)){
            randomNumber = generateRandomNumber();
        }
        numbersList.add(randomNumber);
        return  questionList.get(randomNumber);
    }

    private int generateRandomNumber() {
        return new Random().nextInt(12);
    }
}
