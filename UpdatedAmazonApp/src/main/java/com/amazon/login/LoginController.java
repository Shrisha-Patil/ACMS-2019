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
public class LoginController 
{
	
	@Autowired
	LoginService service;
	
	String mail;
	String OTP;
	
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

		if (!isValidUser) 
		{
			model.put("errorMessage", "Invalid Credentials");
			return "login";
		}
		
		model.put("email", email);
		return "welcome";
	}
	
	@RequestMapping(value="/ForgotPassword" , method=RequestMethod.GET)
	public String forgot_password() 
	{ 
		return "ForgotPassword";
	}
	
	@RequestMapping(value="/ForgotPassword" , method=RequestMethod.POST)
	public String get_forgot_password(ModelMap model,@RequestParam String email) 
	{
		mail=email;
		//System.out.println(mail);
		if(!service.userExists(mail))
		{
			model.put("errorMessage","User Doesn't Exist !");
			forgot_password();
		}
		
		//System.out.println("YO !");
		
		OTP=service.generateOTP();
		System.out.println(OTP);
		
		// send OTP via Email
		
		return "redirect:/VerifyOTP";
	}
	
	@RequestMapping(value="/VerifyOTP" , method=RequestMethod.GET) 
	public String Verify_OTP()
	{ 
		return "EnterOTP"; 
	}
	 
	
	@RequestMapping(value="/VerifyOTP" , method=RequestMethod.POST)
	public String get_verify_OTP(ModelMap model,@RequestParam String otp) 
	{
		if(OTP.equals(otp))
		{
			return "redirect:/ResetPassword";
		}
		else
		{
			model.put("errorMessage","Invlid OTP");
			return "EnterOTP";
		}
		
	}
	
	@RequestMapping(value="/ResetPassword" , method=RequestMethod.GET)
	public String reset_password() 
	{ 
		return "ResetPassword";
	}
	
	@RequestMapping(value="/ResetPassword" , method=RequestMethod.POST)
	public String get_reset_password(ModelMap model,@RequestParam String password) 
	{
		//System.out.println(password);
		service.changePassword(mail,password);
		
			return "login";
	}
	
	@RequestMapping(value="/Logout" , method=RequestMethod.GET)
	public String logout(ModelMap model)
	{
		model.clear();
		return "redirect:/login";
	}
	
	/*
	 * @RequestMapping(value = "/logout", method = RequestMethod.GET) public String
	 * logout(HttpServletRequest request, HttpServletResponse response) {
	 * Authentication auth = SecurityContextHolder.getContext()
	 * .getAuthentication(); if (auth != null) { new
	 * SecurityContextLogoutHandler().logout(request, response, auth); } return
	 * "redirect:/"; }
	 */
}
