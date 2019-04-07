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

  <!--ddata-->
  <script src="script/jquery-1.8.1.min.js" type="text/javascript"></script>


  <style>
  body{
    height: 1000px;
  }
   /*header*/
    header{
      width: 100%;
      height:4.5em;
      color: white;
      background-color: black;

    }
    .icon{
     float: right;
     right: 20px;
    }
    .logo{

      font-family: 'Fredericka the Great', cursive;
      font-size: 2.8em;
    }
    a{
      text-decoration: none; /*not working check why*/
    }

  /*search*/
  #result {
   position: absolute;
   width: 460px;
   max-width:500px;
   cursor: pointer;
   overflow-y: auto;
   height: 200px;
   max-height: 450px;
   box-sizing: border-box;
   z-index: 1001;
   overflow: overlay;
  }
  .container{
    float:right 10px;
  }
  .link-class:hover{
   background-color:#f1f1f1;
  }
  /*whtasnew*/
  .bar{
    height:350px;
    width: 100%;
  /*ul li style is applying here*/
  }
  /*category*/

  ul li a{
    text-decoration: none;
    color: black;
    display: block;
  }
    ul li a:hover{
      background-color: #A5D6A7;
    }
    ul li ul li{
      display: none;
    }
    ul li:hover ul li{
      display: block;
    }
  </style>
 </head>

 <body>

<script type="text/javascript">
   var id = window.location.search;
    var querypara = id.split("/")[1];
</script>


   <header>
     <div class="headermenu">
       <div class="logo">
         <a href="index.jsp">eQarth</a>
         <div class="icon">
             <i class="fa fa-user" aria-hidden="true" style="font-size:36px;"> <a href="#"></a> </i>
         </div>
       </div>

     </div>
   </header>



  <div class="container" style="width:400px;float:right;">
   <br /><br />

   <div align="right">
    <input type="text" name="search" id="search" placeholder="Search here" class="form-control" />
   </div>

   <ul class="list-group" id="result"></ul>
   <br />
  </div>
  <!--  <script>
  $(document).ready(function(){
   $.ajaxSetup({ cache: false });
   $('#search').keyup(function(){
    $('#result').html('');
    $('#state').val('');
    var searchField = $('#search').val();
    var expression = new RegExp(searchField, "i");
    $.getJSON('data.json', function(data) {
     $.each(data, function(key, value){
      if (value.name.search(expression) != -1 || value.location.search(expression) != -1 || value.category.search(expression) != -1)
      {
       $('#result').append('<li class="list-group-item link-class"><img src="'+value.image+'" height="40" width="40" class="img-thumbnail" /> '+value.name+' | <span class="text-muted">'+value.location+'</span> | <span class="text-muted">'+value.category+'</span></li>');
      }
     });
    });
   });

   $('#result').on('click', 'li', function() {
    var click_text = $(this).text().split('|');
    window.location='movie.html?'+($.trim(click_text[0]));
    $("#result").html('');
   });
  });
  </script>
  -->




  <br><br><br><br>
       <h1>Upcoming</h1>
       <div class="bar">
         <c:forEach var="city" items="${listci}">
         <div><img src="<%=baseUrl%>/resources/Images/${city.poster}" width="250px" height="290px"/>  <a href="#"></a> </div>
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
       autoplaySpeed: 800,
       dots: true
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
    <div class="slidemov">
      <div><img src="" width="165px" height="130px"/>  <a href="#"></a> </div>
      
    </div>
</div>

<div class="sports" id="sports">
  <h1><a onclick='javascript:nextPage(this.id);'>Sports</a></h1>
  <select class="sportlist" name="sportlist" id="sportcat">
    <option value="football" id="football" onclick='javascript:nextPage(this.id);'>/Football</option>
    <option value="cricket" id="cricket" onclick='javascript:nextPage(this.id);'>Cricket</option>
    <option value="tt" id="tt" onclick='javascript:nextPage(this.id);'>Table tennis</option>
    <option value="hockey" id="hockey" onclick='javascript:nextPage(this.id);'>Hockey</option>
    <option value="badminton" id="badminton" onclick='javascript:nextPage(this.id);'>Badminton</option>
    <option value="kabaddi" id="kabaddi" onclick='javascript:nextPage(this.id);'>Kabaddi</option>

  </select>
  <div class="slidemov">
    <div><img src="" width="165px" height="130px"/>  <a href="#"></a> </div>

</div>


<div class="food" id="food">
  <h1><a onclick='javascript:nextPage(this.id);'>Food</a></h1>
  <select class="foodlist" name="foodlist" id="foodcat">
    <option value="chinese" id="chinese" onclick='javascript:nextPage(this.id);'>/Chinese</option>
    <option value="nindian" id="nindian" onclick='javascript:nextPage(this.id);'>North Indian</option>
    <option value="sindian" id="sindian" onclick='javascript:nextPage(this.id);'>South Indian</option>
    <option value="chaats" id="chaats" onclick='javascript:nextPage(this.id);'>Chaats</option>

  </select>
  <div class="slidemov">
    <div><img src="" width="165px" height="130px"/>  <a href="#"></a> </div>

</div>

<div class="drama" id="drama">
  <h1><a onclick='javascript:nextPage(this.id);'>Drama</a></h1>
  <select class="dramalist" name="dramalist" id="dramacat">
     <option value="comedy" id="comedy" onclick='javascript:nextPage(this.id);'>/Comedy</option>
     <option value="mime" id="mime" onclick='javascript:nextPage(this.id);'>Mime</option>
     <option value="melo" id="melo" onclick='javascript:nextPage(this.id);'>Melo drama</option>
    </select>
  <div class="slidemov">
    <div><img src="" width="165px" height="130px"/>  <a href="#"></a> </div>

  </div>
</div>

<div class="concert" id="concert">
  <h1><a onclick='javascript:nextPage(this.id);'>Concert</a></h1>
  <select class="conlist" name="conlist" id="concat">
     <option value="rock" id="rock" onclick='javascript:nextPage(this.id);'>Rock</option>
     <option value="pop" id="pop" onclick='javascript:nextPage(this.id);'>Pop</option>
     <option value="classical" id="classical" onclick='javascript:nextPage(this.id);'> Classical</option>
    </select>
  <div class="slidemov">
    <div><img src="" width="165px" height="130px"/>  <a href="#"></a> </div>

  </div>
</div>

<div class="standup" id="standup">
  <h1><a onclick='javascript:nextPage(this.id);'>Stand-up</a></h1>

  <div class="slidemov">
    <div><img src="" width="165px" height="130px"/>  <a href="#"></a> </div>

  </div>
</div>

 <!--all categories-->

     <script type="text/javascript">
     $('.slidemov').slick({
     slidesToShow: 6,
     slidesToScroll: 2,
     autoplay: true,
     autoplaySpeed: 1200,
    });
    </script>


    <!--next page-->
    <script type="text/javascript">
     function nextPage(id){
       window.location="listall.html?"+id;
      }

    </script>

<br><br><br>


</script>

 </body>
</html>