package com.amazon.model;

import java.sql.Date;
import java.sql.Time;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class Event implements Comparable<Event> {
	
	String event_id;
	String name;
	String genre;
	Date ev_date;
	Time duration;
	int rating;
	String cast;
	String poster;
	String synopsis;
	
	public int compareTo(Event e) {
		if(e.rating>rating)return 1;
		else if(e.rating<rating)return -1;
		return 0;

}
}
