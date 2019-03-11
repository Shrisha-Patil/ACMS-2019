package com.amazon.dao;
import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    
import com.amazon.model.Events;

public class Eventsdao {
	private JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}
	public List<Events> getEventByCategory(String category){    
		String sql="select event_id,name,genre,date,poster from event where category=?";    
	    return template.query(sql, new Object[]{category},new RowMapper<Events>(){
	    	public Events mapRow(ResultSet rs, int row) throws SQLException {    
	            Events ev=new Events();    
	            ev.setEvent_id(rs.getInt("event_id"));
				ev.setName(rs.getString("name"));
				ev.setGenre(rs.getString("genre"));
				ev.setDate(rs.getDate("date"));
				ev.setPoster(rs.getString("poster"));

				return ev;  
	        }    
	    });    
	} 
	public List<Events> getEventByGenre(String category,String genre){    
		String sql="select event_id,name,genre,date,poster from event where category=? and genre=?";    
	    return template.query(sql, new Object[]{category,genre},new RowMapper<Events>(){
	    	public Events mapRow(ResultSet rs, int row) throws SQLException {    
	            Events eve=new Events();    
	            eve.setEvent_id(rs.getInt("event_id"));
				eve.setName(rs.getString("name"));
				eve.setGenre(rs.getString("genre"));
				eve.setDate(rs.getDate("date"));
				eve.setPoster(rs.getString("poster"));

				return eve;  
	        }    
	    });    
	} 
	public List<Events> getEvents(){    
	    return template.query("SELECT event_id,name,genre,date,poster from event where date in (select curdate());",new RowMapper<Events>(){    
	        public Events mapRow(ResultSet rs, int row) throws SQLException {    
	            Events e=new Events();    
	            e.setEvent_id(rs.getInt("event_id"));
				e.setName(rs.getString("name"));
				e.setGenre(rs.getString("genre"));
				e.setDate(rs.getDate("date"));
				e.setPoster(rs.getString("poster"));

				return e;  
	        }    
	    });    
	}    

}
