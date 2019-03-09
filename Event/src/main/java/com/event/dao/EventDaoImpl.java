package com.event.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.event.model.*;

public class EventDaoImpl implements EventDao {

	private JdbcTemplate jdbcTemp;

	public EventDaoImpl(DataSource dataSource) {
		jdbcTemp = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Event> eventList() {
		List<Event> list = jdbcTemp.query("SELECT * FROM EVENTS", new RowMapper<Event>() {

			@Override
			public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
				Event emp = new Event();

				emp.setEventName(rs.getString("ename"));
				emp.setCategory(rs.getString("category"));
				emp.setCast(rs.getString("cast"));
				emp.setCost(rs.getInt("cost"));
				emp.setDate(rs.getInt("date"));

				return emp;
			}

		});

		return list;
	}

}
