<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<h2>Sort by category</h2>


	<table border="1">
	    <tr><th>Event id</th><th>Name</th><th>Genre</th><th>Date</th><th>Poster</th></tr>
	    
	    <c:forEach var="cat" items="${listc}">
			<tr>
				<td>${cat.event_id}</td>
				<td>${cat.name}</td>
				<td>${cat.genre}</td>
				<td>${cat.ev_date}</td>
				<td><img src="/resources/css/${cat.poster}"></img></td>

			</tr>
		</c:forEach>
	</table>

</body>
</html>