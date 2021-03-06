package com.amazon.model;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class Events {
	private String event_id;
	private String name;
	private String genre;
	private Date ev_date;
	private String poster;
	private String category;
	private String city;
	private String trailer;
	private String synopsis;
	private int rating;
}