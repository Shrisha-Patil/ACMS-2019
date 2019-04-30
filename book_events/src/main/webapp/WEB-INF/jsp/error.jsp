<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spring MVC Email Example</title>
        <style type="text/css">
            #errorMessage {
                text-align: center;
                font-size: 25px;
                padding-top: 17px;
            }
            #errorMessage span {
                color: red;
            }
        </style>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>
               jQuery(window).load(function(){
                   jQuery(".popcorn-loader-overlay").fadeOut(1000);
               });
           </script>

        <noscript>
          <style>.popcorn-loader-overlay { display: none; } </style>
        </noscript>
        <style media="screen">
        *{
          padding: 0;
          margin: 0
        }
           body{
               font-family: 'Cabin Sketch', cursive;
               background-image:url(projector.jpg);
                background-position: top 80px left 100px;
                background-color: #45a29e;
                background-size: 25%;
           }
           header{
             width: 100%;
             height:4.5em;
             color: white;
             background-color: black;
           }
           .headermenu .logo a{
               text-decoration: none;
               color: white;
           }
           .icon{
            float: right
           }
           .logo{
             font-family: 'Fredericka the Great', cursive;
             font-size: 2.8em;
           }
           .list .card{
             margin-left: 10px;
             margin-right: 10px;
             margin-top: 50px;
           }
           .popcorn-loader-overlay {
               width: 100%;
               height: 100%;
               background: url('popcorn.gif') center no-repeat #FFF;
               z-index: 99999;
               position: fixed;
           }
        </style>
    </head>

    <body>
      <div class="popcorn-loader-overlay"></div>

      <header>
        <div class="headermenu">
          <div class="logo">
            <a href="index.html">eQarth</a>
            <div class="icon">
                <i class="fa fa-user" aria-hidden="true" style="font-size:36px;"> <a href="#"></a> </i>
            </div>
          </div>
        </div>
      </header>
  <br><br>

      
    <%String showid=(String) session.getAttribute("showid"); %>
        <center>
            <h2>Spring MVC Email Example</h2>
        </center>
        <br /> <br />
        <div id="errorMessage">
            <strong>Sorry!!!!!No seats selected. Please select atleast one seat</strong>
            <td><a href="showtimes/choose-slot/${showid}/showseatstatus">Go back to seat map</a>
        </div>
    </body>
</html>