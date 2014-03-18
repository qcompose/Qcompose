package co.usassoc.qcomposer.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.IndexColumn;


@Entity
@Table(name = "QUESTION")
public class Question {

	@Id
    @Column(name = "QUESTION_ID")
    @GeneratedValue
	private int questionId;
	
	@Column(name = "QUESTION_TEXT")
	private String questionText; 
	
	@Column(name = "QUESTION_TYPE")
	private String questionType; //radio,multiselect, checkbox ,text, ect
	
	@ManyToOne
    @JoinColumn(name="questionnaire_id")
	private Questionnaire questionnaire;
	
	@OneToMany(cascade={CascadeType.ALL})
    @JoinColumn(name="question_id")
    private List<AnswerOptions> answerOptions;
	
	public List<AnswerOptions> getAnswerOptions() {
		return answerOptions;
	}
	public void setAnswerOptions(List<AnswerOptions> answerOptions) {
		this.answerOptions = answerOptions;
	}
	public Questionnaire getQuestionnaire() {
		return questionnaire;
	}
	public void setQuestionnaire(Questionnaire questionnaire) {
		this.questionnaire = questionnaire;
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
	
	
	
}
