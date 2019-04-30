<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  <style>
  *{
  padding: 0;
  margin: 0;
  background-size: cover;
}
body{
  font-family: 'Cabin Sketch';
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

  h1{
      font-family: 'Cabin Sketch';
      font-style: oblique;
      font-size: 25px;
      color: black;

  }
  .bar{
    height:350px;
    width: auto;
  }
  .trend{
    left:35px;
    width: 1450px;
    max-width: auto;
    text-align: center;
  }

  .container{

      height: 100%;
      width: 90%;
      overflow: hidden;

    }
    .container .column{

      top:-500px;
      width: auto;
      height:inherit;
      float: left;
      z-index: 1;
    }

    .container .column .content{
      left:400px;
      position:relative;
      height: 100%;
      padding-left: 40px;
      padding-right: 40px;

    }
    .container .column .content p{

      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      width: 90%;
      height: 100%;


    }
    .container .column .content .box{

      position: relative;
      top: 50%;
      transform: translateY(100%);
      box-sizing: border-box;
      padding: 40px;
      text-align: center;
      transition: 0.5s;
      opacity:0;
    }

    .container .column.active .content .box{

        opacity:0;
        transform: translate(-50%);
    }
    .container .column .bg
    {
      position: absolute;
      top:0;
      left: 0;
      width: 100%;
      height:1150px;
      pointer-events: none;
      z-index: -1;
    }

    .container .column.active .bg.bg1{
      background-color: #45A29E;
      background-size: cover;
      background-attachment: fixed;
      background-position: center;
      transition: 0.5s;
    }
    .container .column.active .bg.bg2{
      background-color: #C5C6C7;
      background-size: cover;
      background-attachment: fixed;
      background-position: center;

      transition: 0.5s;
    }
    .container .column.active .bg.bg3{
    background-color: #66FCF1;
      background-size: cover;
      background-attachment: fixed;
      background-position: center;
      transition: 0.5s;
    }
    .container .column.active .bg.bg4{
      background-color: #FFFFFF;
      background-size: cover;
      background-attachment: fixed;
      background-position: center;
      transition: 0.5s;
    }

    .popcorn-loader-overlay {
        width: 100%;
        height: 100%;
        background: url('popcorn.gif') center no-repeat #FFF;
        z-index: 99999;
        position: fixed;
    }
  </style>
    <meta charset="utf-8">
    <title>Choose city</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>
           jQuery(window).load(function(){
               jQuery(".popcorn-loader-overlay").fadeOut(1000);
           });
       </script>

    <noscript>
      <style>.popcorn-loader-overlay { display: none; } </style>
    </noscript>
     <%
	String url = request.getRequestURL().toString();
	String baseUrl = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
    <link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=baseUrl%>/resources/css/slick.css"/>
    <link rel="stylesheet" type="text/css" href="<%=baseUrl%>/resources/css/slick-theme.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  </head>

  <body>

    <div class="popcorn-loader-overlay"></div>

    <header>
      <div class="headermenu">
        <div class="logo">
          eQarth
          <div class="icon">
              <i class="fa fa-user" aria-hidden="true" > <a href="#"></a> </i>
          </div>
        </div>

      </div>
    </header>

<br>
     <h1>Whats new</h1>
     <div class="bar">
     <c:forEach var="event" items="${list}">
              <div><img src="<%=baseUrl%>/resources/Images/${event.poster}"width="250px" height="450px"/>  <a href="#"></a> </div>
              
              </c:forEach>

       
     </div>
     <br><br>

<h1>Select your city</h1>
<br><br>

     <div class="container">
       <div class="column active">
          <div class="content">
            <div class="blr" id="bangalore" onclick='javascript:nextPage(this.id);'>
              <a style="text-decoration:none;color:black;" href="search/${city='bangalore'}">
                  <p> <img src="<%=baseUrl%>/resources/Images/vid.jpg" height="70px" width="70px"></p>
                  <br><br><br><br>
                  Bengaluru
              </a></div>
             <div class="box">   </div>
          </div>
         <div class="bg bg1">  </div>
       </div>

       <div class="column">
         <div class="content">
           <div class="hyd" id="hyderabad" onclick='javascript:nextPage(this.id);'>
              <a style="text-decoration:none; href="search/${city='hyderabad' }">
               <p> <img  src="<%=baseUrl%>/resources/Images/hyder.jpg" height="70px" width="70px"  ></p>
               <br><br><br><br>
               Hyderabad
              </a></div>
           <div class="box">   </div>
         </div>
         <div class="bg bg2">  </div>
       </div>


       <div class="column">
           <div class="content">
             <div class="tir" id="tiruvanthapuram" onclick='javascript:nextPage(this.id);'>
                <a style="text-decoration:none; href="search/${city='trivandrum' }">
                 <p> <img src="<%=baseUrl%>/resources/Images/tiru.jpg"height="70px" width="70px" ></p>
                 <br><br><br><br>
                  Trivandram
                </a> </div>
             <div class="box">  </div>
           </div>
              <div class="bg bg3"> </div>
        </div>

        <div class="column">
          <div class="content">
            <div class="che" id="chennai" onclick='javascript:nextPage(this.id);'>
              <a style="text-decoration:none; href="search/${city='chennai' }">
                <p><img src="<%=baseUrl%>/resources/Images/chennai.jpg" height="70px" width="70px"> </p>
                <br><br><br><br>
                Chennai
              </a></div>
            <div class="box">  </div>
          </div>
          <div class="bg bg4">  </div>
        </div>
  </div>
<h1>Trending</h1>
  <div class="trend">
  
        <c:forEach var="tr" items="${listcate}">
              <div><img src="<%=baseUrl%>/resources/Images/${tr.poster}" width="220px" height="280px"  onclick="movie.jsp" />
               </div>
              
              </c:forEach>
  </div>

     <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
     <script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
     <script type="text/javascript" src="<%=baseUrl%>/resources/js/slick.min.js"></script>


     <script type="text/javascript">
       $(document).on('mouseover','.container .column' ,function(){
         $(this).addClass('active').siblings().removeClass('active')
       })
     </script>

      <!--whats new-->

     <script type="text/javascript">
     $(document).ready(function(){
     $('.bar').slick({
     arrows: false,
     autoplay: true,
     autoplaySpeed: 800,
     slidesToShow: 5,
     dots: false
     });
     });
     </script>

   <!--trending-->


   <script type="text/javascript">
   $(document).ready(function(){
   $('.trend').slick({
   slidesToShow: 5,
   autoplay: true,
   autoplaySpeed: 820,
   arrows: false
   });
   });
     </script>

     </script>

     <!--city-->
     <script type="text/javascript">
     function nextPage(id){
         window.location="search/"+id;
         }

     </script>
  </body>
</html>