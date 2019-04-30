package com.amazon.event;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Time;
import java.util.Date;
import java.util.List;
import java.util.Random;

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
public class EventController 
{
	public static String uploadDirectory = System.getProperty("user.dir")+"/Amazon_uploads";
	
	@Autowired
	EventService service;
	
	@RequestMapping(value="/EventManager", method = RequestMethod.GET)
	public String showEventPage(ModelMap model)
	{
		String user = (String) model.get("email");
		
		List<Event> list=service.getAllEvents(user);
		System.out.println(list.toString());
		
		model.addAttribute("event",service.getAllEvents(user));
		return "EventManager";
	}

	@RequestMapping(value="/AddEvent", method = RequestMethod.GET)
	public String AddEventShow(ModelMap model)
	{
		return "AddEvent";
	}
	
	@RequestMapping(value="/AddEvent", method = RequestMethod.POST)
	public String addEventPage(ModelMap model, @RequestParam String name,@RequestParam("poster") MultipartFile poster,@RequestParam String trailer,@RequestParam String category,@RequestParam String genre,@RequestParam String synopsis,@RequestParam String duration,@RequestParam Date date,@RequestParam String cast)
	{
		String ev_id=null;
		// change addevent.jsp input duration
		System.out.println("YEs");
		Path fn=Paths.get(uploadDirectory, poster.getOriginalFilename());
		String filename=poster.getOriginalFilename();
		try 
		{
			System.out.println("YEs1");
			Files.write(fn, poster.getBytes());
		} 
		catch (IOException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("YEs2");
		
		service.insertEvent(name,filename,trailer,category,genre,synopsis,duration,date,cast);
		model.put("event_id", ev_id);
		return "AddEvent";
		
	}
	
	@RequestMapping(value = "/DeleteEvent", method = RequestMethod.GET)
	public String deleteEvent(ModelMap model,@RequestParam int id) 
	{
		service.deleteEvent(id);

		return "redirect:/EventManager";
	}
	
	
	@RequestMapping(value = "/AddVenue", method = RequestMethod.GET)
	public String insertVenuePage(ModelMap model) 
	{
		return "AddVenue";
	}
	
	@RequestMapping(value = "/AddVenue", method = RequestMethod.POST)
	public String insertVenue(ModelMap model,@RequestParam String v_name ,@RequestParam String city,@RequestParam String address) 
	{
		String event_id=(String)model.get("event_id");
		
		Random rand = new Random();
		int vid = rand.nextInt(100);
		String venue_id= Integer.toString(vid);
		
		model.put("venue_id",venue_id);		
		service.insertVenue(event_id,venue_id,v_name,city,address);
	    return "redirect:/AddShows";
	}
	
	@RequestMapping(value = "/AddShows", method = RequestMethod.GET)
	public String insertShowPage(ModelMap model) 
	{
		return "AddShows";
	}
	
	@RequestMapping(value = "/AddShows", method = RequestMethod.POST)
	public String insertShow(ModelMap model,@RequestParam Date  date ,@RequestParam Time time,@RequestParam Double cost,@RequestParam String seatstatus) 
	{
		String ev_id=(String)model.get("event_id");
		String v_id=(String)model.get("venue_id");
		
		Random rand = new Random();
		int sid = rand.nextInt(100);
		String show_id= Integer.toString(sid);
		model.put("show_id",show_id);	
		service.insertShows(ev_id,v_id,show_id,date,time,cost,seatstatus);
		
		return "redirect:/EventManager";
	}
}
