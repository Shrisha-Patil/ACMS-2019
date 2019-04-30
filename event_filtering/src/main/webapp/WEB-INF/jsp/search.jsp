<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
 <head>
  <title>Search event</title>
  
  <%
	String url = request.getRequestURL().toString();
	String baseUrl = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>

  <!--icons & fonts-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">
  <!--search files-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!--slider files-->
  <link rel="stylesheet" type="text/css" href="<%=baseUrl%>/resources/css/slick.css"/>
  <link rel="stylesheet" type="text/css" href="<%=baseUrl%>/resources/css/slick.css""/>
  <link rel="stylesheet" type="text/css" href="<%=baseUrl%>/resources/css/search.css""/>


  <style>
  body{
    margin: 0;
    padding: 0;
    height:auto;
    background-color: #45A29E;
    background-size:cover;
    font-family: 'Cabin Sketch', cursive;
  }
   /*header*/
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
    .mov h1 a{
      text-decoration: none;
      color: white;
    }
    .sports h1 a{
      text-decoration: none;
      color: white;
    }
    .drama h1 a{
      text-decoration: none;
      color: white;
    }
    .standup h1 a{
      text-decoration: none;
      color: white;
  
  </style>
 </head>

 <body>




   <header>
     <div class="headermenu">
       <div class="logo">
         <a href="/">eQarth</a>
         <div class="icon">
             <i class="fa fa-user" aria-hidden="true" style="font-size:36px;"> <a href="#"></a> </i>
         </div>
       </div>

     </div>
   </header>



 
 


  <br><br><br><br>
       <h1>Upcoming</h1>
       <div class="bar">
         <c:forEach var="city" items="${listci}">
         <div><img src="<%=baseUrl%>/resources/Images/${city.poster}" style="position:relative;left:40px;" width="650px" height="290px" />  <a href="#"></a> </div>
         </c:forEach>
       </div>
       <br><br>

       <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
       <script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
       <script type="text/javascript" src="<%=baseUrl%>/resources/js/slick.min.js"></script>

       <!--upcoming-->
       <script type="text/javascript">
       $(document).ready(function(){
       $('.bar').slick({
       arrows: false,
       autoplay: true,
       autoplaySpeed: 1200,
       slidesToShow:2
       });
       });
       </script>


  <div class="mov" id="mov">
    <h1><a onclick='javascript:nextPage(this.id);'>Movies</a></h1>
    <select class="movielist" name="movielist" id="movcat">
      <option value="romantic" id="romantic" onclick='javascript:nextPage(this.id);'>Romantic</option>
      <option value="comedy" id="comedy" onclick='javascript:nextPage(this.id);'>Comedy</option>
      <option value="action" id="action" onclick='javascript:nextPage(this.id);'>Action</option>
      <option value="scifithrill" id="scifithrill" onclick='javascript:nextPage(this.id);'>Sci-fi & thriller</option>
      <option value="horror" id="horror" onclick='javascript:nextPage(this.id);'>Horror</option>
      <option value="animation" id="animation" onclick='javascript:nextPage(this.id);'>Animation</option>
      <option value="" id=""></option>
    </select>
    <br>
    <div class="slidemov">
       <c:forEach var="mov" items="${listm}">
         <div><a href="inevent/${mov.event_id}"><img src="<%=baseUrl%>/resources/Images/${mov.poster}" width="165px" height="130px"/></a> </div>
         </c:forEach>
      
    </div>
</div>
<script type="text/javascript">
     $('.slidemov').slick({
     slidesToShow: 6,
     slidesToScroll: 2,
     arrows: false,
     autoplay: true,
     autoplaySpeed: 1200,
    });
    </script>


<div class="sports" id="sports">
  <h1><a onclick='javascript:nextPage(this.id);'>Sports</a></h1>
  <select class="sportlist" name="sportlist" id="sportcat">
    <option value="football" id="football" onclick='javascript:nextPage(this.id);'>Football</option>
    <option value="cricket" id="cricket" onclick='javascript:nextPage(this.id);'>Cricket</option>
    <option value="tt" id="tt" onclick='javascript:nextPage(this.id);'>Table tennis</option>
    <option value="hockey" id="hockey" onclick='javascript:nextPage(this.id);'>Hockey</option>
    <option value="badminton" id="badminton" onclick='javascript:nextPage(this.id);'>Badminton</option>
    <option value="kabaddi" id="kabaddi" onclick='javascript:nextPage(this.id);'>Kabaddi</option>

  </select>
  <div class="slidemov">
    <c:forEach var="sprt" items="${lists}">
         <div><img src="<%=baseUrl%>/resources/Images/${sprt.poster}" width="165px" height="130px"/>  <a href="#"></a> </div>
         </c:forEach>

</div>

<script type="text/javascript">
     $('.slidemov').slick({
     slidesToShow: 3,
     slidesToScroll: 2,
     autoplay: true,
     autoplaySpeed: 1200,
    });
    </script>

<div class="drama" id="drama">
  <h1><a onclick='javascript:nextPage(this.id);'>Drama</a></h1>
  <select class="dramalist" name="dramalist" id="dramacat">
     <option value="comedy" id="comedy" onclick='javascript:nextPage(this.id);'>Comedy</option>
     <option value="mime" id="mime" onclick='javascript:nextPage(this.id);'>Mime</option>
     <option value="melo" id="melo" onclick='javascript:nextPage(this.id);'>Melo drama</option>
    </select>
  <div class="slidemov">
    <div class="slidemov">
    <c:forEach var="dr" items="${listd}">
         <div><img src="<%=baseUrl%>/resources/Images/${dr.poster}" width="165px" height="130px"/>  <a href="#"></a> </div>
         </c:forEach>

  </div>
</div>

<script type="text/javascript">
     $('.slidemov').slick({
     slidesToShow: 3,
     slidesToScroll: 2,
     autoplay: true,
     autoplaySpeed: 1200,
    });
    </script>

<div class="standup" id="standup">
  <h1><a onclick='javascript:nextPage(this.id);'>Stand-up</a></h1>

  <div class="slidemov">
    <c:forEach var="st" items="${listst}">
         <div><img src="<%=baseUrl%>/resources/Images/${st.poster}" width="165px" height="130px"/>  <a href="#"></a> </div>
         
         </c:forEach>

  </div>
</div>

<script type="text/javascript">
     $('.slidemov').slick({
     slidesToShow: 3,
     slidesToScroll: 2,
     autoplay: true,
     autoplaySpeed: 1200,
    });
    </script>


    <!--next page-->
    <script type="text/javascript">
     function nextPage(id){
       window.location="listall.html/"+id;
      }

    </script>

<br><br><br>


</script>

 </body>
</html>