package co.usassoc.qcomposer.service.api;

import java.util.List;

import co.usassoc.qcomposer.model.Question;

public interface QuestionService {
	
	public boolean addQuestion(Question question);
	
	public List<Question> listQuestion();

    public void removeQuestion(Integer questionId);


}
