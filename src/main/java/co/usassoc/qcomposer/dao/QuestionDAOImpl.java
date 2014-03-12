package co.usassoc.qcomposer.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.usassoc.qcomposer.dao.api.QuestionDAO;
import co.usassoc.qcomposer.model.Question;

@Repository
public class QuestionDAOImpl implements QuestionDAO {

	 private static final Logger LOGGER = LoggerFactory.getLogger(QuestionDAOImpl.class);
	
    @Autowired
	private SessionFactory sessionFactory;
	    
	@Override
	public boolean addQuestion(Question question) {
		 LOGGER.info("Adding question: " + question);
	        try {
	            sessionFactory.getCurrentSession().save(question);
	            return true;
	        } catch (Exception e) {
	            LOGGER.error("Error in adding Question", e);
	        }
	        return false;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Question> listQuestion() {
		  LOGGER.info("Listing all questions ");
		return sessionFactory.getCurrentSession().createQuery("from Question").list();
	}

	@Override
	public void removeQuestion(Integer questionId) {
		LOGGER.info("Deleting question: " + questionId);
		Question question = (Question) sessionFactory.getCurrentSession().load(
				Question.class, questionId);
        if (null != question) {
            sessionFactory.getCurrentSession().delete(question);
        }

    
	}

}
