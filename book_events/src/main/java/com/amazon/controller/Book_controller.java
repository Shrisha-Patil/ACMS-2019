package com.amazon.controller;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
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
		return new ModelAndView("index");
	}
	
	@RequestMapping("/showtimes/{event_id}")
	 public String showtimes(@PathVariable String event_id, Model m,HttpSession session){    
		 List<Event> listv=evdao.getVenueByEventId(event_id);
	        m.addAttribute("listv",listv);  
	        return "showtimes";
	}
	
	@RequestMapping("/showtimes/choose-slot/{show_id}/showseatstatus")
	public String showSeatstatus(@PathVariable String show_id,HttpSession session,ModelMap m,HttpServletRequest request) {
		System.out.println(show_id);
		String str3=show_id;
		List<Show> shows = showdao.getShowByShowid(show_id);
		Iterator<Show> itr = shows.iterator();
		Show s=null;
		while (itr.hasNext()) {
			 s = itr.next();
		}
		System.out.println(s.getSeat_status());
		session.setAttribute("str3", str3);
		m.addAttribute("s", s);
		return "showseatstatus";
	}
	
	@RequestMapping(value="/showtimes/choose-slot/{venue_id}/{event_id}")    
    public String chooseslot(@PathVariable("venue_id") String venue_id,@PathVariable("event_id")String event_id, Model m,HttpSession session) {    
	 List<Show> slot = showdao.getShowsByIds(venue_id,event_id);
     m.addAttribute("slot",slot);  
     String str1=event_id;
     String str2=venue_id;
     session.setAttribute("str2", str2);
     session.setAttribute("str1", str1);
     return "choose-slot";    
    }
	
	@RequestMapping("/payment")
	public String bookSeats(HttpServletRequest request,HttpSession session,ModelMap m) {
		String[] seats = request.getParameterValues("seat");
		int count=0;
		for(int i=0;i<seats.length;i++) {
			count=count+1;
		}
		session.setAttribute("count",count);
		String show_id = request.getParameter("show_id");

		Show show = showdao.getShowByShow_id(show_id);
		String event_id = show.getEvent_id();
		Event ev = evdao.getEventByEventId(event_id);

		Booking booking = new Booking();
		booking.setSeats(seats);
		booking.setShow(show);
		booking.setEvent(ev);
		m.addAttribute("booking", booking);
		return "payment-page";
	}
	
	@RequestMapping("/print/{total_cost}")
	public ModelAndView printTicket(@PathVariable("total_cost") double total_cost,HttpServletRequest request, HttpSession session) {
		Booking b = (Booking) session.getAttribute("booking");
		
		String str1=(String) session.getAttribute("str1");
		String str2=(String) session.getAttribute("str2");
		String str3=(String) session.getAttribute("str3");
		double c=total_cost;
		Random rand = new Random();
		int bo = rand.nextInt(100);
		int count=(Integer)session.getAttribute("count");
		session.invalidate();
		showdao.updatebooking(bo,str1,str2,str3,c,count);
		showdao.changeSeatStatus(b.getShow(), b.getSeats());
		return new ModelAndView("print-ticket", "booking", b);
	}

}
