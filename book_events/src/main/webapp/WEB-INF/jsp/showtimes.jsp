<%@page import="com.amazon.model.Show,java.util.*"%>
<div class="row">
	<div class="col-sm-4">
		<h3>Select Show</h3>
	</div>
	
	<div class="container-fluid col-sm-7">
		<div class="tb">

			<%
				List<Show> list = (List<Show>) session.getAttribute("showlist2");
				ListIterator<Show> itr = list.listIterator();
				while (itr.hasNext()) {
					Show s = itr.next();
					out.print("<button type='button' class='button timebutton' id='button" + s.getShow_id()
							+ "' onclick='sendInfo2(`" + s.getShow_id() + "`)'>" + s.getTime().toString().substring(0, 5)
							+ "  <span class='cost'><span class='glyphicon fa fa-inr'></span> " + s.getCost() + "</span></button>  ");
				}
			%>
		</div>

	</div>
</div>


<%-- <%@page import="com.amazon.model.Show,java.util.*"%>
<div class="row">
	<div class="col-sm-4">
		<h3>Select Show</h3>
	</div>
	
	<div class="container-fluid col-sm-8">
		<div class="tb">
			<%
				List<Show> list = (List<Show>) session.getAttribute("showlist2");
				ListIterator<Show> itr = list.listIterator();
				while (itr.hasNext()) {
					Show s = itr.next();
					out.print("<button type='button' class='button timebutton' id='button" + s.getShow_id()
							+ "' onclick='sendInfo2(`" + s.getShow_id() + "`)'>" + s.getTime().toString().substring(0, 5)
							+ "  <span class='cost'><span class='glyphicon fa fa-inr'></span> " + s.getCost() + "</span></button>  ");
				}
			%>
		</div>
	</div>
</div>
 --%>