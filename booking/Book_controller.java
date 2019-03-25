package com.amazon.controller;
import java.sql.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.amazon.dao.Showdao;
import com.amazon.dao.Evdetdao;
import com.amazon.model.Show;
import com.amazon.model.Event;
import com.amazon.model.Booking;

@Controller
public class Book_controller {
	
	@Autowired
	Showdao showdao;
	
	@Autowired
	Evdetdao evdao;
	
	@RequestMapping("/")
	public ModelAndView index() {
		List<Event> list = evdao.getAllEvents();
		return new ModelAndView("index", "list", list);
	}
	
	@RequestMapping("/choose-slot/{id}")
	public ModelAndView chooseSlot(@PathVariable int id, HttpSession session) {
		List<Show> showlist = showdao.getShowsByEventid(id);
		session.setAttribute("showlist", showlist);
		return new ModelAndView("choose-slot");
	}
	
	@RequestMapping("/payment")
	public ModelAndView bookSeats(HttpServletRequest request) {

		String[] seats = request.getParameterValues("seat");
		String show_id = request.getParameter("show_id");

		Show show = showdao.getShowByShowid(show_id);
		String event_id = show.getEvent_id();
		Event ev = evdao.getEventByEventId(event_id);

		Booking booking = new Booking();
		booking.setSeats(seats);
		booking.setShow(show);
		booking.setEvent(ev);
		return new ModelAndView("payment-page", "booking", booking);
	}

}
