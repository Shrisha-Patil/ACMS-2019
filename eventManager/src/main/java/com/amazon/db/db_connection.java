package com.amazon.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class db_connection 
{
	public static Connection get_connection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventdb","root","root");
			return con;
		}
		
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
}