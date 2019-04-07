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
		String sql="select event_id,name,genre,ev_date,poster from event where category=?";    
	    return template.query(sql, new Object[]{category},new RowMapper<Events>(){
	    	public Events mapRow(ResultSet rs, int row) throws SQLException {    
	            Events ev=new Events();    
	            ev.setEvent_id(rs.getInt("event_id"));
				ev.setName(rs.getString("name"));
				ev.setGenre(rs.getString("genre"));
				ev.setEv_date(rs.getDate("ev_date"));
				ev.setPoster(rs.getString("poster"));

				return ev;  
	        }    
	    });    
	} 
	public List<Events> getEventTrending(){   
	    return template.query(" select e.poster from event e,review r where e.event_id=r.event_id group by name having max(rating)>8;",new RowMapper<Events>(){
	    	public Events mapRow(ResultSet rs, int row) throws SQLException {    
	            Events tr=new Events();
				tr.setPoster(rs.getString("poster"));
				return tr;  
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
				eve.setEv_date(rs.getDate("date"));
				eve.setPoster(rs.getString("poster"));

				return eve;  
	        }    
	    });    
	} 
	public List<Events> getEventByCity(String city){    
		String sql="select poster from event e,venue v where v.event_id=e.event_id and v.city=?";    
	    return template.query(sql, new Object[]{city},new RowMapper<Events>(){
	    	public Events mapRow(ResultSet rs, int row) throws SQLException {    
	            Events ci=new Events();
				ci.setPoster(rs.getString("poster"));

				return ci;  
	        }    
	    });    
	}
	public List<Events> getEvents(){    
	    return template.query("SELECT poster from event where date in (select curdate());",new RowMapper<Events>(){    
	        public Events mapRow(ResultSet rs, int row) throws SQLException {    
	            Events e=new Events();
				e.setPoster(rs.getString("poster"));

				return e;  
	        }    
	    });    
	}    

}
