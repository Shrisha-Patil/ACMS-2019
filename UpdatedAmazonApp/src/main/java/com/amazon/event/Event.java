package com.amazon.event;

public class Event 
{
		private String id;
		private String name;
		private String city;
		private String price_per_ticket;
		private String venue;
		private String address;
		
		public Event(String id, String name, String city, String price_per_ticket, String venue, String address) {
			super();
			this.id = id;
			this.name = name;
			this.city = city;
			this.price_per_ticket = price_per_ticket;
			this.venue = venue;
			this.address = address;
		}
		
		public String getId() {
			return id;
		}
		public String getName() {
			return name;
		}
		public String getCity() {
			return city;
		}
		public String getPrice_per_ticket() {
			return price_per_ticket;
		}
		public String getVenue() {
			return venue;
		}
		public String getAddress() {
			return address;
		}
		public void setId(String id) {
			this.id = id;
		}
		public void setName(String name) {
			this.name = name;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public void setPrice_per_ticket(String price_per_ticket) {
			this.price_per_ticket = price_per_ticket;
		}
		public void setVenue(String venue) {
			this.venue = venue;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		
		@Override
		public String toString() {
			return "Event [id=" + id + ", name=" + name + ", city=" + city + ", price_per_ticket=" + price_per_ticket
					+ ", venue=" + venue + ", address=" + address + "]";
		}
		
		
		
}