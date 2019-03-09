package com.event.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Event {
       
	@Id
	private String eventId;
	private int cost;
	private int date;
	private	String eventName;
	private	String category;
	private	String cast;
	public String getEventId() {
		return eventId;
	}
	
	public Event() {
		
	}
	
	public Event(String eventId, int cost, int date, String eventName, String category, String cast) {
		super();
		this.eventId = eventId;
		this.cost = cost;
		this.date = date;
		this.eventName = eventName;
		this.category = category;
		this.cast = cast;
	}



	public void setEventId(String eventId) {
		this.eventId = eventId;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCast() {
		return cast;
	}
	public void setCast(String cast) {
		this.cast = cast;
	}
			
	
    
}
