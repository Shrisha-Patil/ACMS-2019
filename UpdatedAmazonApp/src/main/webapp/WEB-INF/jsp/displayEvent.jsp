<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Events</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
    rel="stylesheet">
</head>
<body>
	<div class="container">
		<table class="table table-striped">
			<caption>Your Events are</caption>
			<thead>
				<tr>
					<th>Event Name</th>
					<th>Category</th>
					<th>Genre</th>
					<th>Duration</th>
					<th>Date</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ev}" var="todo">
					<tr>
						<td>${ev.name}</td>
						<td>${ev.genre}</td>
						<td>${ev.duration}</td>
						<td>${ev.date}</td>
						<td>
							<a type="button" class="btn btn-primary" 
								href="/delete-todo?id=${ev.id}">Delete</a>

							<a type="button" class="btn btn-warning" 
								href="/addVenue?id=${ev.id}">Add Venue</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a type="button" class="btn btn-success" href="/AddEvent">Add</a>
		</div>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>