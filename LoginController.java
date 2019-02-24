package com.amazon.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController 
{
	@Autowired
	LoginService Service;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String showLoginPage()
	{
		return "login";
	}
	
	@RequestMapping(value="/login" , method=RequestMethod.POST)
	public String handleLoginRequest(@RequestParam String name,@RequestParam String password,ModelMap model)
	{
		if(!Service.validateUser(name, password))
		{
			model.put("errorMessage","Invalid Credentials");
			return "login";
		}
		
		return "welcome";
		
	}
}