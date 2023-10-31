<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

</head>
<body>

        
       
        
        <div style="margin-top:140px; margin-left:640px;">
        <form action="LoginServlet" method=post>
            <h2 class=heading>Login Form</h2>
            <br>
            
            
            
            
            <input 	  type="text" name="txtname" placeholder="username" size="30"><br><br>
	        
            
            
            <input  type="password" name="txtPswd" placeholder="password" size="30"><br><br>
           <br>
            
           
            <input class="btn btn-primary btn-block mb-4"  type="submit" class="button" value="Login" >
          

           
            

        </form>

          </div>  
        


</body>
</html>