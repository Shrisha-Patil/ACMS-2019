package com.amazon.profile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

@Controller
@SessionAttributes("email")
public class ProfileController 
{
	@Autowired
	ProfileService Service;
	
	public static String uploadDirectory = System.getProperty("user.dir")+"/Amazon_uploads";
	
	@RequestMapping(value="/UserProfile", method=RequestMethod.GET)
	public String showUserProfile(ModelMap model)
	{		
		String name = null;
		String add = null;
		long ph = 0;
		String pho = null;
		String g = null;
		List<String> details;
		details=Service.viewProfile((String)model.get("email"));
		
		name=details.get(0);
		add=details.get(1);
		ph=Long.parseLong(details.get(2));
		pho=details.get(3);
		g=details.get(4);
		
		model.put("name", name);
		model.put("address",add);
		model.put("phone_no",ph);
		model.put("gender",g);
		model.put("photo",pho);
		
		return "UserProfile";
	}
	
	@RequestMapping(value="/UpdateProfile", method=RequestMethod.GET)
	public String showUpdateProfile(ModelMap model)
	{
		String name = null;
		String add = null;
		long ph = 0;
		String pho = null;
		String g = null;
		List<String> details;
		details=Service.viewProfile((String)model.get("email"));
		
		name=details.get(0);
		add=details.get(1);
		ph=Long.parseLong(details.get(2));
		pho=details.get(3);
		g=details.get(4);
		
		model.put("name", name);
		model.put("address",add);
		model.put("phone_no",ph);
		model.put("gender",g);
		model.put("photo",pho);
		
		return "UpdateProfile";
	}
	
	@RequestMapping(value="/UpdateProfile" , method=RequestMethod.POST)
	public String updateProfile(ModelMap model,@RequestParam String name,@RequestParam long phone_number,@RequestParam String city,@RequestParam("profile_photo") MultipartFile photo,@RequestParam String gender)
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
		
		
		System.out.println(name+"\n"+phone_number+"\n"+city+"\n\n"+gender);
		Service.updateProfile((String) model.get("email"),name,phone_number,city,filename,g);
		return "UserProfile";
	}
	
	@RequestMapping(value="/History" , method=RequestMethod.GET)
	public String viewHistory(ModelMap model)
	{
		String user = (String) model.get("email");
		model.addAttribute("history",Service.viewHistory(user));
		return "ViewBookingHistory";
	}
	
	
	/*
	 * @RequestMapping(value = "/logout", method = RequestMethod.GET) 
	 * public String logout(HttpServletRequest request, HttpServletResponse response) 
	 * {
	 * Authentication auth = SecurityContextHolder.getContext()
	 * .getAuthentication(); if (auth != null) { new
	 * SecurityContextLogoutHandler().logout(request, response, auth); } return
	 * "redirect:/"; 
	 * }
	 */
	 
	
	
}
