<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%@ page import="java.sql.DriverManager" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="java.sql.ResultSet" %>


<meta charset="ISO-8859-1">
<title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

</head>
<style>
body {background-color: black; margin-top=100px}
</style>
<body>


<section style="display: flex;" >
<nav style="margin-top: 30px">
  <div class="container-fluid">
  
    <form action="WelcomeServlet" method=post style="background-color: black;" >
    
    
    
      <input class="form-control me-2" type="text" name="product" placeholder="Product" >
      <br><br>
      
      
      <input class="form-control me-2" type="text" name="catagory" placeholder="Catagory" >
      <br><Br>
      
      <input class="form-control me-2" type="text" name="price" placeholder="Price" >
      <br><br>
      
       <input class="btn btn-outline-success" type="submit" value="Add Product"></input>
       <br><br>
       
      
        
    </form>
    
  </div>
</nav>









<div style="width: 1200px; margin-left: 40px;">
<table   class="table table-dark">


  <thead><br>
  
     <tr>
      <th class="table-info">ID</th>
     
      <th class="table-info">product</th>
      
      <th class="table-info">Category</th>
     
      <th class="table-info">Amount</th>
      
      
    </tr>
  </thead>
 
  
  

<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/application","root","root");
	Statement st = con.createStatement();
	
	String url="select* from bill;";
	ResultSet rs=st.executeQuery(url);
	
	while(rs.next()){
		%>
		<tr>
		<td> <%=rs.getString("ID")%> </td>
		<td> <%=rs.getString("product")%></td>
		<td> <%=rs.getString("catagory")%></td>
		<td> <%=rs.getString("price") %> </td>
		</tr>
		<%}
	
}catch(Exception e){
	
}
%>
	</table>


</div>





</section>


<form action="ShwServlet" method=post >

 <input  style="margin-left:15px; border-radius:5px"  type="text" name="delete" placeholder="Delete">
        <br><br>
        
        <input style="margin-left:15px;" class="btn btn-outline-success" type="submit" value="Delete"></input>
       <br><br>

</form><br><br><br><br><Br>
<br><br><br>



<form action="bill.jsp" method=post >

        <input  class="btn btn-outline-success"style="margin-left:15px;" type="submit" value="Generate Bill"></input>
       <br><br>

</form>






</body>
</html>