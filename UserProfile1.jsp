<%@ page contentType="text/html; charset=utf-8" language="java"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
    text-align: center;
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
    align-self: auto;
  }
  #booking-history,#update-profile,#reset-password{
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
  #booking-history:hover {
    background-color:#c5c6c7;
    color:#fff;
  }
  #update-profile:hover {
    background-color:#c5c6c7;
    color:#fff;
  }
  #reset-password:hover {
    background-color:#c5c6c7;
    color:#fff;
  }
  </style>

  <meta charset="utf-8">

  <title>View Profile</title>
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
  <script src="RegistrationPage.js"></script>
  <header>
    <div class="headermenu">
      <div class="logo">
        <a href="index.html">eQarth</a>
      </header>

      <div class="popcorn-loader-overlay"></div>
      <div class="font">
        <br>
        <br>
        <br>
<br>
<br>
        <h1><mark style="background-color:#1f2833; color:white;">Your Profile</mark></h1>
        <br>
        <br>
        <span><mark style="background-color:#1f2833; color:white;">Name: ${name}</mark></span>
        <br>
        <br>
        <span><mark style="background-color:#1f2833; color:white;">Email: ${email}</mark></span>
        <br>
        <br>
        <span><mark style="background-color:#1f2833; color:white;">Address: ${address}</mark></span>
        <br>
        <br>
        <span><mark style="background-color:#1f2833; color:white;">Phone Number: ${phone_no}</mark></span>
        <br>
        <br>
        <span><mark style="background-color:#1f2833; color:white;">Gender: ${gender}</mark></span>
        <br>
        <br>
        <span><mark style="background-color:#1f2833; color:white;">Profile Photo: ${photo}</mark></span>
        <br>
        <br>
        <span><mark style="background-color:#1f2833; color:white;">City: ${city}</mark></span>

        <br>
        <br>
        <a href="ViewBookingHistory.jsp" id="booking-history">View Your Booking History</a>
        <br>
        <br>
        <a href="UpdateProfile.jsp" id="update-profile">Update Your Profile</a>
        <br>
        <br>

        <a href="ResetPassword.html" id="reset-password">Reset Your Password</a>
      </div>
    </body>
    </html>
