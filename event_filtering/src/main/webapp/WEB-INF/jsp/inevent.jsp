<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <%
	String url = request.getRequestURL().toString();
	String baseUrl = url.substring(0, url.length() - request.getRequestURI().length())
			+ request.getContextPath() + "/";
%>
    <!--style sheet-->
    <!--fonts and icons-->
    <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
  </head>
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
     .popcorn-loader-overlay {
         width: 100%;
         height: 100%;
         background: url('popcorn.gif') center no-repeat #FFF;
         z-index: 99999;
         position: fixed;
     }


  </style>
  <body background="${pageContext.request.contextPath}/resources/Images/projector.jpg">

    <header>
      <div class="headermenu">
        <div class="logo">
          <a href="index.jsp">eQarth</a>
          <div class="icon">
             <a href="LoginPage.jsp">  <i class="fa fa-user" aria-hidden="true" style="font-size:36px;"> </i></a>
          </div>
        </div>
      </div>
    </header>


    <div class="display" id="display">
       <c:forEach var="eve" items="${listev}">

           <div  style="position:relative; top:170px;font-size:50px;left:40px;font-weight:bold;">
                    <mark style="color:#4B0082;background-color:#87CEEB;">${eve.name}
                    </mark>
            </div>

            <div>
                    <img src="<%=baseUrl%>/resources/Images/${eve.poster}" width="165px" height="130px" style="position:absolute; top:90px;left:40px;" >
            </div>
            
            

            <div  style="position:relative; top:200px;font-size:18px;left:30px;">
                    <iframe src="${eve.trailer}" width="100%" height="100">  </iframe>
            </div>

            <div   style="position:relative; top:230px;font-size:30px;left:30px;font-weight:bold;">
                    <mark style="color:#4B0082;background-color:#87CEEB;">${eve.synopsis}
                    </mark>
            </div>

            
            <button type="button" name="button" style="position:relative; top:380px;left:40px;background-color:#f44336;color: black;border-radius: 12px;padding: 15px 32px;"><a href="book.html">Book now</a></button>
            </c:forEach>   
    </div>



  </body>
</html>