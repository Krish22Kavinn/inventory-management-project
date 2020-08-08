<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*,com.project.BeanAdd"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="movestockcss.css">
<title>Move Stock to Shelf</title>
</head>
<body>
	<div class="header">
	<header><h2><a href="welchecker.jsp"><button class="btn btn-secondary btn-lg btn-block">Back to Dashboard</button></a></h2></header>
</div>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<div class="container-fluid p-0">
     <div class="row">
          <div class="col-12">
              <div class="searching">
                    <a href="javascript:void(0)" class="search-open">
                    <i class="fa fa-search"></i>
                </a> 
                <div class="search-inline">
                    <form action="movestocktosh" method="get">
                        <input type="text" id="search" name="search" class="form-control" placeholder="Searching...">
                        <button class="btn" type="submit"  >Search</button>
                        <a href="javascript:void(0)" class="search-close">
                            <i class="fa fa-times"></i>
                        </a>
                    </form>
                </div>
            </div>
        </div>
     </div>
</div>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- partial -->
  <script  src="movestockjs.js"></script>
  <%try{ 
  	ArrayList<BeanAdd> list= ( ArrayList<BeanAdd>) request.getAttribute("list");
  	if(list !=null ){%>
	<div class="table-responsive-vertical shadow-z-1">
	<form action="movestocktosh2" method="get">
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
          <th>Entry Date</th>
          <th>Move stock</th>
        </tr>
      </thead>
      <tbody>
     
     	
     		<%for(int i=0;i<list.size();i++){ %>
   
        		<tr>
	  			<td data-title="ID"><%=list.get(i).getId() %></td>
	  			<td data-title="Vendor Code"><%=list.get(i).getVendorcode() %></td>
	  			<td data-title="Category"><%=list.get(i).getCategory() %></td>
	  			<td data-title="Description"><%=list.get(i).getDescription() %></td>
	  			<td data-title="Count"><%=list.get(i).getCount() %></td>
	  			<td data-title="Cost"><%=list.get(i).getCost() %></td>
	  			<td data-title="Currency"><%=list.get(i).getCurrency() %></td>
	  			<td data-title="Expiry Date"><%=list.get(i).getExpiry() %></td>
	  			<td data-title="Entry Date"><%=list.get(i).getEntry() %></td>
	  			<td data-title="Move stock"><input id="moveitems" name="moveitems" type="checkbox" value="<%= list.get(i).getDescription() %>"/></td>
				
	  		</tr>
			<%} %>
			
	  
	   </tbody>
	  </table>
	    <br>
	<button class="btn btn-lg btn-primary btn-block"  type="submit">Move Stock</button>
	  
	  
	<%}}catch(Exception e){}%>
	
	</form> 
	  		
	
	 
	</div>        	
	
	
	<%if(session.getAttribute("done") != null ){
	boolean result=(Boolean)session.getAttribute("done"); 
	if(result==true){%>
	<div class="alert alert-warning alert-dismissible fade show" role="alert">
	<%ArrayList<String> success =(ArrayList<String>)request.getAttribute("success");
  if(success.size()>0){%>
  <strong>Items successfully moved to shelf</strong> Make sure to keep the stack full Mr.Admin
  <%} %>
  <%ArrayList<String> defect =(ArrayList<String>)request.getAttribute("defect");
  if(defect.size()>0){%>
  <br>
  Had problem moving  
  <%for(String str : defect){%>
  		<%= str %>,
  		<%}} %>
  
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
  <%session.setAttribute("done",null);%>
  <%}
	else{%>
	<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Problem moving item</strong>Refresh the db and try again.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
  <%session.setAttribute("done",null);%>
	<%}}%>
	</div>
</body>
</html>