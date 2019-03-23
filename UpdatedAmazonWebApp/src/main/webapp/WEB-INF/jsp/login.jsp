<!DOCTYPE html>
<html lang="en" dir="ltr">

	<head>
		<meta charset="utf-8">
		<link href="<c:url value="/resources/css/LoginPage.css" />" rel="stylesheet">
<%-- 		<link href="${LoginPageCss}" rel="stylesheet" type="text/css" > --%>

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
    
    <font color="red">${errorMessage}</font>

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

    <a href="/forgot-password">
      Forgot Password?</a>


      <br>

      <p>Don't have an account?<a href="/RegistrationPage" title="Register Here"> Register Here
      </a></p>

    </body>

    </html>
    
    <spring:url value="/resources/css/LoginPage.css" var="LoginPageCss" />