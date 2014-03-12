package co.usassoc.qcomposer.dao.api;

import java.util.List;

import co.usassoc.qcomposer.model.Answer;

public interface AnswerDAO {
	
public boolean addAnswer(Answer answer);
	
	public List<Answer> listAnswer();

    public void removeAnswer(Integer answerId);


}
