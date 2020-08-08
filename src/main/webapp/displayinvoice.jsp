<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.io.*,java.util.*,java.sql.Connection,java.sql.ResultSet,java.sql.Statement,java.text.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,com.project.BeanAdd" %>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Invoice</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta.2/css/bootstrap.css'>

</head>
<body>

<div class="container">
  <div class="card">
<div class="card-header">
<strong>Invoice</strong>
<%DateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
String date=formatter.format(new Date()); %>
<span class="float-right"><strong><%= date %></strong> </span>
</div>

<div class="card-body">
<div class="row mb-4"> 
<div class="col-sm-6">
<h6 class="mb-3">From:</h6>
<div>
<strong>Krish SuperMarket</strong>
</div>
<div>Kuniyamuthur</div>
<div>Coimbatore-641105</div>
<div>Email: krishmart@gmail.com</div>
<div>Phone: +91 8072153053</div>
</div>
<% ArrayList<ArrayList<String>> list=(ArrayList<ArrayList<String>>)session.getAttribute("invoicelist");
String name=list.get(0).get(0);
String add1=list.get(0).get(1);
String add2=list.get(0).get(2);
String email=list.get(0).get(3);
String phone=list.get(0).get(4); %>


<div class="col-sm-6">
<h6 class="mb-3">To:</h6>
<div>
<strong><%= name %></strong>
</div>
<div><%= add1 %></div>
<div><%= add2 %></div>
<div>Email: <%= email %></div>
<div>Phone: <%= phone %></div>
</div>



</div>

<div class="table-responsive-sm">
<table class="table table-striped">
<thead>
<tr>
<th class="center">#</th>
<th>Category</th>
<th>Description</th>

<th class="right">Unit Cost</th>
  <th class="center">Qty</th>
<th class="right">Total</th>
</tr>
</thead>
<tbody>

<% int i=1,subtotal=0;
for(i=1;i<list.size();i++) 
{%>
<tr>
<td class="center"><%= i %></td>
<td class="left strong"><%= list.get(i).get(0) %></td>
<td class="left"><%= list.get(i).get(1) %></td>

<td class="right"><%=list.get(i).get(2) %></td>
  <td class="center"><%=list.get(i).get(3) %></td>
  <%int cost=Integer.parseInt(list.get(i).get(2));
  	int count=Integer.parseInt(list.get(i).get(3));
  	int total=cost*count;
  	subtotal=subtotal+total;
   %>
<td class="right"><%= total %></td>
</tr>
<%} %>

</tbody>
</table>
</div>
<div class="row">
<div class="col-lg-4 col-sm-5">

</div>

<div class="col-lg-4 col-sm-5 ml-auto">
<table class="table table-clear">
<tbody>
<tr>
<td class="left">
<strong>Subtotal</strong>
</td>
<td class="right">Rs <%= subtotal %></td>
</tr>
<tr>
<td class="left">
<strong>Discount (20%)</strong>
</td>
<% int discount=(subtotal*20)/100; %>
<td class="right">Rs <%= discount %></td>
</tr>
<tr>
<td class="left">
<% int vat=(discount*10)/100; %>
 <strong>VAT (10%)</strong>
</td>
<td class="right">Rs <%= vat %></td>
</tr>
<tr>
<td class="left">
<strong>Total</strong>
</td>
<td class="right">
<% int sum=subtotal-discount+vat; %>
<strong>Rs <%= sum %></strong>
</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>
</div>
</div>
<!-- partial -->
  <script >window.print()</script>

</body>
</html>
