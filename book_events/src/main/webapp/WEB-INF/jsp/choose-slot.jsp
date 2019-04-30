<html>
  <head>
    <!--font files-->
    <link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">

      <!--icons-->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <!--pre-loader-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>
               jQuery(window).load(function(){
                   jQuery(".popcorn-loader-overlay").fadeOut(1000);
               });
           </script>

        <noscript>
          <style>.popcorn-loader-overlay { display: none; } </style>
        </noscript>

      <style>
      .popcorn-loader-overlay {
          width: 100%;
          height: 100%;
          background: url('popcorn.gif') center no-repeat #FFF;
          z-index: 99999;
          position: fixed;
      }
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
      h2{
        font-family:'Cabin Sketch', cursive;
        font-size: 2em;
      }
      table{
       top:60px;
        font-family:'Cabin Sketch', cursive;
        font-size: 1.3em;
      }
      table.center {
       margin-left:auto;
       margin-right:auto;
     }
     body{
       background-color: #45A29E;
     }
      tr:nth-child(even) {background-color: #66fcf1;}
      tr:nth-child(odd) {background-color: #c5c6c7;}
    </style>
  </head>
<body background="${pageContext.request.contextPath}/resources/Images/projector.jpg">
<!-- <div class="popcorn-loader-overlay"></div> -->

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

	<h2>Choose slot of the events</h2>




	<table border="1" class="center">
	    <tr><th>Show_id</th><th>Date</th><th>Time</th></tr>

	    <c:forEach var="sh" items="${slot}">
			<tr>
				<td>${sh.show_id}</td>
				<td>${sh.date}</td>
				<td>${sh.time}</td>
				<td><a href="showseatstatus">Show seat status</a>
			</tr>
		</c:forEach>
	</table>

</body>
</html>