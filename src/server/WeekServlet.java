package server;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import analyze.ClusterProcess;
import hdfs.ClusterRead;
import hdfs.weekread;
import preprocessing.classifyDri;

/**
 * Servlet implementation class ClusterServlet
 */
@WebServlet("/WeekServlet")
public class WeekServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		classifyDri process = new classifyDri();
//		try {
//			
//			process.main(null);
//			
//		} catch (Exception e) {
//			
//			System.out.println(e);
//			
//		}
		weekread read = new weekread();
		HashMap<Float,Float> hm1 = read.read();
		
		
		HttpSession hs = request.getSession();
		hs.setAttribute("week", hm1);
		response.sendRedirect("week.jsp");
	}

}
