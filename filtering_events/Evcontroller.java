package com.amazon.controller;
import java.util.List;    
import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;     
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
	 @RequestMapping(value="/sortgenre/{genre}")    
	    public String sortgen(@PathVariable String genre, Model m){    
		 List<Events> listg=dao.getEventByGenre(genre);    
	        m.addAttribute("listg",listg);  
	        return "sortgenre";    
	    }


}