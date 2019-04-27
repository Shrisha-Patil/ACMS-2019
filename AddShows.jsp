<%@ page contentType="text/html; charset=utf-8" language="java"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

  <meta charset="utf-8">

  <style>

   </style>

   <title>Add the Show Details</title>
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
       <h1><mark style="background-color:#1f2833; color:white;">Add Show details</mark></h1>

   <form method="post">
 <br>
 <br>
     <div class="form-control">
       <label class="header"><mark style="background-color:#1f2833; color:white;">Date:</mark></label>
       <input type="text" title="date" id="date" name="date" placeholder="Date"
        method="post">
     </div>

 <br>
   <div class="form-control">
     <label class="header"><mark style="background-color:#1f2833; color:white;">Time:</mark></label>
     <input type="text" title="time" id="time" name="time" placeholder="Time"
      method="post">
   </div>

<br>
  <div class="form-control">
    <label class="header"><mark style="background-color:#1f2833; color:white;">Cost of each ticket:</mark></label>
    <input type="text" title="cost" id="cost" name="cost" placeholder="Cost per ticket"
     method="post">
  </div>

<br>
  <div>
  	<input style="text-align: center; font-family:'Cabin Sketch',cursive;" type="submit" id="submit" class="submit" title="Submit" method="post" value="Submit">
  </div>
  <script type="text/javascript">
      document.getElementById("submit").onclick = function () {
          location.href = "EventManager.jsp";
      };
  </script>


</form>

</body>
</html>
