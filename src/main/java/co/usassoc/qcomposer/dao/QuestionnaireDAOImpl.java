package co.usassoc.qcomposer.dao;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;

import co.usassoc.qcomposer.dao.api.QuestionnaireDAO;
import co.usassoc.qcomposer.model.Questionnaire;
import co.usassoc.qcomposer.model.User;

@Repository
public class QuestionnaireDAOImpl implements QuestionnaireDAO{
	
	 private static final Logger LOGGER = LoggerFactory.getLogger(CustomerDAOImpl.class);
	    @Autowired
	    private SessionFactory sessionFactory;


	@Override
	public boolean addQuestionnaire(Questionnaire questionnaire) {
		 LOGGER.info("Adding Questionnaire: " + questionnaire);
	        try {
	        	User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	    		String createdBy = user.getUsername();
	    		questionnaire.setCreatedBy(createdBy);
	            sessionFactory.getCurrentSession().merge(questionnaire);
	            return true;
	        } catch (Exception e) {
	            LOGGER.error("Error in adding Questionnaire", e);
	        }
		return false;
	}

	@Override
	public void removeQuestionnaire(Integer questionnaireId) {
		 LOGGER.info("Delete Questionnaire: " + questionnaireId);
		Questionnaire questionnaire = (Questionnaire) sessionFactory.getCurrentSession().load(
				Questionnaire.class, questionnaireId);
	        if (null != questionnaire) {
	            sessionFactory.getCurrentSession().delete(questionnaire);
	        }

		
	}

}
