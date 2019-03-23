package com.amazon.profile;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("email")
public class ProfileController 
{
	@Autowired
	ProfileServiceDao Service;
	
	@RequestMapping(value="/user-profile", method=RequestMethod.GET)
	public void showUserProfile(ModelMap model)
	{
		Service.viewProfile((String)model.get("email"));
	}
	
	@RequestMapping(value="/user-profile/update" , method=RequestMethod.POST)
	public String updateProfile(ModelMap model,@RequestParam String name,@RequestParam String address,@RequestParam long phone,@RequestParam String password,@RequestParam String photo,@RequestParam char gender) // type of user
	{
		Service.updateProfile((String) model.get("email"));
		return "updateProfile";
	}
	
	///another method to make password
	
	@RequestMapping(value="/user-profile/history" , method=RequestMethod.POST)
	public String viewHistory(ModelMap model)
	{
		String user = (String) model.get("email");
		List<History> history=Service.viewHistory(user);
		model.addAttribute("history", history);
		model.clear();
		return "history";
	}
	
	
}
