<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.io.*,java.util.*,java.sql.Connection,java.sql.ResultSet,java.sql.Statement,java.text.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,com.project.BeanAdd" %>
    <%
	if(session.getAttribute("name")==null || !session.getAttribute("name").equals("admin"))
		response.sendRedirect("login.jsp");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> 
<link rel="stylesheet" href="weladmincss.css">
<title>Dashboard</title>
</head>
<body >

<%session.setAttribute("query","select * from warehouse");
	  session.setAttribute("done",null);%>
 	<nav id="slide-menu">
		  <ul>
		    <li class="View Stock" ><a href="viewstock.jsp">View Stock</a></li>
		    <li class="Add Stock"><a href="addstock.jsp">Add Stock</a></li>
		    <li class="Set Rules"><a href="setrules.jsp">Set Rules & Category</a></li>
		    <!-- <li class="Move Stock"><a href="movestock.jsp">Move Stock to shelf</a></li> -->
		<!--  <li class="Report Damage"><a href="reportdamage.jsp">Report Damage</a></li> -->
		    <li class="Generate Invoice"><a href="geninvoice.jsp">Generate Invoice</a></li>
		    <li class="logout"><a href="logout">Logout</a></li>
		  </ul>
		</nav>
	<div class="row">
		<div id="content" class="column">
		
		  <div class="menu-trigger"></div>
		  
		  
		  <h1>Welcome Back</h1>
		  <p>Admin of the system</p>
		  <br><br>
		  
			
			
			
	<%ArrayList<ArrayList<String>> datelist=(ArrayList<ArrayList<String>>)session.getAttribute("datelist");%>		
	<%ArrayList<ArrayList<String>> countlist=(ArrayList<ArrayList<String>>)session.getAttribute("countlist");%>
	<%if((datelist != null && datelist.size()>0) || (countlist != null && countlist.size()>0)){%>
			
	
			<div class="container page-todo bootstrap snippets">
				<div class="col-sm-7 tasks">
					<div class="task-list">
						<h1><strong>Requires Attention!!!</strong></h1> 
			
			
			
			<%if(datelist != null && datelist.size()>0){%>
			
				<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    To Be Expired Soon
  </button>
  <div class="collapse" id="collapseExample">
  <div class="card card-body">
						<div class="priority high"><span>To be Expired Soon</span></div>
						
						<%
						DateFormat df5 = new SimpleDateFormat("E, MMM dd yyyy");
						
						for(int i=0;i<datelist.size();i++)
							{%>
							<div class="task high">
							<div class="desc">
								<div class="title"> <%= datelist.get(i).get(0) %></div>
								<div>In <%= datelist.get(i).get(1) %> category from vendor code : <%= datelist.get(i).get(2) %> is about to expire in <%= datelist.get(i).get(4) %> days</div>
								</div>
								<% Date expiry=new SimpleDateFormat("dd-MM-yyyy").parse(datelist.get(i).get(3));   %>
								<div class="time">
									<div class="date"><%=df5.format(expiry)%></div>
								</div>
							</div>
							<div class="clearfix"></div>
							
							<%}%>	
				</div>
				</div>	
			<% }%>
			
			
			<%if(countlist != null && countlist.size()>0){%>
			<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapsestock" aria-expanded="false" aria-controls="collapsestock">
    Going Out Of Stock Soon
  </button>
  <div class="collapse" id="collapsestock">
  <div class="card card-body">
				
						<div class="priority medium"><span>Going out of stock soon</span></div>
						
						<%
						
						
						for(int i=0;i<countlist.size();i++)
							{%>
							<div class="task medium">
							<div class="desc">
								<div class="title"> <%= countlist.get(i).get(0) %></div>
								<div>In <%= countlist.get(i).get(1) %> category from vendor code : <%= countlist.get(i).get(2) %> is about to go out of stock.</div>
								</div>
								<div class="time">
									<div class="date">Only <%= countlist.get(i).get(3) %> items left</div>
								</div>
							</div>
							<div class="clearfix"></div>
							<%}%>
				</div>
				</div>		
			<% }%>
			
			</div>
			</div>
			</div>
		<%} %>
			
			
			
			
			

		
		</div>
	
	</div>
		
	<script src="weladminjs.js"> </script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>