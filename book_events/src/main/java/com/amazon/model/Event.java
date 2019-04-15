package com.amazon.model;

import java.sql.Date;
import java.sql.Time;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class Event  {
	
	
	String venue_id;
	String v_name;
	String event_id;
	String name;
	String genre;
	Date date;
	Time duration;
	int rating;
	String cast;
	String poster;
	String synopsis;
}
