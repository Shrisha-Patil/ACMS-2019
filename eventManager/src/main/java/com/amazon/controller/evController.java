package com.amazon.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.amazon.dao.eventDao;
import com.amazon.model.Event;

public class evController {
	@Autowired
    private eventDao eventdao;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String insertEvent(@ModelAttribute Event event) {
	    eventdao.insert(event);
	    return "AddEvent";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String updateEvent(@ModelAttribute Event event) {
	    eventdao.update(event);
	    return "EditEvent";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteEvent(HttpServletRequest request) {
	    int eventId = Integer.parseInt(request.getParameter("id"));
	    eventdao.delete(eventId);
	    return "DeleteEvent";
	}


}
