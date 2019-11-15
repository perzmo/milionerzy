package pl.pgosciniak.milionerzy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.pgosciniak.milionerzy.model.Question;


public interface QuestionRepository extends JpaRepository<Question, Integer> {
}
