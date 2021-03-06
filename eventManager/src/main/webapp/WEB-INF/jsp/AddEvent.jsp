<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">
<head>

<meta charset="utf-8" content="">

<style>
.popcorn-loader-overlay {
		width: 100%;
		height: 100%;
		background: url('popcorn.gif') center no-repeat #FFF;
		z-index: 99999;
		position: fixed;
}
</style>


<title>Add an Event</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	jQuery(window).load(function() {
		jQuery(".popcorn-loader-overlay").fadeOut(1000);
	});
</script>

<noscript>
	<style type="text/css">
.popcorn-loader-overlay {
	display: none;
}
</style>
</noscript>

</head>

<body>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"
		type="text/javascript"></script>


	<div class="popcorn-loader-overlay"></div>

	<div style="text-align: center;">
		<h1>Add an Event</h1>
	</div>

	<form action="#" method="post">

          <div class="form-control">
            <label class="header">Name of the Event:</label>
            <input type="text" title="Name" id="name" name="name" placeholder="Name"
            required method="post">
          </div>

<br>

					<div class="form-control">
            <label class="header">City of the Event:</label>
            <input type="text" title="City" id="city" name="city" placeholder="city"
            required method="post">
          </div>

<br>

					<div class="form-control">
						<label class="header">Price per Ticket:</label>
						<input type="text" title="Price Per Ticket" id="price_per_ticket" name="price_per_ticket" placeholder="Price Per Ticket"
						required method="post">
					</div>

<br>

					<div class="form-control">
						<label class="header">Venue Address:</label>
						<input type="text" title="Venue Address" id="venue_address" name="venue_address" placeholder="Venue Address"
						required method="post">
					</div>

<br>


					<div class="form-control">
						<label class="header" title="Type of Event">Type of Event(*)</label><select name="type_of_event" method="post" required>
							<option value=" " selected> EMPTY </option>
							<option value="Movie">Movie</option>
							<option value="Concert">Concert</option>
							<option value="Play">Play</option>
							<option value="Food">Food</option>
							<option value="Sports">Sports</option>
						</select>
					</div>

<br>

<div>
	<input style="text-align: center;" type="submit" class="submit" title="Submit" method="post" value="Submit">
</div>




</body>
</html>