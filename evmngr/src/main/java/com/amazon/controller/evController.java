package com.amazon.controller;

import java.sql.Time;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.amazon.dao.eventDaoImpl;
import com.amazon.model.Event;

public class evController {
	@Autowired
    private eventDaoImpl eventdao;
	
	@RequestMapping(value = "/delete/{event_id}", method = RequestMethod.GET)
	public String deleteEvent(@PathVariable String event_id) {
	    eventdao.delete(event_id);
	    return "DeleteEvent";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String insertEvent(@RequestParam String name,@RequestParam String poster,@RequestParam String trailer,@RequestParam String category,@RequestParam String genre,@RequestParam String synopsis,@RequestParam Time duration,@RequestParam Date date,@RequestParam String cast,HttpSession session) {
		Random rand = new Random();
		int evid = rand.nextInt(100);
		String event_id= Integer.toString(evid);
		session.setAttribute("event_id", event_id);
		eventdao.insertEv(event_id,name,poster,trailer,category,genre,synopsis,duration,date,cast);
	    return "insertEvent";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String insertVenue(@RequestParam String v_name ,@RequestParam String city,@RequestParam String address,HttpSession session) {
		Random rand = new Random();
		int vid = rand.nextInt(100);
		String venue_id= Integer.toString(vid);
		session.setAttribute("venue_id", venue_id);
		eventdao.insertVe(venue_id,v_name,city,address);
	    return "insertVenue";
	}
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String insertShows(@RequestParam Date  date ,@RequestParam Time time,@RequestParam Double cost,@RequestParam String seatstatus,HttpSession session) {
		Random rand = new Random();
		int sid = rand.nextInt(100);
		String show_id= Integer.toString(sid);
		session.setAttribute("show_id", show_id);
		String event_id=(String) session.getAttribute("event_id");
		String venue_id=(String) session.getAttribute("venue_id");
		eventdao.insertSh(event_id,venue_id,show_id,date,time,cost,seatstatus);
	    return "AddEvent";
	}
	@RequestMapping(value="/display/{event_id}")    
    public String dispevents(@PathVariable("event_id") String event_id,Model m) {    
	 List<Event> listev=eventdao.getEventsbyId(event_id);    
        m.addAttribute("listev",listev);  
        return "dispevents";
	}
	@RequestMapping(value="/display")    
    public String dispVenue(Model m) {    
	 List<Event> listve=eventdao.getVenues();    
        m.addAttribute("listve",listve);  
        return "dispevents";
	}
	
}

