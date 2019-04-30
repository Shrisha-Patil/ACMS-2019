<%	
	String url1 = request.getRequestURL().toString();
	String baseUrl1 = url1.substring(0, url1.length() - request.getRequestURI().length())+ request.getContextPath() + "/";
%>

<html>
<head>
<!--font files-->
<link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">

  <!--icons-->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<style>

*{
  padding: 0;
  margin: 0;
  background-size: cover;
}
header{
  width: 100%;
  top:0px;
  height:4.5em;
  color: white;
  background-color: black;
  
}
.icon{
 float: right;

}
.logo{
  font-family: 'Fredericka the Great', cursive;
  font-size: 2.8em;
}
</style>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
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
    </nav>
</body>

</html>