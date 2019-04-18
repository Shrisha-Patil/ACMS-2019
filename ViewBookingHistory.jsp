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
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

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
              <thead>
                <tr>
                  <th colspan="8" style="background-color:#7c2f97;">Booking History</th>
                </tr>
                <tr style="background-color:#f0a64e;">
                  <th class="border">Booking ID</th>
                  <th class="border">Event Name</th>
                  <th class="border">Amount</th>
                  <th class="border">Number of tickets</th>
                  <th class="border">Seats</th>
                  <th class="border">Date</th>
                  <th class="border">Time</th>
                  <th class="border">Venue</th>
                </tr>
              </thead>
              <tbody id="booking-history">
              </tbody>
            </table>


            <c:forEach items="${History}" var="element">
              <tr>
                <td>${element.booking_id}</td>
                <td>${element.event_name}</td>
                <td>${element.amount}</td>
                <td>${element.tickets}</td>
                <td>${element.seats}</td>
                <td>${element.Date}</td>
                <td>${element.time}</td>
                <td>${element.venue}</td>
              </tr>
              </c:forEach>

              <a href="UserProfile1.jsp">View Your Profile</a>

            </body>
          </html>
