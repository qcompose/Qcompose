package co.usassoc.qcomposer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import co.usassoc.qcomposer.dao.api.QuestionDAO;
import co.usassoc.qcomposer.model.Question;
import co.usassoc.qcomposer.service.api.QuestionService;

@Service
public class QuestionServiceImpl implements QuestionService{
	  @Autowired
	  private QuestionDAO questionDAO;

	  @Transactional
	public boolean addQuestion(Question question) {
		return questionDAO.addQuestion(question);
	}

	  @Transactional
	public List<Question> listQuestion() {
		return questionDAO.listQuestion();
	}

	  @Transactional
	public void removeQuestion(Integer questionId) {		
		  questionDAO.removeQuestion(questionId);
	}

}
