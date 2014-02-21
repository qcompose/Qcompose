package co.usassoc.qcomposer.service.api;

import java.util.List;

import co.usassoc.qcomposer.model.User;

public interface UserService {
	
	public User getUserByUserName(String userName);  
	
	public boolean addUser(User user);

    public List<User> listUser();

    public void removeUser(Integer userId);

}
