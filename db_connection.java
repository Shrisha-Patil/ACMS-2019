package com.amazon.db;

import java.sql.*;

public class db_connection
{
	/*
	 * public static void main(String args[]) throws SQLException { db_connection
	 * obj=new db_connection(); Connection con=obj.get_connection();
	 * 
	 * System.out.println(con); }
	 */
	
	public Connection get_connection() //throws SQLException
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/amazon?autoCommit=true","root","desai123");
		}
		
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return con;
	}
}
