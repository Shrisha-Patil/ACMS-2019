package com.event.mngr;

import java.util.List;
import com.event.model.*;

import org.springframework.stereotype.Service;

@Service
public class EventService {

	List<Event> events;
	public List<Event> getAllEvents() {
		
		return events;
	}
       
	public Event getEvent(String id) {
		
		return events.stream().filter(e -> e.getEventId().equals(id)).findFirst().get();
	}

	public void addEvent(Event event) {
		
		
	}

	public void updateEvent(String id, Event event) {
		for(int i=0;i<events.size();i++) {
			Event e=events.get(i);
			if(e.getEventId().equals(id)) {
			   events.set(i, event);
			   return;
			}
		}
		
	}

	public void deleteEvent(String id) {
		events.removeIf(e -> e.getEventId().equals(id));
	}

	public void viewSales() {
		
		
	}
	 
}

