package co.usassoc.qcomposer.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ANSWER_OPTIONS")
public class AnswerOptions implements Serializable{
	
	
	@Id
    @Column(name = "OPTION_ID")
    @GeneratedValue
	private Integer optionId;
	
	@Column(name = "OPTION_BODY")
	private String optionBody;
	
	@ManyToOne
    @JoinColumn(name="question_id")
	private Question question;
	
	@Column(name ="CORRECT_ANSWER")
	private String correctAnswer;
	
	public Integer getOptionId() {
		return optionId;
	}
	public void setOptionId(Integer optionId) {
		this.optionId = optionId;
	}
	
	public String getCorrectAnswer() {
		return correctAnswer;
	}
	public void setCorrectAnswer(String correctAnswer) {
		this.correctAnswer = correctAnswer;
	}
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	
	public String getOptionBody() {
		return optionBody;
	}
	public void setOptionBody(String optionBody) {
		this.optionBody = optionBody;
	}
	

}
