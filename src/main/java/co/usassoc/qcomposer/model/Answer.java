package co.usassoc.qcomposer.model;

import javax.persistence.*;

@Entity
@Table(name = "ANSWER")
public class Answer {
	
	@Id
	@Column(name = "ANSWER_ID")
	@GeneratedValue
	private int answerId;
	
	@Column(name = "ANSWER_BODY")
	private String answerBody;
	
	@Column(name = "ANSWER_INT")
	private int anwerInt;
	
	
	public int getAnswerId() {
		return answerId;
	}
	public void setAnswerId(int answerId) {
		this.answerId = answerId;
	}
	public String getAnswerBody() {
		return answerBody;
	}
	public void setAnswerBody(String answerBody) {
		this.answerBody = answerBody;
	}
	public int getAnwerInt() {
		return anwerInt;
	}
	public void setAnwerInt(int anwerInt) {
		this.anwerInt = anwerInt;
	}
	

}
