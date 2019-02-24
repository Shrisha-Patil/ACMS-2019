package com.amazon.amazonwebapp.signup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SignupController 
{
	@Autowired
	SignupService Service;
	
	@RequestMapping(value="/sign-up", method=RequestMethod.GET)
	public String showSignupPage()
	{
		return "signup";
	}
	
	@RequestMapping(value="/sign-up" , method=RequestMethod.POST)
	public String handleSignupData(@RequestParam String email,@RequestParam String name,@RequestParam String password,@RequestParam long phone,@RequestParam char gender,ModelMap model)
	{
		if(!Service.checkUserExistance(email))
		{
			model.put("errorMessage","User Exits ! Try another E-mail Id.");
			return "signup";
		}
		else
		{
			Service.addUser();
			return "welcome";
		}
	}
}
