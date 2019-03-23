package com.amazon.signup;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.stereotype.Service;

import com.amazon.db.db_connection;

@Service
public class SignupService 
{	
	
	public boolean checkUserExistance(String email) 
	{
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			String q="select * from amazon.user where name='"+email+"';";
			ResultSet rs=st.executeQuery(q);
			con.close();
			if(rs.next())
				return true;
			return false;
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return false;
	}
	
	public void addUser(String email, String name, String address, long phone, String password, String photo, char gender)
	{
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			String q="INSERT INTO `amazon1`.`user` VALUES ('"+email+"','"+name+"','"+address+"','"+phone+"', '"+password+"','"+photo+"','"+gender+"');";
			st.executeQuery(q);
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

	
}
