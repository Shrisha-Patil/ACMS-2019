<%@ page contentType="text/html; charset=utf-8" language="java"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <style>
  .popcorn-loader-overlay {
      width: 100%;
      height: 100%;
      background: url('popcorn.gif') center no-repeat #FFF;
      z-index: 99999;
      position: fixed;
  }

  </style>


<meta charset="utf-8">

<title>View Booking History</title>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
jQuery(window).load(function(){
  jQuery(".popcorn-loader-overlay").fadeOut(1000);
});
</script>

<noscript>
  <style>.popcorn-loader-overlay { display: none; } </style> </noscript>

</head>
<body>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>


  <div class="popcorn-loader-overlay"></div>

  <div style="text-align:center;">
    <h1>View Your Booking History</h1>
    </div>

<h1>${name}</h1>
<table>
    <tr>
        <th colspan="5" style="background-color:#7c2f97;">Booking History</th>
    </tr>
    <tr style="background-color:#f0a64e;">
        <th class="border">Event ID</th>
        <th class="border">Event Name</th>
        <th class="border">Cost per Ticket</th>
        <th class="border">Date</th>
        <th class="border">Time</th>
        <th class="border">Venue</th>
    </tr>
        <tr>
            <td><font color="red">${event_id}</font></td>
            <td><font color="red">${event_name}</font></td>
            <td><font color="red">${cost_per_ticket}</font></td>
            <td><font color="red">${Date}</font></td>
            <td><font color="red">${time}</font></td>
            <td><font color="red">${venue}</font></td>
        </tr>

</table>

<a href="UserProfile1.jsp">View Your Profile</a>

</body>
</html>
