<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<h2>Start page "What's new" information</h2>


	<table border="1">
	    <th>Event id</th>
	    <th>Name</th>
		<th>Genre</th>
		<th>Date</th>
		<th>Poster</th>

		<c:forEach var="ev" items="${listEv}" varStatus="status">
			<tr>
				<td>${status.index + 1}</td>
				<td>${ev.event_id}</td>
				<td>${ev.name}</td>
				<td>${ev.genre}</td>
				<td>${ev.date}</td>
				<td>${ev.poster}</td>

			</tr>
		</c:forEach>
	</table>

</body>
</html>