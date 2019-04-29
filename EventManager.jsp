<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>

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
    scroll-padding: 100px;
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
.font{
  font-family: 'Cabin Sketch', cursive;
}
  #login{
    align-self:center;
    background-color: #0b0c10;
    width: 40%;
    margin:20px;
    height: 55px;
    border: none;
    cursor: pointer;
    color: #fff;
    outline: none;
    font-size: 20px;
    font-weight: normal;
    text-transform: uppercase;
    transition: all 0.5s ease-in-out;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    border-radius: 30px;
    -webkit-border-radius: 30px;
    -moz-border-radius: 30px;
    -o-border-radius: 30px;
    -ms-border-radius: 30px;
  }
  #login:hover {
    background-color:#c5c6c7;
    color:#fff;
  }
  input#username,input#pw{
    padding:0 40px;
    width:20%;
    height:45px;
    border: 1px solid #dadada;
    color: #c5c6c7;
    text-align:justify;
    outline: none;
    letter-spacing: 1px;
    font-size: 16px;
    font-weight:normal;
    font-family: 'Cabin Sketch', cursive;
    border-radius:30px;
    -webkit-border-radius:30px;
    -moz-border-radius:30px;
    -o-border-radius:30px;
    -ms-border-radius:30px;
  }
  table.center{
    margin-left:auto;
    margin-right:auto;
  }
  </style>


  <title>Manage Your Events</title>
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
   <h1 style="text-align:center;"><mark style="background-color:#1f2833; color:white;">Manage Your Events</mark></h1>

   <div class="container">
   		<table class="table center">

        <br>
        <br>
   			<thead>
   				<tr>
   					<th><mark style="background-color:#1f2833; color:white;">Name</mark></th>
   					<th><mark style="background-color:#1f2833; color:white;">City</mark></th>
   					<th><mark style="background-color:#1f2833; color:white;">Price per ticket</mark></th>
            <th><mark style="background-color:#1f2833; color:white;">Venue address</mark></th>
            <th><mark style="background-color:#1f2833; color:white;">Type of Event</mark></th>
   					<th></th>
   				</tr>
   			</thead>
   			<tbody>
   				<c:forEach items="${events}" var="event">
   					<tr>
   						<td>${event.name}</td>
   						<td>${event.city}</td>
   						<td>${event.price_per_ticket}</td>
              <td>${event.venue_address}</td>
              <td>${event.type_of_event}</td>
            	<td>

   							<a type="button" class="btn btn-warning"
   								href="DeleteEvent.html?id=${event.id}">Delete</a>
   						</td>
   					</tr>
   				</c:forEach>
   			</tbody>
   		</table>
      <br>
      <br>
   		<div>
   			<a type="button" class="btn btn-success" href="AddEvent.html"><p style="text-align: center;">Add</p></a>
   		</div>
   	</div>
<br>
<br>
<a href="UserProfile1.jsp"><p style="text-align:center;">Go Back to Your Profile</p></a>
   	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
       <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</div>
    </div>
  </body>
  </html>
