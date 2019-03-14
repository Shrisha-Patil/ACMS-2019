<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<h2>Trending Events</h2>


	<table border="1">
	    <tr><th>Event id</th><th>Name</th><th>Genre</th><th>Date</th><th>Poster</th><th>Rating</th></tr>
	    
	    <c:forEach var="tr" items="${listcate}">
			<tr>
				<td>${tr.event_id}</td>
				<td>${tr.name}</td>
				<td>${tr.genre}</td>
				<td>${tr.date}</td>
				<td>${tr.poster}</td>
				<td>${tr.rating}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>