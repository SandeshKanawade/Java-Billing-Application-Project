package processor;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;




public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
			
		
	
		try {
		Connection connection =  DB_connection.connectToDb();
		
		String product= request.getParameter("product");
		String catagory= request.getParameter("catagory");
		String price= request.getParameter("price");
		String query="insert into bill(product,catagory,price)values(?,?,?);";	
		
		
		PreparedStatement ps = connection.prepareStatement(query);
		 
		ps.setString(1, product);
		ps.setString(2, catagory);
		ps.setString(3, price);
		
		ps.executeUpdate();////////////////////////////Insert Data/////////////////////////////////

		response.sendRedirect("welcome.jsp");

		

		
		

		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
		
		
//		try {
//		Connection connection =  DB_connection.connectToDb();
//		request.getParameter("delete");
//		String Dquery=" delete from bill where id=?;";
//		
//			PreparedStatement ps = connection.prepareStatement(Dquery);
//			
//			ps.executeUpdate();/////////////////////////////////////////Delete Data/////////////////////////////////
//
//			response.sendRedirect("welcome.jsp");
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}


		
		
		
	}
}





