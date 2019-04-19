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
            <script type="text/template" id="trans-template">
              <li class="confirmation-card" data-role="card" data-booking-id="{{Booking_id}}">
                <aside class="details">
                  <div class="booking-id">BOOKING ID
                    <br><span class="_bkn_id"><strong>{{booking_id}}</strong></span>
                  </div>
                </div>
                <div class="text">
                  <div class="inner-text">
                    <div class="show-details">
                      <div class="cinema-name">
                        <span class="__cinema-text">Cinema</span>
                        <span class="__cinema-name">{{ venue }}</span>
                      </div>
                      <div class="show-time">
                        <span class="__showdate-text">Date &amp; Time</span>
                        <span class="__showdate">{{ Date }}</span>
                        <span class="__showtime">{{ time }}</span>
                      </div>
                      <div class="quantity">
                        <span class="__quantity-text">Quantity</span>
                        <span class="__quantity">{{ tickets }}</span>
                      </div>
                      <div class="seat_id">
                        <span class="__seat_id_name">Seat IDs</span>
                        <span class="__seat_ids">{{ seats }}</span>
                      </div>
                      <div class="movie-name">
                        <span class="__movie-text">Event</span>
                        <span class="__movie-name">{{ event_name }}</span>
                      </div>
                      <div class="price">
                        <span class="price-text">Price</span>
                        <span class="__price-amount">{{ amount }}</span>
                      </div>
                    </div>
                  </div>
                </div>
              </aside>
            </li>
          </script>
          


                    <a href="UserProfile1.jsp">View Your Profile</a>

                  </body>
                  </html>
