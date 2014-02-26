package co.usassoc.qcomposer.model;

public class Question {

	private int questionId;
	private String questionText; 
	private String questionType; //radio,multiselect, checkbox ,text, ect
	private String answerOptions; //answer options like answer1,answer2, answer3...
	
	
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
	
	public String getAnswerOptions() {
		return answerOptions;
	}
	public void setAnswerOptions(String answerOptions) {
		this.answerOptions = answerOptions;
	}
	
}
