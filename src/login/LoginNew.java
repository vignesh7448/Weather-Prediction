package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginNew
 */
@WebServlet("/LoginNew")
public class LoginNew extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		
		if(name.equals("admin") && pass.equals("admin")) {
			
			response.sendRedirect("adminhome.jsp");
			
			
		}else {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/weather","root","admin");
			PreparedStatement ps = con.prepareStatement("select * from reg where name=? and pass=?");
			ps.setString(1, name);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				HttpSession hs = request.getSession();
				hs.setAttribute("username", name);
				response.sendRedirect("userhome.jsp");

			}else {
				response.sendRedirect("error.jsp");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		}
		
	}

}
