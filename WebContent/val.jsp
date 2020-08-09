<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
String name=request.getParameter("name");
String pass=request.getParameter("pass");

if(name.equals("admin")&&pass.equals("admin")){
	System.out.println("Welcom admin");
	response.sendRedirect("adminhome.jsp");
}else{
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie","root","admin");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from login where name='"+name+"' and pass='"+pass+"'");
		if(rs.next()){
			response.sendRedirect("userhome.jsp");
			
		}else{
			
			response.sendRedirect("index.jsp");
		}
		
	}catch(Exception e){System.out.println(e);}
	
}
%>
</body>
</html>