package co.usassoc.qcomposer.service.api;

import co.usassoc.qcomposer.model.Questionnaire;

public interface QuestionnaireService {
	
public boolean addQuestionnaire(Questionnaire questionnaire);
	
    public void removeQuestionnaire(Integer questionnaireId);

}
