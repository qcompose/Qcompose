package co.usassoc.qcomposer.model;

import java.util.List;

public class QuestionAndAnswerOptions {
	
	private int questionId;
	private String questionText; 
	private String questionType;
	private String continueToAdd; //hidden variable to decide which url to redirect onClick of 'save&close' and 'save& continue' button
	private List answerOptions;
	private List correctAnswer;
	
	public List getCorrectAnswer() {
		return correctAnswer;
	}
	public void setCorrectAnswer(List correctAnswer) {
		this.correctAnswer = correctAnswer;
	}
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
	public String getContinueToAdd() {
		return continueToAdd;
	}
	public void setContinueToAdd(String continueToAdd) {
		this.continueToAdd = continueToAdd;
	}
	public List getAnswerOptions() {
		return answerOptions;
	}
	public void setAnswerOptions(List answerOptions) {
		this.answerOptions = answerOptions;
	}
	

}
