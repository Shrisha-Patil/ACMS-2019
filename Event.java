package com.amazon.event;

public class Event 
{
		private String id;
		private String name;
		private String date;
		
		public Event(String event_id, String name, String date) {
			super();
			this.id = event_id;
			this.name = name;
			this.date = date;
		}
		public String getEvent_id() {
			return id;
		}
		public String getName() {
			return name;
		}
		public String getDate() {
			return date;
		}
		public void setEvent_id(String event_id) {
			this.id = event_id;
		}
		public void setName(String name) {
			this.name = name;
		}
		public void setDate(String date) {
			this.date = date;
		}
		@Override
		public String toString() {
			return "Event [id=" + id + ", name=" + name + ", date=" + date + "]";
		}
		
		
}