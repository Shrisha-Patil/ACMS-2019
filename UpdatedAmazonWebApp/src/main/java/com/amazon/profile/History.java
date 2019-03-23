package com.amazon.profile;

public class History 
{
	private int booking_id;
	private int payment_id;
	private int quantity;
	private double price;	
	private String venue;
	private int seat_id;
	private String movie;
	
	public History(int booking_id, int quantity,int seat_id,int payment_id, double price, String movie, String venue) {
		super();
		this.booking_id = booking_id;
		this.quantity = quantity;
		this.price = price;
		this.movie = movie;
		this.venue = venue;
	}

	public int getBooking_id() {
		return booking_id;
	}

	public int getPayment_id() {
		return payment_id;
	}

	public int getSeat_id() {
		return seat_id;
	}

	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
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

	public String getMovie() {
		return movie;
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

	public void setMovie(String movie) {
		this.movie = movie;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}	
}
