package co.usassoc.qcomposer.model;

import java.util.List;

public class QuestionAndAnswerOptions {
	
	private int questionId;
	private String questionText; 
	private String questionType;
	private List answerOptions;
	
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public String getQuestionText() {
		return questionText;
	}
	public void setQuestionText(String questionText) {
		this.questionText = questionText;
	}
	public String getQuestionType() {
		return questionType;
	}
	public void setQuestionType(String questionType) {
		this.questionType = questionType;
	}
	public List getAnswerOptions() {
		return answerOptions;
	}
	public void setAnswerOptions(List answerOptions) {
		this.answerOptions = answerOptions;
	}
	

}
