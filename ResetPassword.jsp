<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">

<head>

  <meta charset="utf-8">

  <link rel="stylesheet" type="text/css" href="ResetPassword.css">

  <title>Reset Your Password</title>

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
      <h1>Reset Your Password</h1>
      </div>

      <div style="text-align: center;">
        <label class="password">New Password:</label>
        <input type="password" title="password" id="password" method ="post" name="password" placeholder="Password" required>
      </div>

<br>

      <div style="text-align: center;">
        <label class="confirm_password">Confirm Password:</label>
        <input type="password" title="confirm_password" id="confirm_password" method ="post" name="confirm_password" placeholder="Confirm Password" required>
      </div>

      <script>

      var password = document.getElementById("password")
      var confirm_password = document.getElementById("confirm_password");

      function validatePassword()
      {
        if(password.value == confirm_password.value)
        {
          confirm_password.setCustomValidity("Passwords Match");
        }
        else
        {
          confirm_password.setCustomValidity("Passwords Don't Match");
        }
      }

      password.change = validatePassword();
      confirm_password.onkeyup = validatePassword();
    </script>

      <div style="text-align: center;">
        <input type="submit" id="reset-password" value="Reset Password" >
        <script type="text/javascript">
          document.getElementById("reset-password").onclick = function () {
            location.href = "LoginPage.jsp";
          };
        </script>
      </div>

</body>
</html>
