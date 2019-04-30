package com.amazon.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import com.amazon.model.Show;

public class Showdao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public boolean changeSeatStatus(Show show,String seats[]){
		boolean x=false;
		String show_id=show.getShow_id();
		
		String seat_status=show.getSeat_status();
		StringBuffer sb=new StringBuffer(seat_status);
		for(int i=0;i<seats.length;i++){
			int index=Integer.parseInt(seats[i]);
			sb.replace(index,index+1,"0");
		}
		String sql="UPDATE shows SET seat_status='" +sb+ "' WHERE show_id="+show_id;
		System.out.println(sql);
		if(template.update(sql)>0) return true;
		return x;
	}
	public boolean updatebooking(int bo,String str1,String str2,String str3,double c,int count) {
		boolean x=false;
		String sql="insert into booking values("+bo+",'"+"manikyaaravind@gmail.com"+"','"+str1+"','"+str3+"',"+count+","+c+",'"+str2+"')";
		if(template.update(sql)>0) return true;
		return x;
	}	
	
	public List<Show> getShowByShowid(String show_id){
		String sql="select sh.date,sh.time,sh.cost,sh.seat_status,sh.show_id from shows sh where sh.show_id= ?";
		return template.query(sql, new Object[]{show_id},new RowMapper<Show>(){
	    	public Show mapRow(ResultSet rs, int row) throws SQLException {    
	            Show s=new Show(); 
				s.setDate(rs.getDate("date"));
				s.setTime(rs.getTime("time"));
				s.setCost(rs.getDouble("cost"));
				s.setSeat_status(rs.getString("seat_status"));
				s.setShow_id(rs.getString("show_id"));
				return s;
			}
		 });
	}
	
	public List<Show> getShowsByIds(String venue_id,String event_id){    
		String sql="select sh.show_id,sh.date,sh.time,sh.event_id from shows sh where sh.venue_id=? and sh.event_id=?";    
	    return template.query(sql, new Object[]{venue_id,event_id},new RowMapper<Show>(){
	    	public Show mapRow(ResultSet rs, int row) throws SQLException {    
	            Show sh=new Show();    
	            sh.setShow_id(rs.getString("show_id"));
				sh.setDate(rs.getDate("date"));
				sh.setTime(rs.getTime("time"));
				sh.setEvent_id(rs.getString("event_id"));
				return sh;  
	        }    
	    });    
	}
	
	public Show getShowByShow_id(String show_id){
		String sql="select sh.event_id,sh.date,sh.time,sh.cost,sh.seat_status,sh.show_id from shows sh where sh.show_id="+show_id;
		System.out.println(sql);
		return template.query(sql,new ResultSetExtractor<Show>(){
			public Show extractData(ResultSet rs) throws SQLException, DataAccessException {
				rs.next();
				Show s=new Show();
				s.setEvent_id(rs.getString("event_id"));
				s.setDate(rs.getDate("date"));
				s.setTime(rs.getTime("time"));
				s.setCost(rs.getDouble("cost"));
				s.setSeat_status(rs.getString("seat_status"));
				s.setShow_id(rs.getString("show_id"));
				return s;
			}
		 });
	}

}
