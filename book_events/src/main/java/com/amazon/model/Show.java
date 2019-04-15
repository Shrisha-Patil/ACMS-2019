package com.amazon.model;

import java.sql.Date;
import java.sql.Time;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class Show implements Comparable<Show> {
	
	String event_id;
	String show_id;
	Date date;
	Time time;
	Double cost;
	String seat_status;
	double total_cost;
	int no_of_seats;
	String email;
	String venue_id;

	public int compareTo(Show s) {
		if(s.getDate().after(date))return -1;
		else if(s.getDate().before(date))return 1;
		return 0;
	}

}
