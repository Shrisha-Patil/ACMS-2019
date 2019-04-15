package com.amazon.model;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class Booking {
	
	Show show;
	Event event;
	String seats[];

}
