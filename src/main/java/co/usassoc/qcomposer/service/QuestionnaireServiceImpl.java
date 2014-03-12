package co.usassoc.qcomposer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import co.usassoc.qcomposer.dao.api.QuestionnaireDAO;
import co.usassoc.qcomposer.model.Questionnaire;
import co.usassoc.qcomposer.service.api.QuestionnaireService;

@Service
public class QuestionnaireServiceImpl implements QuestionnaireService{
	
	@Autowired
	private QuestionnaireDAO questionnaireDAO;

	@Transactional
	public boolean addQuestionnaire(Questionnaire questionnaire) {
		return questionnaireDAO.addQuestionnaire(questionnaire);
	}

	@Transactional
	public void removeQuestionnaire(Integer questionnaireId) {
		questionnaireDAO.removeQuestionnaire(questionnaireId);
	}

}
