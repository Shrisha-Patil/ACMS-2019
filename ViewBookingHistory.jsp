<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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

        <div class="container">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>Booking ID</th>
                <th>Event Name</th>
                <th>Amount</th>
                <th>Number of Tickets</th>
                <th>Seats</th>
                <th>Date</th>
                <th>Time</th>
                <th>Venue</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${history}" var="hist">
                <tr>
                  <td>${hist.Booking_id}</td>
                  <td>${hist.event_name}</td>
                  <td>${hist.amount}</td>
                  <td>${hist.quantity}</td>
                  <td>${hist.seats}</td>
                  <td>${hist.date}</td>
                  <td>${hist.time}</td>
                  <td>${hist.venue}</td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>

    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>



  <a href="UserProfile1.jsp">View Your Profile</a>

 </body>
</html>
