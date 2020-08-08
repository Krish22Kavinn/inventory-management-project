<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="weladmincss.css">
<title>Dashboard</title>
</head>
<body>
	<body>
	
	<%session.setAttribute("query","select * from warehouse");
	  session.setAttribute("done",null);%>
	<!-- Navigation -->
		<nav id="slide-menu">
		  <ul>
		    <li class="View Stock" ><a href="viewstock.jsp">View Stock</a></li>
		    <li class="Add Stock"><a href="verifystock.jsp">Verify Stock</a></li>
		    <li class="Move Stock"><a href="movestock.jsp">Move Stock to shelf</a></li>
		    <li class="Set Rules"><a href="setrules.jsp">Set Rules & Category</a>
		    <li class="Report Damage"><a href="reportdamage.jsp">Report Damage</a></li>
		    <li class="logout"><a href="logout">Logout</a></li>
		  </ul>
		</nav>
		<div id="content">
		  <div class="menu-trigger"></div>
		  <h1>Welcome Back</h1>
		  <p>Checker of the system</p>
		</div>
	<script src="weladminjs.js"> </script>
</body>
</body>
</html>