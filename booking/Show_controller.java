package com.amazon.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.amazon.dao.Showdao;
import com.amazon.dao.Evdetdao;
import com.amazon.model.Show;


@Controller
public class Show_controller {
	
	@Autowired
	Showdao shdao;
	@Autowired
	Evdetdao edao;
	
	@RequestMapping("/showtimes/{date}")
	public ModelAndView showTimes(@PathVariable Date date, HttpSession session) {
		System.out.println(date);
		List<Show> showlist = (List<Show>) session.getAttribute("showlist");
		List<Show> showlist2 = new ArrayList<Show>();
		showlist2.addAll(showlist);
		Iterator<Show> itr = showlist2.iterator();
		while (itr.hasNext()) {
			Show s = itr.next();
			if (!s.getDate().toString().equals(date)) {
				itr.remove();
			}
		}
		session.setAttribute("showlist2", showlist2);
		return new ModelAndView("showtimes");
	}
	
	@RequestMapping("/showseatstatus/{show_id}")
	public ModelAndView showSeatstatus(@PathVariable String show_id, HttpSession session) {
		System.out.println(show_id);
		List<Show> showlist = (List<Show>) session.getAttribute("showlist");
		Iterator<Show> itr = showlist.iterator();
		Show show = null;
		while (itr.hasNext()) {
			Show s = itr.next();
			if (s.getShow_id() == show_id) {
				show = s;
				break;
			}
		}
		System.out.println(show.getSeat_status());
		return new ModelAndView("showseatstatus", "show", show);
	}

}
