package com.amazon.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import com.amazon.model.Show;

public class Showdao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	
	public List<Show> getShowsByEventid(int id) {
		String sql = "select sh.event_id,sh.date,sh.time,sh.cost,sh.seat_status,sh.show_id from shows sh where sh.event_id ="+id;
		System.out.println(sql);
		return template.query(sql, new ResultSetExtractor<List<Show>>() {
			public List<Show> extractData(ResultSet rs) throws SQLException, DataAccessException {

				List<Show> list = new ArrayList<Show>();
				while (rs.next()) {
					Show s = new Show();
					
					s.setEvent_id(rs.getString("event_id"));
					s.setDate(rs.getDate("date"));
					s.setTime(rs.getTime("time"));
					s.setCost(rs.getDouble("cost"));
					s.setSeat_status(rs.getString("seat_status"));
					s.setShow_id(rs.getString("show_id"));
					list.add(s);
				}
				return list;
			}
		});
	}
	
	public Show getShowByShowid(String show_id){
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
