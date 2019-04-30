package com.amazon.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model; 
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;

import com.amazon.dao.Eventsdao;
import com.amazon.model.Events;

@Controller 
public class Evcontroller {
	@Autowired    
    Eventsdao dao;
	
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
	        List<Events> listm=dao.getMovies();
	        m.addAttribute("listm",listm);
	        List<Events> lists=dao.getSports();
	        m.addAttribute("lists",lists);
	        List<Events> listd=dao.getDramas();
	        m.addAttribute("listd",listd);
	        List<Events> listst=dao.getStandup();
	        m.addAttribute("listst",listst);
	        
	        return "search";    
	    }
	@RequestMapping(value="search/inevent/{event_id}")    
    public String inevent(@PathVariable("event_id") String event_id, Model m) {    
	 List<Events> listev=dao.getIndividualEvent(event_id);    
        m.addAttribute("listev",listev);  
        return "inevent";    
    }
	 

}
