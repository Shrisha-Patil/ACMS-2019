package com.event.mngr;

import java.util.List;
import com.event.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EventController {

	@Autowired
	private EventService service;
	
	@RequestMapping("/events")
	public List<Event> getAllEvents()
	{
		return service.getAllEvents();
	}
	
	@RequestMapping("/events/{id}")
	public Event getEvent(@PathVariable String id)
	{
		return service.getEvent(id);
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/events")
	public void addEvent(@RequestBody Event event)
	{
		service.addEvent(event);
	}
	
	@RequestMapping(method=RequestMethod.PUT, value="/events/{id}")
	public void updateEvent(@RequestBody Event event, @PathVariable String id)
	{
		service.updateEvent(id, event);
	}
	
	@RequestMapping(method=RequestMethod.DELETE, value="/events/{id}")
	public void deleteEvent(@PathVariable String id)
	{
		service.deleteEvent(id);
	}
	
	@RequestMapping(value="/events/sales" , method=RequestMethod.POST)
	public String viewSales(@RequestParam String email)
	{
		service.viewSales();
		return "sales";
	}
}
