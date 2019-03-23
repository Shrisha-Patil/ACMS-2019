package com.amazon.signup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("email")
public class SignupController 
{
	@Autowired
	SignupService Service;
	
	@RequestMapping(value="/RegistrationPage", method=RequestMethod.GET)
	public String showSignupPage()
	{
		return "RegistrationPage";
	}
	
	@RequestMapping(value="/RegistrationPage" , method=RequestMethod.POST)
	public String handleSignupData(ModelMap model,@RequestParam String email,@RequestParam String name,@RequestParam String address,@RequestParam long phone,@RequestParam String password,@RequestParam String photo,@RequestParam char gender)
	{ // type of user - customer or manager or both
		
		// manage a photo
		if(!Service.checkUserExistance(email))
		{
			model.put("errorMessage","User Exits ! Try another E-mail Id.");
			return "signup";
		}
		else
		{
			Service.addUser(email,name,address,phone,password,photo,gender);
			return "welcome";
		}
	}
}
