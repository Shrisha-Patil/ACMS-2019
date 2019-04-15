<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<h2>Venues of an event</h2>


	<table border="1">
	    <tr><th>Venue_id</th><th>Venue_name</th></tr>
	    
	    <c:forEach var="v" items="${listv}">
			<tr>
				<td>${v.venue_id}</td>
				<td>${v.v_name}</td>
				<td><a href="choose-slot/${v.venue_id}/${v.event_id}">choose slot</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>