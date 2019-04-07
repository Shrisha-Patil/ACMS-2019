<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
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
    <link rel="stylesheet" href="<%=baseUrl%>/resources/css/index.css">
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
              <div><img src="<%=baseUrl%>/resources/Images/${event.poster}"width="1300px" height="450px"/>  <a href="#"></a> </div>
              
              </c:forEach>

       
     </div>
     <br><br>

<h1>Select your city</h1>
<br><br>

     <div class="container">
       <div class="column active">
          <div class="content">
            <div class="blr" id="bangalore" onclick='javascript:nextPage(this.id);'>>
              <a href="search.jsp">
                  <p> <img src="<%=baseUrl%>/resources/Images/gullyboy.jpg" height="70px" width="70px"></p>
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
              <a href="search.jsp">
               <p> <img  src="<%=baseUrl%>/resources/Images/gullyboy.jpg" height="70px" width="70px"  ></p>
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
                <a href="search.jsp">
                 <p> <img src="<%=baseUrl%>/resources/Images/gullyboy.jpg"height="70px" width="70px" ></p>
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
              <a href="search.jsp">
                <p><img src="<%=baseUrl%>/resources/Images/gullyboy.jpg" height="70px" width="70px"> </p>
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
              <div><img src="<%=baseUrl%>/resources/Images/${tr.poster}" width="250px" height="290px"/>  <a href="#"></a> </div>
              
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
     dots: true
     });
     });
     </script>

   <!--trending-->

   <script type="text/javascript">
   $(document).ready(function(){
   $('.trend').slick({
   arrows: false,
   autoplay: true,
   autoplaySpeed: 800,
   slideToShow:2,
   dots: true
   });
   });

     </script>

     <!--city-->
     <script type="text/javascript">
     function nextPage(id){
         window.location="search/"+id;
         }

     </script>
  </body>
</html>