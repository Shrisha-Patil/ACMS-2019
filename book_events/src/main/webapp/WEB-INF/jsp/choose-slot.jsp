<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<h2>Choose slot of the events</h2>


	<table border="1">
	    <tr><th>Show_id</th><th>Date</th><th>Time</th></tr>
	    
	    <c:forEach var="sh" items="${slot}">
			<tr>
				<td>${sh.show_id}</td>
				<td>${sh.date}</td>
				<td>${sh.time}</td>
				<td><a href="showseatstatus">Show seat status</a>
			</tr>
		</c:forEach>
	</table>

</body>
</html>