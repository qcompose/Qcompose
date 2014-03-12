package co.usassoc.qcomposer.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.IndexColumn;

@Entity
@Table(name = "QUESTIONNAIRE" ,uniqueConstraints = {
		@UniqueConstraint(columnNames = "TITLE") })
public class Questionnaire {
	
	@Id
    @Column(name = "QUESTIONNAIRE_ID")
    @GeneratedValue
	private int questionnaireId;
	
	@Column(name = "TITLE",unique = true, nullable = false)
	private String title;
	
	@Column(name = "ORGNAME")
	private String orgName;
	
	@Column(name = "CREATED_BY")
	private String createdBy;
	
	@Column(name = "UPDATED_BY")
	private String updatedBy;
	
	@OneToMany(cascade={CascadeType.ALL})
    @JoinColumn(name="questionnaire_id")
    @IndexColumn(name="question_index")
    private List<Question> questions;
	
	
	public List<Question> getQuestions() {
		return questions;
	}
	public void setQuestions(List<Question> questions) {
		this.questions = questions;
	}
	public int getQuestionId() {
		return questionnaireId;
	}
	public void setQuestionId(int questionId) {
		this.questionnaireId = questionId;
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
	
	

}
