package com.amazon.controller;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.amazon.dao.Eventsdao;
import com.amazon.model.Events;

@Controller
public class Evcontroller {
	@Autowired
	private Eventsdao evdao;

	@RequestMapping(value = "/")
	public ModelAndView listEvents(ModelAndView model) throws IOException {

		List<Events> listEv = evdao.eventsList();
		model.addObject("listEv", listEv);
		model.setViewName("index");

		return model;
	}

}
