package processor;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
		Connection connection =  DB_connection.connectToDb();

		
            PrintWriter out=response.getWriter();

		
		String username= request.getParameter("txtname");
		String password= request.getParameter("txtPswd");
		String url= "SELECT * FROM user WHERE username = ? AND password = ?";

		 
		
			PreparedStatement ps = connection.prepareStatement(url);
			    ps.setString(1, username);
		        ps.setString(2, password);
		        ResultSet rs=ps.executeQuery();
		        
		        
		        if(rs.next()) {
	            	RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
	            	rd.forward(request, response);
	            }
	            else {
	            	
	            	out.println("<font color=red size=18>login failed<br>");
	            	out.print("<a href=Login.jsp>TRY AGAIN</a>"	);
	            }
		        
		        
		        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
       

	}

}
