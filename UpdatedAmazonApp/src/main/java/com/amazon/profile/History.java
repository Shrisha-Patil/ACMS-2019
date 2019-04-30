package com.amazon.profile;

public class History 
{
	private int booking_id;
	private int quantity;
	private double price;	
	private String venue;
	private int seat_id;
	private String event_name;
	private String date;
	private String time;

	public History(int booking_id, int quantity, double price, String venue, int seat_id, String event_name, String date,
			String time) {
		super();
		this.booking_id = booking_id;
		this.quantity = quantity;
		this.price = price;
		this.venue = venue;
		this.seat_id = seat_id;
		this.event_name = event_name;
		this.date = date;
		this.time = time;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getBooking_id() {
		return booking_id;
	}

	public int getSeat_id() {
		return seat_id;
	}

	public void setSeat_id(int seat_id) {
		this.seat_id = seat_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public double getPrice() {
		return price;
	}

	public String getEvent_name() {
		return event_name;
	}

	public String getVenue() {
		return venue;
	}

	public void setBooking_id(int booking_id) {
		this.booking_id = booking_id;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}

	@Override
	public String toString() {
		return "History [booking_id=" + booking_id + ", quantity=" + quantity + ", price=" + price
				+ ", venue=" + venue + ", seat_id=" + seat_id + ", movie=" + event_name + ", date=" + date + ", time=" + time
				+ "]";
	}
	
}
