<!DOCTYPE html>

<html lang="en" dir="ltr">

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
.font{
  font-family: 'Cabin Sketch', cursive;
}
  #reset-password{
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
  #reset-password:hover {
    background-color:#c5c6c7;
    color:#fff;
  }
  input#password{
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

  <title>Reset Your Password</title>
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

    <header>
      <div class="headermenu">
        <div class="logo">
          <a href="index.html">eQarth</a>
    </header>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>


    <div class="popcorn-loader-overlay"></div>
    <br>
    <br>
    <br>
    <br>
    <br>

<div class="font">
    <div style="text-align:center;">
      <h1><mark style="background-color:#1f2833; color:white;">Reset Your Password</mark></h1>
      </div>
      <br>
      <br>
<form method="post">
      <div style="text-align: center;">
        <label class="password"><mark style="background-color:#1f2833; color:white;">Enter Your New Password:</mark></label>
        <input type="password" title="password" id="password" method ="post" name="password" placeholder="Password" required>
      </div>

<br>



      <div style="text-align: center;">
        <input style="font-family: 'Cabin Sketch',cursive;" type="submit" id="reset-password" value="Reset Password" >
        <script type="text/javascript">
          document.getElementById("reset-password").onclick = function () {
            location.href = "/LoginPage";
          };
        </script>
      </div>
    </div>
</form>
</body>
</html>