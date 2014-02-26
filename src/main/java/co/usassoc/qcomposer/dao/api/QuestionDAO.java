package co.usassoc.qcomposer.dao.api;

import java.util.List;

import co.usassoc.qcomposer.model.Question;

public interface QuestionDAO {
	
public boolean addQuestion(Question question);
	
	public List<Question> listQuestion();

    public void removeQuestion(Integer questionId);

}
