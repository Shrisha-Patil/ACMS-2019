<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<h2>Sort by cities</h2>


	<table border="1">
	    <tr><th>Event id</th><th>Name</th><th>Genre</th><th>Date</th><th>Poster</th></tr>
	    
	    <c:forEach var="city" items="${listci}">
			<tr>
				<td>${city.event_id}</td>
				<td>${city.name}</td>
				<td>${city.genre}</td>
				<td>${city.date}</td>
				<td>${city.poster}</td>

			</tr>
		</c:forEach>
	</table>

</body>
</html>