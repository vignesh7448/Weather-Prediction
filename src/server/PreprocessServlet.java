package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import analyze.Preprocess;
import classify.ClassifyDriver;
import hdfs.ReadPreprcess;
import preprocessing.driverr;

@WebServlet("/PreprocessServlet")
public class PreprocessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		driverr p = new driverr();
		try {
			
			p.main(null);
			
		} catch (Exception e) {
			
			System.out.println(e);
			
		}
		
		ReadPreprcess read = new ReadPreprcess();
		ArrayList<String> al = read.read();
		HttpSession hs = request.getSession();
		hs.setAttribute("preprocess", al);
		response.sendRedirect("preprocess.jsp");
		
	}

}
