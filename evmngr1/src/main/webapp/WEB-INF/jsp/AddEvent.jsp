<!DOCTYPE html>

<html lang="en" dir="ltr">

<head>

<meta charset="utf-8" content="">

<style>
html{
	padding:0;
	margin:0;
}
body{
	background-image:url(projector.jpg);
	background-position: top 80px left 100px;
	background-color: #45a29e;
	background-size: 25%;
	color:white;
	scroll-padding: 100px;
}
.popcorn-loader-overlay {
	width: 100%;
	height: 100%;
	background: url('popcorn.gif') center no-repeat #FFF;
	z-index: 99999;
	position: fixed;
}
header{
	width: 100%;
	background-color: #1f2833;
	margin:0;
	padding:0;
	position: absolute;
	 top: 0;
	 left: 0;
	 right: 0;
	 height: 65px;
}
.logo{
	margin-left: 15px;
	position: absolute;
	vertical-align: middle;
	font-family: 'Fredericka the Great';
	font-size: 2.8em;
	color:white;
}
*{
	margin:0;
	padding:0;
}
.font{
  font-family: 'Cabin Sketch', cursive;
}
  #savencont{
    align-self:center;
    background-color: #0b0c10;
    width: 30%;
    margin:20px;
    height: 55px;
    border: none;
    cursor: pointer;
    color: #fff;
    outline: none;
    font-size: 20px;
    font-weight: normal;
    text-transform: uppercase;
    transition: all 0.5s ease-in-out;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    border-radius: 30px;
    -webkit-border-radius: 30px;
    -moz-border-radius: 30px;
    -o-border-radius: 30px;
    -ms-border-radius: 30px;
  }
  #savencont:hover {
    background-color:#c5c6c7;
    color:#fff;
  }
  input#name,input#poster,input#trailer,input#category,input#genre,input#synopsis,input#duration,input#date,input#cast,input#moviegenre,input#dramagenre,input#sportsgenre{
    padding:0 40px;
    width:20%;
    height:45px;
    border: 1px solid #dadada;
    color: black;
    text-align:justify;
    outline: none;
    letter-spacing: 1px;
    font-size: 16px;
    font-weight:normal;
    font-family: 'Cabin Sketch', cursive;
    border-radius:30px;
    -webkit-border-radius:30px;
    -moz-border-radius:30px;
    -o-border-radius:30px;
    -ms-border-radius:30px;
  }
</style>


<title>Add an Event</title>
<!--icons & fonts-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cabin+Sketch" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
	jQuery(window).load(function() {
		jQuery(".popcorn-loader-overlay").fadeOut(1000);
	});
</script>

<noscript>
	<style type="text/css">
.popcorn-loader-overlay {
	display: none;
}
</style>
</noscript>

</head>

<body background ="${pageContext.request.contextPath}/resources/images/projecter.jpg" style="overflow:auto;" link="#66fcf1" vlink="white" alink="#0b0c10">

	<header>
		<div class="headermenu">
			<div class="logo">
				<a href="index.html">eQarth</a>

			</div>

		</div>
	</header>

	<div class="popcorn-loader-overlay"></div>
<br>
<br>
<br>
<br>
<br>
<div class="font">
	<div style="text-align: center;" class="addevent">
		<h1><mark style="background-color:#1f2833; color:white;">Add an Event</mark></h1>
	</div>
	<br>
	<br>


	<form action="save" method="post" style="text-align:center;">

          <div class="form-control">
            <label class="header"><mark style="background-color:#1f2833; color:white;">Name of the Event:</mark></label>
            <input type="text" title="Name" id="name" name="name" placeholder="Name"
            required method="post">
          </div>

<br>

					<div class="form-control">
            <label class="header"><mark style="background-color:#1f2833; color:white;">Poster of the Event:</mark></label>
            <input type="file" title="poster" id="poster" name="poster" placeholder="Enter the .jpg format"
            required method="post">
          </div>

<br>

					<div class="form-control">
						<label class="header"><mark style="background-color:#1f2833; color:white;">Trailer:</mark></label>
						<input type="text" title="Trailer" id="trailer" name="trailer" placeholder="Please enter the Youtube link"
						required method="post">
					</div>

<br>

					<div class="form-control">
						<label class="header"><mark style="background-color:#1f2833; color:white;">Synopsis:</mark></label>
						<input type="text" title="synopsis" id="synopsis" name="synopsis" placeholder="Enter a brief description of the event"
						required method="post">
					</div>

					<br>

					<div class="form-control">
						<label class="header"><mark style="background-color:#1f2833; color:white;">Duration:</mark></label>
						<input type="text" title="Duration" id="duration" name="duration" placeholder="How long is your event?"
						required method="post">
					</div>

					<br>

					<div class="form-control">
						<label class="header"><mark style="background-color:#1f2833; color:white;">Date:</mark></label>
						<input type="text" title="Date" id="date" name="date" placeholder="Date of the event"
						required method="post">
					</div>

					<br>

					<div class="form-control">
						<label class="header"><mark style="background-color:#1f2833; color:white;">Cast:</mark></label>
						<input type="text" title="Cast" id="cast" name="cast" placeholder="Cast of the event"
						required method="post">
					</div>

<br>
<div class="form-control" id="category">
	<label class="header"><mark style="background-color:#1f2833; color:white;">Category:</mark></label>
	<select onchange="categoryCheck()" name="category" id="category" method="post" required>
		<option id="empty" > EMPTY </option>
		<option id="Movie">Movie</option>
		<option id="Sports">Sports</option>
		<option id="Drama">Drama</option>
		<option id="Stand-up">Stand-up</option>
	</select>
</div>

<br>

<script type="text/javascript">
function categoryCheck(){
if (document.getElementById("Movie").selected) {
document.getElementById("moviegenre").style.display = "block";
document.getElementById("sportsgenre").style.display = "none";
document.getElementById("dramagenre").style.display = "none";
}
else if(document.getElementById("Sports").selected){
document.getElementById("sportsgenre").style.display = "block";
document.getElementById("moviegenre").style.display = "none";
document.getElementById("dramagenre").style.display = "none";
}
else if(document.getElementById("Drama").selected){
document.getElementById("dramagenre").style.display="block"
document.getElementById("moviegenre").style.display = "none";
document.getElementById("sportsgenre").style.display = "none";
}
else if(document.getElementById("Stand-up").selected){
document.getElementById("dramagenre").style.display="none"
document.getElementById("moviegenre").style.display = "none";
document.getElementById("sportsgenre").style.display = "none";
}
else
{
document.getElementById("dramagenre").style.display="none"
document.getElementById("moviegenre").style.display = "none";
document.getElementById("sportsgenre").style.display = "none";
}
}
</script>

<div class="form-control" id="moviegenre">
<label class="header" title="Genre"><mark style="background-color:#1f2833; color:white;">Genre:</mark></label>
<select name="genre" method="post" required>
<option value=" " selected> EMPTY </option>
<option value="Romantic">Romantic</option>
<option value="Comedy">Comedy</option>
<option value="Action">Action</option>
<option value="Sci-fi & thriller">Sci-fi & thriller</option>
<option value="Horror">Horror</option>
<option value="Animation">Animation</option>
</select>
</div>

<br>
<div class="form-control" id="sportsgenre">
<label class="header" title="Genre"><mark style="background-color:#1f2833; color:white;">Genre:</mark></label>
<select name="genre" method="post" required>
<option value=" " selected> EMPTY </option>
<option value="Football">Football</option>
<option value="Cricket">Cricket</option>
<option value="Table Tennis">Table Tennis</option>
<option value="Hockey">Hockey</option>
<option value="Badminton">Badminton</option>
<option value="Kabaddi">Kabaddi</option>
</select>
</div>
<br>
<div class="form-control" id="dramagenre" >
<label class="header" title="Genre"><mark style="background-color:#1f2833; color:white;">Genre:</mark></label>
<select name="Genre" method="post" required>
<option value=" " selected> EMPTY </option>
<option value="Comedy">Comedy</option>
<option value="Mime">Mime</option>
<option value="Melodrama">Melodrama</option>
</select>
</div>

<br>
<div>
	<input style="text-align: center; font-family:'Cabin Sketch',cursive;" type="submit" id="savencont" class="submit" title="Save and Continue" method="post" value="Save and Continue">
</div>

<script type="text/javascript">
    document.getElementById("savencont").onclick = function () {
        location.href = "AddVenue.jsp";
    };
</script>



</div>
</body>
</html>