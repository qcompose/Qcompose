package co.usassoc.qcomposer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ANSWER_OPTIONS")
public class AnswerOptions {
	
	@Id
    @Column(name = "OPTION_ID")
    @GeneratedValue
	private String optionId;
	

	@Id
    @Column(name = "OPTION_BODY")
	private String optionBody;
	
	public String getOptionId() {
		return optionId;
	}
	public void setOptionId(String optionId) {
		this.optionId = optionId;
	}
	public String getOptionBody() {
		return optionBody;
	}
	public void setOptionBody(String optionBody) {
		this.optionBody = optionBody;
	}
	

}
