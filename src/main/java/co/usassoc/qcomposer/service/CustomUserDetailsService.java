package co.usassoc.qcomposer.service;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.dao.DataAccessException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import co.usassoc.qcomposer.model.Authority;
import co.usassoc.qcomposer.model.User;
import co.usassoc.qcomposer.service.api.UserService;



@Repository("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {
	
	@Resource
	private UserService userService;
	
	public CustomUserDetailsService()
	{
	}

	public CustomUserDetailsService(UserService userService) {
		this.userService = userService;
	}
	
	public UserDetails loadUserByUsername(String userName)
			throws UsernameNotFoundException, DataAccessException {
		User user;
		List<String> authorityList=new ArrayList<String>();
		String authority;
		try {
			user = userService.getUserByUserName(userName);
		} catch (Exception e) {
			throw new UsernameNotFoundException(
					"getUserByUserName returned null.");
		}
		Set<Authority> authoritySet=user.getAuthoritySet();
		Iterator<Authority> authoritySetIterator=authoritySet.iterator();
		while(authoritySetIterator.hasNext())
		{
			authority=authoritySetIterator.next().getAuthority();
			authorityList.add(authority);
		}
		user.setUserAuthorities(authorityList);
		return (UserDetails) user;
	}
}
