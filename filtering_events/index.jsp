<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC - HelloWorld Index Page</title>
</head>
<body>
 
	<center>
		<h2>Event booking application</h2>
		<h3>
			<a href="showpage">what's new information</a>
		</h3>
		<h3>
			<a href="sortcat/${category='movie'}">Sort by category</a>
		</h3>
		<h3>
			<a href="sortgenre/${category='movie'}/${genre='thriller'}">Sort by genre</a>
		</h3>
		<h3>
			<a href="sortcities/${city='bangalore'}">Sort by city</a>
		</h3>
		<h3>
			<a href="trending/${category='movie'}">Trending Events</a>
		</h3>
	</center>
</body>
</html>
