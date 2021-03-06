<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
    background-image:url("/resources/images/projector.jpg");
    background-position: top 80px left 100px;
    background-size: cover;
    backgrounf-repeat: no-repeat;
    height: 20%;
    background-position: center;
    background-color: #45a29e;
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
  .login{
    width: 50%;
    margin: 70px 25% 80%;
    padding: 0;
    display: table;
    position: relative;
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
.space{
  margin:5px;
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
  </style>


  <title> Login Page </title>
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

  <body background="${pageContext.request.contextPath}/resources/images/projector.jpg" style="overflow:hidden;" link="#66fcf1" vlink="white" alink="#0b0c10">

    <header>
      <div class="headermenu">
        <div class="logo">
          <a href="index.html">eQarth</a>
    </header>

    <div class="popcorn-loader-overlay"></div>

<div class="space">
  <br>
  <br>
<div class="font">
    <div style="text-align:center;" class="login">

      <h1 ><mark style="background-color:#1f2833; color:white;">Login to your account</mark></h1>
<br>
<br>
    <div style="text-align:center;">
      <form method="post">

        <label for="username"><mark style="background-color:#1f2833; color:white;">Username:</mark></label>

        <input id="username" name="username" type="text"
        title="Username" method="post" placeholder="Username">

      <br>
      <br>

        <label for="pw"><mark style="background-color:#1f2833; color:white;">Password:</mark></label>

        <input id="pw" name="pw" type="password" required
        minlength="8" maxlength="20" title="Password" placeholder="Password" method="post">

        <br>
<br>

        <input type="submit" id="login" title="Log In" value="Log In">

      </form>

      <br>
      <br>

      <input id="rememberme" type="checkbox"
      name="rememberme"
      title="Keep Me Signed In">

      <label for="rememberme"><mark style="background-color:#1f2833; color:white;">Keep Me Signed In</mark></label>

    <br>
    <br>

      <a href="/ForgotPassword">
        Forgot Password?</a>


        <br>
        <br>

        <p><mark style="background-color:#1f2833; color:white;">Don't have an account?</mark><a href="/RegistrationPage" title="Register Here"> Register Here
        </a></p>
      </div>
    </div>
  </div>
</div>
    </body>

    </html>