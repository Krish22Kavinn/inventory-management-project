<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ page import="java.io.*,java.util.*,java.sql.*"%>
   <%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="verifystockcss.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Verify Stock</title>
</head>
<body>
<div class="header">
	<header><h2><a href="welchecker.jsp"><button class="btn btn-secondary btn-lg btn-block">Back to Dashboard</button></a></h2></header>
</div>
<br><br>
	<div class="table-responsive-vertical shadow-z-1">
	 <form action="changestatus" method="get">
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
          <th>Status</th>
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
			
			ResultSet result = statement.executeQuery("SELECT * FROM TEMPSTORE");
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
	  			<td data-title="Status"><select name="status" value="pending" ><option value="pending">Pending</option><option value="reject">Reject</option><option value="accept">Accept</option></select></td>
				 
	  		</tr>
	  	<%} %>
	  
	   </tbody>
	  </table>
	  <br>
	  <button class="btn btn-lg btn-primary btn-block"  type="submit">Confirm Status</button>
	  <%
			
		}
		catch(Exception e)
		{
			System.out.print(e);
		}%>
	  </form>
</body>
</html>