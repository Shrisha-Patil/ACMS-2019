package com.amazon.login;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

import org.springframework.stereotype.Service;

import com.amazon.db.db_connection;

@Service
public class LoginService
{	
	String pass;
	
	public boolean userExists(String email)
	{
		String q="select password from amazon1.user where Email='"+email+"';";
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery(q);
			while(rs.next())
			{
				//System.out.println(rs.getString(1));
				return true;
			}
			
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return false;
	}
	
	public boolean validateUser(String email, String password) 
	{
		String q="select password from amazon1.user where Email='"+email+"';";
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			
			ResultSet rs=st.executeQuery(q);
			while(rs.next())
			{
				//System.out.println(rs.getString(1));
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
	
	public void changePassword(String mail, String password)
	{
		String q="update amazon1.user set password='"+password+"' where Email='"+mail+"';";
		try
		{
			Connection con=db_connection.get_connection();
			Statement st=con.createStatement();
			st.execute(q);
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}	
	}

	public String generateOTP() 
	{
		String OTP=null;
		int o=0;
		Random r=new Random();
		do
		{
			o=r.nextInt(10000);
			//System.out.println(o);
		}while(o/1000 < 0);
		OTP=String.valueOf(o);
		System.out.println(OTP);
		return OTP;
	}
}
