package com.amazon.login;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.stereotype.Service;

import com.amazon.db.db_connection;

@Service
public class LoginService 
{	
	String pass;
	public boolean validateUser(String email, String password) 
	{
		System.out.println(email);
		String q="select password from amazon1.user where Email='"+email+"';";
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery(q);
			while(rs.next())
			{
				System.out.println(rs.getString(1));
				pass=rs.getString(1);
			}
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	   
		if(password.equals(pass))
			return true;
		return false;
	}

}
