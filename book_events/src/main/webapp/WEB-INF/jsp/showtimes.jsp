<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta charset="utf-8">
    <title></title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>
           jQuery(window).load(function(){
               jQuery(".popcorn-loader-overlay").fadeOut(1000);
           });
       </script>

    <noscript>
      <style>.popcorn-loader-overlay { display: none; } </style>
    </noscript>
    <!--icons & fonts-->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">

      <style >
      *{
        padding: 0;
        margin: 0
      }
         body{
             font-family: 'Cabin Sketch', cursive;
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
      </style>
	</head>
<body background="${pageContext.request.contextPath}/resources/Images/projector.jpg">
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
	<h2>Venues of an event</h2>


	<table border="1">
	    <tr><th>Venue_id</th><th>Venue_name</th></tr>

	    <c:forEach var="v" items="${listv}">
			<tr>
				<td>${v.venue_id}</td>
				<td>${v.v_name}</td>
				<td><a href="choose-slot/${v.venue_id}/${v.event_id}">choose slot</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>