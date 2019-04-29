<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta charset="utf-8">
    <style>
    html{
      padding:0;
      margin:0;
    }
    body{
      background-image:url(projector.jpg);
      background-position: top 80px left 100px;
      background-color: #45a29e;
      background-size: 25%;
      color:white;
      font-family: 'Cabin Sketch',cursive;
    }
    .popcorn-loader-overlay {
      width: 100%;
      height: 100%;
      background: url('popcorn.gif') center no-repeat #FFF;
      z-index: 99999;
      position: fixed;
    }
    header{
      width: 100%;
      background-color: #1f2833;
      margin:0;
      padding:0;
      position: absolute;
     top: 0;
     left: 0;
     right: 0;
     height: 65px;
    }
    .headermenu .logo a{
      text-decoration:none;
      color:white;
    }
    .logo{
      margin-left: 15px;
      position: absolute;
      vertical-align: middle;
      font-family: 'Fredericka the Great';
      font-size: 45px;
      color:white;
    }
    *{
      margin:0;
      padding:0;
    }
    table.center{
      margin-left:auto;
      margin-right:auto;
    }
    </style>


    <meta charset="utf-8">

      <title>View Booking History</title>
      <!--icons & fonts-->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
      <script>
      jQuery(window).load(function(){
        jQuery(".popcorn-loader-overlay").fadeOut(1000);
      });
      </script>

      <noscript>
        <style>.popcorn-loader-overlay { display: none; } </style> </noscript>

      </head>
      <body style="overflow:hidden;" link="#66fcf1" vlink="white" alink="#0b0c10">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <header>
          <div class="headermenu">
            <div class="logo">
              <a href="index.html">eQarth</a>
        </header>

        <div class="popcorn-loader-overlay"></div>
        <br>
        <br>
        <br>
        <br>
        <br>
<div class="font">
        <div style="text-align:center;">
          <h1><mark style="background-color:#1f2833; color:white;">View Your Booking History</mark></h1>
        </div>
<br>
<br>
        <div class="container">
          <table class="table table-striped center">
            <thead>
              <tr>
                <th><mark style="background-color:#1f2833; color:white;">Booking ID</mark></th>
                <th><mark style="background-color:#1f2833; color:white;">Event Name</mark></th>
                <th><mark style="background-color:#1f2833; color:white;">Amount</mark></th>
                <th><mark style="background-color:#1f2833; color:white;">Number of Tickets</mark></th>
                <th><mark style="background-color:#1f2833; color:white;">Seats</mark></th>
                <th><mark style="background-color:#1f2833; color:white;">Date</mark></th>
                <th><mark style="background-color:#1f2833; color:white;">Time</mark></th>
                <th><mark style="background-color:#1f2833; color:white;">Venue</mark></th>
                <th><mark style="background-color:#1f2833; color:white;"></mark></th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${history}" var="hist">
                <tr>
                  <td>${hist.booking_id}</td>
                  <td>${hist.event_name}</td>
                  <td>${hist.price}</td>
                  <td>${hist.quantity}</td>
                  <td>${hist.seat_id}</td>
                  <td>${hist.date}</td>
                  <td>${hist.time}</td>
                  <td>${hist.venue}</td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
<br>
<br>
    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<div style="text-align:center;">
  <a href="UserProfile1.jsp"><mark style="background-color:#1f2833; color:white;">Go Back to Your Profile</mark></a>
</div>
</div>
 </body>
</html>
