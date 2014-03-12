package co.usassoc.qcomposer.service.api;

import java.util.List;

import co.usassoc.qcomposer.model.Answer;

public interface AnswerService {
	
	public List<Answer> listAnswer();

    public void removeAnswer(Integer answerId);

}
