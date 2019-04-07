package com.amazon.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.amazon.dao.Eventsdao;
import com.amazon.model.Events;

@Controller 
public class Evcontroller {
	@Autowired    
    Eventsdao dao;
	
	@RequestMapping("/showpage")
	 public String showpage(Model m){    
	        List<Events> list=dao.getEvents();    
	        m.addAttribute("list",list);  
	        return "showpage";    
	    }
	
	@RequestMapping(value="/sortcat/{category}")    
	    public String sortcatg(@PathVariable String category, Model m){    
		 List<Events> listc=dao.getEventByCategory(category);    
	        m.addAttribute("listc",listc);  
	        return "sortcat";    
	    }
	@RequestMapping(value="/sortgenre/{category}/{genre}")    
	    public String sortgen(@PathVariable("category") String category,@PathVariable("genre")String genre, Model m) {    
		 List<Events> listg=dao.getEventByGenre(category,genre);    
	        m.addAttribute("listg",listg);  
	        return "sortgenre";    
	    }
	@RequestMapping(value="/")    
	    public String trend(Model m){    
		 List<Events> listcate=dao.getEventTrending();    
	        m.addAttribute("listcate",listcate); 
	        List<Events> list=dao.getEvents();    
	        m.addAttribute("list",list);
	        return "index";    
	    }
	@RequestMapping(value="/search/{city}")    
	    public String sortcity(@PathVariable String city, Model m){    
		 List<Events> listci=dao.getEventByCity(city);    
	        m.addAttribute("listci",listci);  
	        return "search";    
	    }
	 

}
