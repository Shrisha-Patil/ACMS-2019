package com.amazon.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.amazon.model.Event;
import com.amazon.model.Show;

public class Evdetdao {
	
	JdbcTemplate template;  
	  
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	}
	
	public Event getEventByEventId(String event_id){  
		 String sql="select e.event_id,e.name,e.genre,e.cast,r.rating,e.synopsis,e.date,e.duration,e.poster from event e,review r where e.event_id=r.event_id and e.event_id ="+event_id;
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
				ev.setDate(rs.getDate("date"));
				ev.setDuration(rs.getTime("duration"));
				ev.setPoster(rs.getString("poster"));
				return ev;
			}
		 });
	}
	
	public List<Event> getVenueByEventId(String event_id) {
		String sql="select distinct v.venue_id,v.v_name,e.event_id from venue v,event e,shows sh where e.event_id=sh.event_id and v.venue_id= sh.venue_id and e.event_id=?";
		 return template.query(sql, new Object[]{event_id},new RowMapper<Event>(){
		    	public Event mapRow(ResultSet rs, int row) throws SQLException {    
		            Event ve=new Event();    
		            ve.setVenue_id(rs.getString("venue_id"));
					ve.setV_name(rs.getString("v_name"));
                    ve.setEvent_id(rs.getString("event_id"));
					return ve;  
		        }    
		    });    
	}

}
