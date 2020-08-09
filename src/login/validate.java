package login;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class validate
 */
@WebServlet("/validate")
public class validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
    	private void processRequest(HttpServletRequest request, HttpServletResponse response) {
    	    		
//    		try{
//    		String name = request.getParameter("name");
//    		String pass = request.getParameter("pass");
//    		    		
//    		if(name.equals("admin")&&pass.equals("admin")){
//    			
//    			System.out.println("Admin Login Successfully");
//    			response.sendRedirect("adminhome.jsp");
//    			
//    		}else{
//    			Boolean status = false;
//    			Class.forName("com.mysql.jdbc.Driver");
//    			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","admin");
//    			PreparedStatement pst = conn.prepareStatement("select * from login where name=? and pass=?");
//    			pst.setString(1, name);
//    			pst.setString(2, pass);
//    			ResultSet rs = pst.executeQuery();
//       			if(rs.next()){
//    				System.out.println("User Login Successfully");
//    				response.sendRedirect("userhome.jsp");
//    			}else{
//    				System.out.println("Invalid user");
//    				response.sendRedirect("login.jsp");
//    			}
//    			
//    		}
//    		}catch(Exception e){System.out.println(e);}
//    	}

    	

    	}    

}
