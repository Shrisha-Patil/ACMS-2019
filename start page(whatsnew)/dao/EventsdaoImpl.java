package com.amazon.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.amazon.model.Events;

public class EventsdaoImpl implements Eventsdao {
	private JdbcTemplate jdbcTemp;

	public EventsdaoImpl(DataSource dataSource) {
		jdbcTemp = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Events> eventsList() {
		List<Events> list = jdbcTemp.query("SELECT event_id,name,genre,date,poster from event where date in (select curdate())", new RowMapper<Events>() {

			@Override
			public Events mapRow(ResultSet rs, int rowNum) throws SQLException {
				Events ev = new Events();

				ev.setEvent_id(rs.getInt("event_id"));
				ev.setName(rs.getString("name"));
				ev.setGenre(rs.getString("genre"));
				ev.setDate(rs.getDate("date"));
				ev.setPoster(rs.getString("poster"));

				return ev;
			}

		});

		return list;
	}

}
