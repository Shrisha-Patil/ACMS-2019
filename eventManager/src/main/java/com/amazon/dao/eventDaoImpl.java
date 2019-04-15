package com.amazon.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
 
import javax.sql.DataSource;
 
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.amazon.model.Event;
 
public class eventDaoImpl implements eventDao {
 
    private JdbcTemplate jdbcTemplate;
 
    public eventDaoImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }
        
    public void insert(Event event) {
    	
    	 String sql = "INSERT INTO event (event_name, category, cast, genre, trailer, duration, date, cost)"
                        + " VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            jdbcTemplate.update(sql, event.getEvent_name(), event.getCategory(), event.getCast(), event.getGenre(),
            		event.getTrailer(), event.getDuration(), event.getDate(), event.getCost());
    }
    
    public void update(Event event) {
    	if(event.getEvent_id()>0)
    	{
    	String sql = "UPDATE event SET event_name=?,category=?, cast=?, genre=?, trailer=?, duration=?, date=?, cost=?  WHERE event_id=?";
    	jdbcTemplate.update(sql, event.getEvent_name(), event.getCategory(), event.getCast(), event.getGenre(),
        		event.getTrailer(), event.getDuration(), event.getDate(), event.getCost());
       	}
    }
    
    public void delete(int event_id) {
    	String sql = "DELETE FROM event WHERE event_id=?";
        jdbcTemplate.update(sql, event_id);
    }
 
    public List<Event> list() {
    	String sql = "SELECT * FROM event";
        List<Event> listEvent = jdbcTemplate.query(sql, new RowMapper<Event>() {
     
            public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
                Event aEvent = new Event();
     
                aEvent.setEvent_id(rs.getInt("event_id"));
                aEvent.setEvent_name(rs.getString("event_name"));
                aEvent.setCategory(rs.getString("category"));
                aEvent.setCast(rs.getString("cast"));
                aEvent.setGenre(rs.getString("genre"));
                aEvent.setTrailer(rs.getString("trailer"));
                aEvent.setDuration(rs.getInt("duration"));
                aEvent.setDate(rs.getDate("date"));
                aEvent.setCost(rs.getInt("cost"));
                
                return aEvent;
            }
     
        });
     
        return listEvent;
    }
 
}
