package com.amazon.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("email")
public class LoginController {
	
	@Autowired
	LoginService service;
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model)
	{
		return "login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String showWelcomePage(ModelMap model, @RequestParam String username, @RequestParam String pw)
	{
		String email=username;
		String password=pw;
		boolean isValidUser = service.validateUser(email, password);

		System.out.println(isValidUser);
		if (!isValidUser) 
		{
			model.put("errorMessage", "Invalid Credentials");
			return "login";
		}
		
		model.put("email", email);
		
		return "welcome";
	}
	
	/*
	 * @RequestMapping(value = "/logout", method = RequestMethod.GET) public String
	 * logout(HttpServletRequest request, HttpServletResponse response) {
	 * Authentication auth = SecurityContextHolder.getContext()
	 * .getAuthentication(); if (auth != null) { new
	 * SecurityContextLogoutHandler().logout(request, response, auth); } return
	 * "redirect:/"; }
	 */
	
	@RequestMapping(value="/forgot-password" , method=RequestMethod.GET)
	public String forgot_password() 
	{ 
		//OTP generation
		return "ForgotPassword";
	}
	
	@RequestMapping(value="/forgot-password" , method=RequestMethod.POST)
	public String verify_otp() 
	{
		return "reset_password";
	}
	
	/*
	 * @RequestMapping(value="/reset-password" , method=RequestMethod.GET) public
	 * String change_password() { return "reset_password"; }
	 */
	
	@RequestMapping(value="/reset-password" , method=RequestMethod.POST)
	public String reset_password() 
	{
		return "reset_password";
	}
}
