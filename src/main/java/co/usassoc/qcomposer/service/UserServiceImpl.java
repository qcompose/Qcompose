package co.usassoc.qcomposer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import co.usassoc.qcomposer.dao.api.UserDAO;
import co.usassoc.qcomposer.model.User;
import co.usassoc.qcomposer.service.api.UserService;

	@Service
	@Transactional
	public class UserServiceImpl implements UserService {
		
		@Autowired
		private UserDAO userDAO;
	

		@Transactional
		public User getUserByUserName(String userName) {
			return userDAO.getUserByUserName(userName);
		}
		
		@Transactional
		 public boolean addUser(User user) {
		    return userDAO.addUser(user);
		}
		
		 @Transactional
		 public List<User> listUser() {

		        return userDAO.listUser();
		    }

		  @Transactional
		  public void removeUser(Integer userId) {
		    	userDAO.removeUser(userId);
		   }

	}



