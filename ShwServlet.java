package processor;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class ShwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		try {
			Connection connection =  DB_connection.connectToDb();

			
		 String ID=request.getParameter("delete");
		String Dquery="delete from bill where id=?;";
		
			PreparedStatement pss = connection.prepareStatement(Dquery);
			pss.setString(1, ID);
			
			pss.executeUpdate();/////////////////////////////////////////Delete Data/////////////////////////////////

			response.sendRedirect("welcome.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		


	

}
}
