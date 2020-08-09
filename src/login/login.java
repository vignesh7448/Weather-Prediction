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
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request,response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try{
		String name = request.getParameter("name");
		
		String pass = request.getParameter("pass");
		String addres = request.getParameter("addres");
		String email = request.getParameter("email");
		String mob = request.getParameter("mob");
		
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/stock","root","admin");
			Statement s1=conn.createStatement();
			int i=s1.executeUpdate("insert into login values('"+name+"','"+mob+"','"+email+"','"+addres+"','"+pass+"')");
			if(i==1){
				System.out.println("User Login Successfully");
				response.sendRedirect("portfolio.html");
			}else{
				System.out.println("Invalid user");
				response.sendRedirect("blog.html");
			}
			
		
		
	}catch(Exception e){
		System.out.println(e);
	}
}



}
