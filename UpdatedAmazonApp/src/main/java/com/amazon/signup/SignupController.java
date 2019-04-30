package com.amazon.signup;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

@Controller
//@SessionAttributes("email")
public class SignupController 
{	
	@Autowired
	SignupService Service;
	
	public static String uploadDirectory = System.getProperty("user.dir")+"/Amazon_uploads";
	
	@RequestMapping(value="/RegistrationPage", method=RequestMethod.GET)
	public String showSignupPage()
	{
		return "RegistrationPage";
	}
	
	@RequestMapping(value="/RegistrationPage" , method=RequestMethod.POST)
	public String handleSignupData(ModelMap model,@RequestParam String name,@RequestParam long phone_number,@RequestParam String email,@RequestParam String password,@RequestParam String city,@RequestParam("profile_photo") MultipartFile photo,@RequestParam String gender)
	{ 
		// type of user - customer or manager or both
		
		if(Service.checkUserExistance(email))
		{
			model.put("errorMessage","User Exits ! Try another E-mail Id.");
			return "RegistrationPage";
		}
		else
		{
			Path fn=Paths.get(uploadDirectory, photo.getOriginalFilename());
			String filename=photo.getOriginalFilename();
			//System.out.println(filename);
			
			//System.out.println(fn.toString().equals("E:\\SpringToolSuite-Workspace\\UpdatedAmazonWebApp - Copy\\Amazon_uploads"));
			
			if(!fn.toString().equals("E:\\SpringToolSuite-Workspace\\UpdatedAmazonWebApp - Copy\\Amazon_uploads"))
			{
				try 
				{
					Files.write(fn, photo.getBytes());
				} 
				catch (IOException e) 
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			System.out.println(filename);
			
			char g;
			if(gender.equals("Female"))
				g='F';
			else if(gender.equals("Male"))
				g='M';
			else
				g='N';
			
			//System.out.println(name+"\n"+phone_number+"\n"+email+"\n"+password+"\n"+city+"\n\n"+gender);
			Service.addUser(name,phone_number,email,password,city,filename,g);
			return "welcome1";
		}
	}
}
