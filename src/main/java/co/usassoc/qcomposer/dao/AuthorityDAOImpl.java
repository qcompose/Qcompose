package co.usassoc.qcomposer.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.usassoc.qcomposer.dao.api.AuthorityDAO;
import co.usassoc.qcomposer.model.Authority;

	
	@Repository
	public class AuthorityDAOImpl implements AuthorityDAO {
		
		 private static final Logger LOGGER = LoggerFactory.getLogger(CustomerDAOImpl.class);
		@Autowired
		private SessionFactory sessionFactory;
		private Authority authority;
		
		private Session getCurrentSession() {
			return sessionFactory.getCurrentSession();
		}

		public Authority getRole(int id) {
			LOGGER.info("Get authority: " );
			Authority role = (Authority) getCurrentSession().load(Authority.class, id);
			return role;
		}
		
		 

	}



