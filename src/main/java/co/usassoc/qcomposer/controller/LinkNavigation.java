package co.usassoc.qcomposer.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.usassoc.qcomposer.model.User;
import co.usassoc.qcomposer.service.api.UserService;

@Controller
public class LinkNavigation {
	
	@Autowired
    private UserService userService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView homePage() {
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="**/index", method=RequestMethod.GET)
	public ModelAndView indexPage() {
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="**/success-login", method=RequestMethod.GET)
	public ModelAndView signInPage() {
		return new ModelAndView("success-login");
	}
	
	 @RequestMapping(value = "secure/add", method = RequestMethod.GET)
	    public String loadAddUser(Map<String, Object> map) {
	        map.put("user", new User());
	        return "user";
	    }
	 
	 @RequestMapping("**/secure/list")
	    public String listUser(Map<String, Object> map) {

	        map.put("user", new User());
	        map.put("userList", userService.listUser());
	        return "listUsers";
	    }

	    @RequestMapping(value = "**/secure/add", method = RequestMethod.GET)
	    public String addUser(@ModelAttribute("user") @Valid User user, BindingResult result) {
	        if (result.hasErrors()) {
	            return "user";
	        }
	        userService.addUser(user);
	        return "redirect:success-login";
	    }

	    @RequestMapping("**/secure/delete/{userId}")
	    public String deleteUser(@PathVariable("userId") Integer userId) {
	    	userService.removeUser(userId);
	        return "redirect:secure/list";
	    }
	
	
}
