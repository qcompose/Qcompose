package co.usassoc.qcomposer.model;

import java.util.List;

public class QuestionAndAnswerOptions {
	
	private int questionId;
	private String questionText; 
	private String questionType;
	private List answerOptions;
	private List correctAnswer;
	private int questionnaireId;
	private String title;
	private String orgName;
	private String createdBy;
	private String updatedBy;
	
	
	public int getQuestionnaireId() {
		return questionnaireId;
	}
	public void setQuestionnaireId(int questionnaireId) {
		this.questionnaireId = questionnaireId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}
	
	
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
	public List getAnswerOptions() {
		return answerOptions;
	}
	public void setAnswerOptions(List answerOptions) {
		this.answerOptions = answerOptions;
	}
	

}
