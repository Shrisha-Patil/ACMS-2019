package com.amazon.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import com.amazon.model.Event;
import com.amazon.model.Show;

public class Evdetdao {
	
	JdbcTemplate template;  
	  
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	}
	
	public List<Event> getAllEvents(){
		String sql = "select e.event_id,e.name,e.genre,e.cast,r.rating,e.ev_date,e.duration,e.poster,e.synopsis from event e,review r where e.event_id=r.event_id";
		return template.query(sql, new ResultSetExtractor<List<Event>>() {
			public List<Event> extractData(ResultSet rs) throws SQLException, DataAccessException {

				List<Event> list = new ArrayList<Event>();
				while (rs.next()) {
					Event e=new Event();
					e.setEvent_id(rs.getString("event_id"));
					e.setName(rs.getString("name"));
					e.setGenre(rs.getString("genre"));
					e.setCast(rs.getString("cast"));
					e.setRating(rs.getInt("rating"));
					e.setEv_date(rs.getDate("ev_date"));
					e.setDuration(rs.getTime("duration"));
					e.setPoster(rs.getString("poster"));
					e.setSynopsis(rs.getString("synopsis"));
					list.add(e);
				}
				return list;
			}
		});
	}
	
	public Event getEventByEventId(String event_id){  
		 String sql="select e.event_id,e.name,e.genre,e.cast,r.rating,e.synopsis,e.ev_date,e.duration,e.poster from event e,review r where e.event_id=r.event_id and e.event_id ="+event_id;
		 System.out.println(sql);
		 return template.query(sql,new ResultSetExtractor<Event>(){
			public Event extractData(ResultSet rs) throws SQLException, DataAccessException {
				rs.next();
				Event ev=new Event();
				System.out.println(rs.getInt(1));
				ev.setEvent_id(rs.getString("event_id"));
				ev.setName(rs.getString("name"));
				ev.setGenre(rs.getString("genre"));
				ev.setCast(rs.getString("cast"));
				ev.setRating(rs.getInt("rating"));
				ev.setSynopsis(rs.getString("synopsis"));
				ev.setEv_date(rs.getDate("ev_date"));
				ev.setDuration(rs.getTime("duration"));
				ev.setPoster(rs.getString("poster"));
				return ev;
			}
		 });
	}

}
