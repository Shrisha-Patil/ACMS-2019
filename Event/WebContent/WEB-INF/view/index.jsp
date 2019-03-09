<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<h2>Event Manager Page</h2>


	<table border="1"><tr>
	    <th>Event id</th>
	    <th>Name</th>
		<th>Category</th>
		<th>Cast</th>
		<th>Date</th>
		<th>Cost</th></tr>

		<c:forEach var="e" items="${Events}" varStatus="status">
			<tr>
				<td>${status.index + 1}</td>
				<td>${ev.eventId}</td>
				<td>${ev.name}</td>
				<td>${ev.category}</td>
				<td>${ev.cast}</td>
				<td>${ev.date}</td>
				<td>${ev.cost}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>