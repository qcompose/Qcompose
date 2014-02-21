package co.usassoc.qcomposer.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import co.usassoc.qcomposer.dao.api.UserDAO;
import co.usassoc.qcomposer.model.Authority;
import co.usassoc.qcomposer.model.User;
import co.usassoc.qcomposer.service.CustomUserDetailsService;


@Repository
public class UserDAOImpl implements UserDAO{
	private static final Logger LOGGER = LoggerFactory.getLogger(UserDAOImpl.class);
		
	@Resource
	private SessionFactory sessionFactory;
	private Authority authority;
	Session session = null;
	Transaction transaction = null;
	
	@Autowired
	private CustomUserDetailsService customUserDetailsService;
	
	public Session getCurrentSession() {
		return this.sessionFactory.getCurrentSession();
	}
	

	@Override
	@Transactional("transactionManager")
	public User getUserByUserName(String userName) {
		Query queryResult;
		queryResult =getCurrentSession().createQuery("from User where username=:userName");
		queryResult.setParameter("userName", new String(userName));
		return (User) queryResult.list().get(0);

	}

	@Override
	public boolean addUser(User user) {
		LOGGER.info("Adding user: " + user);
		 
        try { 
        	session = sessionFactory.openSession();
        	transaction = session.beginTransaction();

        	user.setEnabled(true);
        	authority = new Authority();
        	authority.setAuthority("ROLE_MEMBER");
          Set<Authority> authoritySet = new HashSet<Authority>();
          authoritySet.add(authority);
          user.setAuthoritySet(authoritySet);
          getCurrentSession().save(user);
        	  transaction.commit();
            return true;
        } catch (Exception  e) {
        	try{
        		 transaction.rollback();
            }catch(RuntimeException re){
        		  LOGGER.error("Error in adding User", re);
            }
        String msg = "Error occured in addUser Cause: " + e;
        LOGGER.error(msg);
            
        } finally {
        	if(session !=null)
        		session.close();
        }
       return false;
	}

	@Override
	public List<User> listUser() {
		LOGGER.info("Listing all users ");
        return sessionFactory.getCurrentSession().createQuery("from User").list();
	}

	@Override
	public void removeUser(Integer userId) {
		 User user = (User) sessionFactory.getCurrentSession().load(
				 User.class, userId);
	        if (null != user) {
	        	 user.getAuthoritySet();
	            sessionFactory.getCurrentSession().delete(user);
	        }
	}

	}
	


