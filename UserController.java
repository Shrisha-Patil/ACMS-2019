package com.amazon.amazonwebapp.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController 
{
	@Autowired
	UserService Service;
	
	@RequestMapping(value="/user-profile", method=RequestMethod.GET)
	public String showUserProfile()
	{
		return "userprofile";
	}
	
	@RequestMapping(value="/user-profile/update" , method=RequestMethod.POST)
	public String updateProfile(@RequestParam String email,ModelMap model)
	{
		Service.updateProfile();
		return "updateProfile";
	}
	
	@RequestMapping(value="/user-profile/history" , method=RequestMethod.POST)
	public String viewHistory(@RequestParam String email)
	{
		Service.viewHistory();
		return "history";
	}
	
	
}
