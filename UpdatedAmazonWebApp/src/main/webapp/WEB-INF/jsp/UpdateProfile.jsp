<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en" dir="ltr">

<head>

  <meta charset="utf-8">

  <link rel="stylesheet" type="text/css" href="ForgotPassword.css">

  <title>Forgot Password</title>

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
    <script src="ForgotPassword.js"></script>

    <div class="popcorn-loader-overlay"></div>

    <h1 style="text-align:center;">Forgot Password?</h1>

    <p style="text-align:center;">Enter your email address. An OTP will be sent to reset your password.</p>

      <div style="text-align:center;" class="email">
        <label class="header">Enter Email:</label>
        <input type="text" title="Email" id="email" name="email" placeholder="Email Address"
        required method="post">
      </div>

    <br>

    <div style="text-align:center;">
      <input type="submit" id="send-otp" value="Send OTP" >
      <script type="text/javascript">
        document.getElementById("send-otp").onclick = function () {
          location.href = "EnterOTP.html";
        };
      </script>
    </div>
  </body>
  </html>