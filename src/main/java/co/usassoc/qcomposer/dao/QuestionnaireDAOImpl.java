package co.usassoc.qcomposer.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
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
	
	 private static final Logger LOGGER = LoggerFactory.getLogger(QuestionnaireDAOImpl.class);
	    @Autowired
	    private SessionFactory sessionFactory;
	    Session session = null;
		Transaction transaction = null;
		
		public Session getCurrentSession() {
			return this.sessionFactory.getCurrentSession();
		}
	

	@Override
	public boolean addQuestionnaire(Questionnaire questionnaire) {
		 LOGGER.info("Adding Questionnaire: " + questionnaire);
	        try {
	        	session = sessionFactory.openSession();
	        	transaction = session.beginTransaction();
	        	User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	    		String createdBy = user.getUsername();
	    		questionnaire.setCreatedBy(createdBy);
	            getCurrentSession().merge(questionnaire);
	            transaction.commit();
	            return true;
	        } catch (Exception e) {
		        	try{
		        		 transaction.rollback();
		            }catch(RuntimeException re){
		        		  LOGGER.error("Error in adding User", re);
		            }
		        String msg = "Error in adding Questionnaire"  + e;
		        LOGGER.error(msg);
	        }
	        finally {
	        	if(session !=null)
	        		session.close();
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
