<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html lang="en" dir="ltr">

<head>

  <meta charset="utf-8">
<style>
.font{
  font-family:'Cabin Sketch', cursive;
}
html{
  padding:0;
  margin:0;
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
 height: 60px;
}
.logo{
  margin-left: 15px;
  position: absolute;
  vertical-align: middle;
  font-family: 'Fredericka the Great';
  font-size: 2.8em;
  color:white;
}
*{
  margin:0;
  padding:0;
}
  .popcorn-loader-overlay {
      width: 100%;
      height: 100%;
      background: url('popcorn.gif') center no-repeat #FFF;
      z-index: 99999;
      position: fixed;
  }
  .signup-w3ls {
    width: 50%;
    margin: 30px 25% 80%;
    padding: 0;
    display: table;
    position: relative;
  }
  .signup-agile1{
    width:100%;
    float:center;
  }
  .signup-w3ls .signup-agile1 .form-control {
    margin-bottom: 10px;
  }
  label.header {
    font-size: 16px;
    font-weight: 500;
    width: 215px;
    color: white;
    margin-right:10px;
    text-align:justify;
    letter-spacing: 1px;
    text-transform: uppercase;
    display: inline-block;
  }
  input#image,input#name, input#email,input#phone_number, input#password,input#confirm_password,input#gender,input#type_of_user, input#city{
    padding:0 40px;
    width:40%;
    height:45px;
    border: 1px solid #dadada;
    color: #c5c6c7;
    text-align:justify;
    outline: none;
    letter-spacing: 1px;
    font-size: 16px;
    font-weight:normal;
    font-family: 'Cabin Sketch',cursive;
    border-radius:30px;
    -webkit-border-radius:30px;
    -moz-border-radius:30px;
    -o-border-radius:30px;
    -ms-border-radius:30px;
  }
  input#name:focus,input#email:focus, input#phone_number:focus,input#password:focus, input#confirm_password:focus,input#gender:focus,input#type_of_user:focus,input#image:focus,input#city:focus  {
    background-color:#f5f8fa !important;
    border:1px solid #dadada;
  }
  input::-webkit-input-placeholder {
  color: #c5c6c7;
  }
  input:-moz-placeholder { /* Firefox 18- */
  color: #c5c6c7;
  }
  input::-moz-placeholder {  /* Firefox 19+ */
  color: #c5c6c7;
  }
  input:-ms-input-placeholder {
  color: #c5c6c7;
  }
  .register {
    background-color: #0b0c10;
    width: 52%;
    height: 55px;
    border: none;
    margin-left: 233px;
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
    align-self: auto;
  }
  .register:hover {
    background-color:#c5c6c7;
    color:#fff;
  }
  body{
    background-image:url(projector.jpg);
    background-position: top 80px left 100px;
    background-color: #45a29e;
    background-size: 25%;
    color:white;
    overflow:hidden;
  }
</style>
  <title>Registration Page</title>
  <!--icons & fonts-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script>
  jQuery(window).load(function(){
    jQuery(".popcorn-loader-overlay").fadeOut(1000);
  });
  </script>

  <noscript>
    <style>.popcorn-loader-overlay { display: none; } </style> </noscript>

  </head>

  <body link="#66fcf1" vlink="white" alink="#0b0c10">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="RegistrationPage.js"></script>


    <div class="popcorn-loader-overlay"></div>
    <header>
      <div class="headermenu">
        <div class="logo">
          <a href="index.html">eQarth</a>
    </header>
<br>
<br>
<br>
<br>
<div class="container font">
    <h1 style="text-align:center;"><mark style="background-color:#1f2833; color:white;">Register for an Account</mark></h1>

    <div class="signup-w3ls">

      <div class="signup-agile1">

        <form action="UserProfile.jsp" method="post">

          <div class="form-control">
            <label class="header"><mark style="background-color:#1f2833; color:white;">Name(*):</mark></label>
            <input type="text" title="Name" id="name" name="name" placeholder="Name"
            required method="post">
          </div>

          <div class="form-control">
            <label class="header"><mark style="background-color:#1f2833; color:white;">Phone Number(*):</mark></label>
            <input type="tel" title="Phone Number" id="phone_number" name="phone_number"
            placeholder="Phone Number" method="post" required>
          </div>

          <div class="form-control">
            <label class="header"><mark style="background-color:#1f2833; color:white;">Email(*):</mark></label>
            <input type="email" title="Email" id="email" method ="post" name="email" placeholder="Email" required>
          </div>

          <div class="form-control">

            <label class="header" name="password" id="password" type="password" title="password" method="post" placeholder="Password" required><mark style="background-color:#1f2833; color:white;">Password(*):</mark></label>
            <input type="password" id="password" title="Password" name="password" placeholder="Password" required/>
          </div>


        <div class="form-control">
          <label class="header"><mark style="background-color:#1f2833; color:white;">City(*):</mark></label>

          <input type="city" title="city" id="city" method ="post" name="city" placeholder="City" required>
        </div>


        <div class="form-control">
          <label class="header"><mark style="background-color:#1f2833; color:white;">Profile Photo(optional):</mark></label>

          <input id="image" title="Profile Photo" type="file" name="profile_photo" placeholder="Photo" method="post" capture>
        </div>

        <div class="form-control">
          <label class="header" title="Gender"><mark style="background-color:#1f2833; color:white;">Gender(*):</mark></label><select name="gender" method="post" required>
            <option value=" " selected> EMPTY </option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Rather Not Say">Rather Not Say</option>
          </select>
        </div>

        <div class="form-control">
          <label class="header" title="Type of User"><mark style="background-color:#1f2833; color:white;">Type of User(*):</mark></label><select name="type_of_user" method="post" required>
            <option value=" " selected> EMPTY </option>
            <option value="Customer">Customer</option>
            <option value="Manager">Manager</option>
            <option value="Both">Both</option>
          </select>
        </div>


        <br>
        <div>
          <input style="text-align: center; font-family:'Cabin Sketch',cursive;" type="submit" class="register" title="Submit" method="post" value="Register">
        </div>

</form>

      </div>
</div>
    </body>
    </html>