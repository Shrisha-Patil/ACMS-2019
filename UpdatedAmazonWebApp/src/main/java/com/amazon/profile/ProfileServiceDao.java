package com.amazon.profile;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import org.springframework.stereotype.Service;

import com.amazon.db.db_connection;

@Service
public class ProfileServiceDao 
{
	int booking_id,quantity,seat_id,payment_id,venue_id,event_id;
	double price;	
	String event, venue;

	public List<History> viewHistory(String email) 
	{
		List<History> list = null;
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			String q="select Booking_id,quantity,total_price,seat_id,payment_id from amazon.tickets where Email3='"+email+"';";
			ResultSet rs=st.executeQuery(q);
			while(rs.next())
			{
				booking_id=rs.getInt(0);
				quantity=rs.getInt(1);
				price=rs.getDouble(2);
				seat_id=rs.getInt(3);
				payment_id=rs.getInt(4);
				
				String q1="select venue_id,event_id from amazon.seats where seat_id='"+seat_id+"';";
				ResultSet rs1=st.executeQuery(q1);
				while(rs1.next())
				{
					venue_id=rs1.getInt(0);
					event_id=rs1.getInt(1);
					String q2="select name from amazon.venue where venue_id='"+venue_id+"';";
					ResultSet rs2=st.executeQuery(q2);
					if(rs2.next())
						venue=rs.getString(0);
					String q3="select event_name from amazon.event where event_id='"+event_id+"';";
					rs2=st.executeQuery(q3);
					if(rs2.next())
						event=rs.getString(0);
				}
				list.add(new History(booking_id,quantity,seat_id,payment_id,price,event, venue));
			}
			con.close();
		}
		
		catch(Exception e)
		{
			System.out.println(e);
		}
		return null;
	}

	public void updateProfile(String email) 
	{
		
	}
	
	public void viewProfile(String email)
	{
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			String q="select * from amazon1.user where Email='"+email+"'";
			st.executeQuery(q);
			//return "userprofile";
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
