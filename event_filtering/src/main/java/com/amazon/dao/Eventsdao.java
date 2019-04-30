package com.amazon.dao;
import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    
import com.amazon.model.Events;

public class Eventsdao {
	private JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}
	
	public List<Events> getMovies(){    
		String sql="select event_id,poster from event where category='movie'";    
	    return template.query(sql,new RowMapper<Events>(){
	    	public Events mapRow(ResultSet rs, int row) throws SQLException {    
	            Events ev=new Events();
	            ev.setEvent_id(rs.getString("event_id"));
				ev.setPoster(rs.getString("poster"));

				return ev;  
	        }    
	    });
	}
	public List<Events> getSports(){ 
	    String sql1="select poster from event where category='sport'";    
	    return template.query(sql1,new RowMapper<Events>(){
	    	public Events mapRow(ResultSet rs, int row) throws SQLException {    
	            Events ev1=new Events();
				ev1.setPoster(rs.getString("poster"));

				return ev1;  
	        }    
	    });
	    
	}
	public List<Events> getDramas(){ 
	    String sql1="select poster from event where category='drama'";    
	    return template.query(sql1,new RowMapper<Events>(){
	    	public Events mapRow(ResultSet rs, int row) throws SQLException {    
	            Events ev1=new Events();
				ev1.setPoster(rs.getString("poster"));

				return ev1;  
	        }    
	    });
	    
	}
	public List<Events> getStandup(){ 
	    String sql1="select poster from event where category='standup'";    
	    return template.query(sql1,new RowMapper<Events>(){
	    	public Events mapRow(ResultSet rs, int row) throws SQLException {    
	            Events ev1=new Events();
				ev1.setPoster(rs.getString("poster"));

				return ev1;  
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
	            eve.setEvent_id(rs.getString("event_id"));
				eve.setName(rs.getString("name"));
				eve.setGenre(rs.getString("genre"));
				eve.setEv_date(rs.getDate("date"));
				eve.setPoster(rs.getString("poster"));

				return eve;  
	        }    
	    });    
	} 
	public List<Events> getEventByCity(String city){    
		String sql="select poster from event e,venue v,shows sh where v.venue_id=sh.venue_id and e.event_id=sh.event_id and v.city=?";    
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
	public List<Events> getIndividualEvent(String event_id){    
		String sql="select name,poster,trailer,synopsis,genre from event where event_id=?";    
	    return template.query(sql, new Object[]{event_id},new RowMapper<Events>(){
	    	public Events mapRow(ResultSet rs, int row) throws SQLException {    
	            Events in=new Events();
				in.setName(rs.getString("name"));
				in.setPoster(rs.getString("poster"));
				in.setTrailer(rs.getString("trailer"));
				in.setSynopsis(rs.getString("synopsis"));
				in.setGenre(rs.getString("genre"));
				return in;  
	        }    
	    });    
	}

}
