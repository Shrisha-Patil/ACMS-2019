package com.amazon.event;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.amazon.db.db_connection;

@Service
public class EventService 
{

	public void insertEvent(String name,String poster,String trailer,String category,String genre,String synopsis,String duration,Date date,String cast) 
	{
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			String q="INSERT INTO `amazon1`.`event`(`event_name`,`poster`,`Trailer',`category`,`Date`,`time`,`cast`,`Email`) VALUES ('"+name+"','"+poster+"','"+trailer+"','"+category+"', '"+genre+"','"+synopsis+"','"+duration+"','"+date+"','"+cast+"');";
			st.executeUpdate(q);
			System.out.println("Post happening !");
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

	public void deleteEvent(int id) 
	{
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			String q="Delete from amazon1.event where event_id='"+id+"'";
			st.executeUpdate(q);
			System.out.println("Post happening !");
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

	public List<Event> getAllEvents(String email) 
	{
		//System.out.println(email);
		List<Event> list=new ArrayList<Event>();
		String name,ev_id,date;
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			String q="select * from amazon1.event where Email='"+email+"'; ";
			ResultSet rs=st.executeQuery(q);
			while(rs.next())
			{
				ev_id=rs.getString(1);
				name=rs.getString(2);
				date=rs.getString(5);
				
				list.add(new Event(ev_id,name,date));
			}
			//System.out.println(list);
			con.close();
			return list;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
		
	}

	public void insertVenue(String event_id, String venue_id, String v_name, String city, String address) 
	{
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			String q="INSERT INTO `amazon1`.`event`(`event_name`,`poster`,`Trailer',`category`,`Date`,`time`,`cast`,`Email`) VALUES ('"+event_id+"','"+venue_id+"','"+v_name+"','"+city+"', '"+address+"');";
			st.executeUpdate(q);
			System.out.println("Post happening !");
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

	public void insertShows(String ev_id, String v_id, String show_id, Date date, Time time, Double cost,String seatstatus) 
	{
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			String q="INSERT INTO `amazon1`.`event`(`event_name`,`poster`,`Trailer',`category`,`Date`,`time`,`cast`,`Email`) VALUES ('"+ev_id+"','"+v_id+"','"+show_id+"','"+date+"', '"+time+"','"+cost+"','"+seatstatus+"');";
			st.executeUpdate(q);
			System.out.println("Post happening !");
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
