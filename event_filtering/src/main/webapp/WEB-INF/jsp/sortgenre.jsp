<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<h2>Sort by Genre</h2>


	<table border="1">
	    <tr><th>Event id</th><th>Name</th><th>Genre</th><th>Date</th><th>Poster</th></tr>
	    
	    <c:forEach var="gen" items="${listg}">
			<tr>
				<td>${gen.event_id}</td>
				<td>${gen.name}</td>
				<td>${gen.genre}</td>
				<td>${gen.date}</td>
				<td>${gen.poster}</td>

			</tr>
		</c:forEach>
	</table>

</body>
</html>