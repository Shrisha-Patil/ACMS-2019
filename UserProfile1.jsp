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
    font-family: 'Cabin Sketch',cursive;
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

        <a href="ViewBookingHistory.jsp">View Your Booking History</a>
        <br>
        <br>
        <a href="UpdateProfile.jsp">Update Your Profile</a>
        <br>
        <br>
       <a href="ResetPassword.html">Reset Your Password</a>
<br>
  <br>
    <a href="EventManager.jsp">Manage Your Events (For Event Managers Only)</a>
<br>
  <br>
    <input type="button" value="logout" id="top-btn-logout" onclick="test()">
      <script>
      $.ajax({
            url: 'Logout.html',
            type: 'get',
            data:{action:'logout'},
            success: function(data){
            alert(data);
            }
        });
</script>
        </div>

    </body>
    </html>
