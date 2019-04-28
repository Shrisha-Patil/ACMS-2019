package com.amazon.controller;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Time;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.amazon.dao.Eventdao;
import com.amazon.model.Event;

@Controller 
public class EventController {
	@Autowired    
    Eventdao dao;
	public static String uploadDirectory = System.getProperty("user.dir")+"/Amazon_uploads";
	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	@RequestMapping(value = "/addevent", method = RequestMethod.POST)
	public String addevent(@RequestParam String name,@RequestParam("poster") MultipartFile photo,@RequestParam String trailer,@RequestParam String category,@RequestParam String genre,@RequestParam String synopsis,@RequestParam Time duration,@RequestParam Date date,@RequestParam String cast,HttpSession session) {
		Random rand = new Random();
		int evid = rand.nextInt(100);
		String event_id= Integer.toString(evid);
		session.setAttribute("event_id", event_id);
		Path fn=Paths.get(uploadDirectory, photo.getOriginalFilename());
		String filename=photo.getOriginalFilename();
		try 
		{
			Files.write(fn, photo.getBytes());
		} 
		catch (IOException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dao.insertEvent(event_id,name,filename,trailer,category,genre,synopsis,duration,date,cast);
	    return "AddEvent";
	}
	
	@RequestMapping(value = "/delete/{event_id}", method = RequestMethod.GET)
	public String deleteEvent(@PathVariable String event_id) {
	    dao.delete(event_id);
	    return "dispevents";
	}
	@RequestMapping(value = "/addvenue", method = RequestMethod.POST)
	public String insertVenue(@RequestParam String v_name ,@RequestParam String city,@RequestParam String address,HttpSession session) {
		Random rand = new Random();
		int vid = rand.nextInt(100);
		String venue_id= Integer.toString(vid);
		session.setAttribute("venue_id", venue_id);
		String event_id=(String) session.getAttribute("event_id");
		dao.insertVenue(event_id,venue_id,v_name,city,address);
	    return "AddVenue";
	}
	@RequestMapping(value = "/addshows", method = RequestMethod.POST)
	public String insertShows(@RequestParam Date  date ,@RequestParam Time time,@RequestParam Double cost,@RequestParam String seatstatus,HttpSession session) {
		Random rand = new Random();
		int sid = rand.nextInt(100);
		String show_id= Integer.toString(sid);
		session.setAttribute("show_id", show_id);
		String event_id=(String) session.getAttribute("event_id");
		String venue_id=(String) session.getAttribute("venue_id");
		dao.insertShows(event_id,venue_id,show_id,date,time,cost,seatstatus);
	    return "AddShows";
	}
	@RequestMapping(value="/display/{event_id}")    
    public String dispevents(@PathVariable("event_id") String event_id,Model m) {    
	 List<Event> listev=dao.getEventsbyId(event_id);    
        m.addAttribute("listev",listev);  
        return "dispevents";
	}
	@RequestMapping(value="/display")    
    public String dispVenue(Model m) {    
	 List<Event> listve=dao.getVenues();    
        m.addAttribute("listve",listve);  
        return "dispevents";
	}
	
}
