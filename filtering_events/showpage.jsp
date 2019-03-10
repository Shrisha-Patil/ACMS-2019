<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<h2>Start page "What's new" information</h2>


	<table border="1">
	    <tr><th>Event id</th><th>Name</th><th>Genre</th><th>Date</th><th>Poster</th></tr>
	    
	    <c:forEach var="event" items="${list}">
			<tr>
				<td>${event.event_id}</td>
				<td>${event.name}</td>
				<td>${event.genre}</td>
				<td>${event.date}</td>
				<td>${event.poster}</td>

			</tr>
		</c:forEach>
	</table>

</body>
</html>