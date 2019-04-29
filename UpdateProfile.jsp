<%@ page contentType="text/html; charset=utf-8" language="java"%>

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
    #change{
      align-self:center;
      background-color: #0b0c10;
      width: 30%;
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
    #change:hover {
      background-color:#c5c6c7;
      color:#fff;
    }
    input#username,input#pw{
      padding:0 40px;
      width:20%;
      height:45px;
      border: 1px solid #dadada;
      color: black;
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

  </style>


  <title>Update Your Profile</title>
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
      <h1><mark style="background-color:#1f2833; color:white;">Update Your Profile</mark></h1>

  <form action="UserProfile.jsp" method="post">
<br>
<br>
    <div class="form-control">
      <label class="header"><mark style="background-color:#1f2833; color:white;">Name:</mark></label>
      <input type="text" title="Name" id="name" name="name" value= "${name}"
       method="post">
    </div>

<br>

    <div class="form-control">
      <label class="header"><mark style="background-color:#1f2833; color:white;">Phone Number:</mark></label>
      <input type="tel" title="Phone Number" id="phone_number" name="phone_number"
      value="${phone_no}" method="post" title="Phone Number" >
    </div>



<br>

<div class="form-control">
  <label class="header"><mark style="background-color:#1f2833; color:white;">City:</mark></label>
  <input type="text" title="City" id="city" name="city"
  value="${address}" method="post" title="City" >
</div>

<br>

    <div class="form-control">
      <label class="header"><mark style="background-color:#1f2833; color:white;">Profile Photo:</mark></label>

      <input id="image" title="Profile Photo" type="file" name="profile_photo" value="${photo}" method="post" capture>
    </div>


<br>




    <div class="form-control">
      <label class="header" title="Type of User"><mark style="background-color:#1f2833; color:white;">Type of User: </mark></label><select name="type_of_user" method="post" >
        <option value=" " selected> EMPTY </option>
        <option value="Customer">Customer</option>
        <option value="Manager">Manager</option>
        <option value="Both">Both</option>
      </select>
    </div>


<br>


  <a href="UserProfile1.jsp"><mark style="background-color:#1f2833; color:white;">Save Your Changes and Go Back to Your Profile</mark></a>


</form>

</div>
</div>
</body>
</html>
