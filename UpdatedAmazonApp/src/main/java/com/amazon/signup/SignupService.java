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
			String q="select * from  `amazon1`.`user` where email='"+email+"';";
			ResultSet rs=st.executeQuery(q);
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
	
	public void addUser(String name,long phone,String email,String password, String address, String string, char gender)
	{
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			String q="INSERT INTO `amazon1`.`user` VALUES ('"+email+"','"+name+"','"+address+"','"+phone+"', '"+password+"','"+string+"','"+gender+"');";
			st.executeUpdate(q);
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

	
}
