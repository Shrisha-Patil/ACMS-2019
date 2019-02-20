package com.amazon.login;

import java.sql.*;

import org.springframework.stereotype.Service;

import com.amazon.db.db_connection;

@Service
public class LoginService 
{
	public boolean validateUser(String username,String password)
	{
		db_connection obj=new db_connection();
		Connection con=obj.get_connection();
		try
		{
			Statement st=con.createStatement();
			String q="select password from amazon.user where name='"+username+"';";
			ResultSet rs=st.executeQuery(q);
			if(rs.next())
			{
				if(rs.getString(0).equals(password))
				{
					System.out.print(rs.getString(1));
					return true;
				}	
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return false;
	}
}
