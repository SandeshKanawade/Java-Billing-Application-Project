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
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

</head>
<body>

<table class="table">

  <thead class="table-dark">
 
       <th>ID</th>
       <th>Product</th>
       <th>Category</th>
       <th>Price</th>
       
  </thead>
  
  <tbody>
  <%
  double totalPrice = 0;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/application","root","root");
	Statement st = con.createStatement();
	

	
	String url="select* from bill;";
	ResultSet rs=st.executeQuery(url);
	
	


	
	while(rs.next())
	{%>
		<tr>
		<td> <%=rs.getString("ID")%></td>
		<td> <%=rs.getString("product")%></td>
		<td> <%=rs.getString("catagory")%></td>
		<td> <%=rs.getString("price") %></td>
		
		</tr>
		<%}
	
	 
	Statement statement = con.createStatement();
	String query="SELECT SUM(price) AS total_price FROM bill;";
	ResultSet rss=statement.executeQuery(query);
	
	 if (rss.next()) {
         totalPrice = rss.getDouble("total_price");
     }
	
	

	
	
}catch(Exception e){
	
}
  
	

%>
  </tbody>
</table>



<div >
	<h5 style="margin-left:1120px;">Total Price: <%= totalPrice %></h5>
</div>


</body>
</html>