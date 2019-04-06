<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">

<head>

  <meta charset="utf-8">

  <link rel="stylesheet"
  type="text/css" href="LoginPage.css">

  <title> Login Page </title>
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

    <div class="popcorn-loader-overlay"></div>

    <h1>Login to your account</h1>

    <form method="post">

      <label for="username">Username:</label>

      <input id="username" name="username" type="text"
     title="Username" method="post">

      <p>       </p>

      <label for="pw">Password:</label>

      <input id="pw" name="pw" type="password" required
      minlength="8" maxlength="20" title="Password" method="post">

      <br>

      <p>         </p>

      <input type="submit" title="Log In" value="Log In">

    </form>

    <br>

    <input id="rememberme" type="checkbox"
    name="rememberme"
    title="Keep Me Signed In">

    <label for="rememberme">Keep Me Signed In</label>

    <p>         </p>

    <a href="ForgotPassword.jsp">
      Forgot Password?</a>


      <br>

      <p>Don't have an account?<a href="RegistrationPage.jsp" title="Register Here"> Register Here
      </a></p>

    </body>

    </html>
