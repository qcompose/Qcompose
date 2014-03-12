package co.usassoc.qcomposer.dao.api;

import co.usassoc.qcomposer.model.Questionnaire;

public interface QuestionnaireDAO {
	
	public boolean addQuestionnaire(Questionnaire questionnaire);
	
    public void removeQuestionnaire(Integer questionnaireId);

}
