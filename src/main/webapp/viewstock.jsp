<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%
	if(session.getAttribute("name")==null || (!session.getAttribute("name").equals("admin") && !session.getAttribute("name").equals("checker")))
		response.sendRedirect("login.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="viewstockcss.css">

<title>View Stock</title>
</head>
<body style=" height:100vh; background-image:url('https://as1.ftcdn.net/jpg/02/19/19/36/500_F_219193677_3a3HsAhYvz4hT8tJsjT2Xf16LyE3nXkh.jpg'); background-position: center;background-repeat: no-repeat;background-size: cover;">
	<div >
	<%if(session.getAttribute("name").equals("admin")) {%>
	<h1><a href="weladmin.jsp"><button class="btn btn-secondary btn-lg btn-block">Back to Dashboard</button></a></h1>
	<%}else{ %>
	<h1><a href="welchecker.jsp"><button class="btn btn-secondary btn-lg btn-block">Back to Dashboard</button></a></h1>
	<%} %>
</div>

  <div id="demo">
	  <h1>Stock Available in Warehouse</h1>
	  <h2><form action="changeview2" method="post">
    <button type="submit" name="byview" value="shelfview" class="btn btn-lg btn-primary btn-block">Check stock available in shelf</button>
	</form></h2>
	  
	  <br>
	  <form name="f" action="changeview" method="post">
	  <button class="btn btn-primary btn-lg" type = "submit" name="view" value="description" onchange="changeview()"><strong> Sort by Description	 </strong></button>&emsp;	
	  <button class="btn btn-primary btn-lg" type = "submit" name="view" value="vendor code" onchange="changeview()"> <strong>Sort by vendor code </strong></button>&emsp;
	  <button class="btn btn-primary btn-lg" type = "submit" name="view" value="ID" onchange="changeview()"><strong> Sort by ID number </strong> </button>
	  </form>
	  <br>
	  <div class="table-responsive-vertical shadow-z-1">
	  
	  <table id="table" class="table table-hover table-mc-light-blue">
      <thead>
        <tr>
          <th>ID</th>
          <th>Vendor Code</th>
          <th>Category</th>
          <th>Description</th>
          <th>Count</th>
          <th>Cost</th>
          <th>Currency</th>
          <th>Expiry Date</th>
        </tr>
      </thead>
      <tbody>
        
	  	<%
	  	Connection connection=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/dept", "admin", "root");
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery(session.getAttribute("query").toString());
			while(result.next())
			{
	  	%>
	  		<tr>
	  			<td data-title="ID"><%=result.getString("id")%></td>
	  			<td data-title="Vendor Code"><%=result.getString("vendorcode")%></td>
	  			<td data-title="Category"><%=result.getString("category")%></td>
	  			<td data-title="Description"><%=result.getString("description") %></td>
	  			<td data-title="Count"><%= result.getString("count") %></td>
	  			<td data-title="Cost"><%=result.getString("cost")%></td>
				<td data-title="Currency"><%=result.getString("currency")%></td>
	  			<td data-title="Expiry Date"><%=result.getString("expiry")%></td>
				 
	  		</tr>
	  	<%
			}
		}
		catch(Exception e)
		{
			System.out.print(e);
		}%>
	  
	  
	   </tbody>
	  </table>
	  </div>
	        
	</div>        	
</body>
</html>