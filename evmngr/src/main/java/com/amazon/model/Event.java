package com.amazon.model;

import java.sql.Time;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class Event {
	private String email;
	private String event_id;
	private String name;
	private String poster;
	private String trailer;
	private String category;
	private String genre;
	private String synopsis;
	private Time duration;
	private Date date;
	private String cast;
	private String venue_id;
	private String v_name;
	private String city;
	private String address;
	private String show_id;
	private Time time;
	private double cost;
	private String seat_status;
	
}
