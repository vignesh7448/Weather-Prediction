
<%@page import="org.apache.hadoop.fs.Path"%>
<%@page import="org.apache.hadoop.fs.FileSystem"%>
<%@page import="org.apache.hadoop.conf.Configuration"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		MultipartRequest multi = new MultipartRequest(request, ".", 5 * 1024 * 1024);
		Enumeration e = multi.getFileNames();
		String fileName = "";
		File file = null;
		while (e.hasMoreElements()) {

			String name = (String) e.nextElement();
			file = multi.getFile(name);
			fileName = multi.getFilesystemName(name);
		}
		String path = file.getAbsolutePath();
		Configuration conf = new Configuration();
		conf.set("fs.default.name", "hdfs://localhost:9000");
		FileSystem fs = FileSystem.get(conf);
		Path stockPath = new Path("hdfs://localhost:9000/weather");
		if (!fs.exists(stockPath)) {
			fs.mkdirs(stockPath);
		}
		System.out.println(fileName);
		fs.copyFromLocalFile(new Path(path), stockPath);

		if (fs.exists(new Path("hdfs://localhost:9000/weather/" + fileName))) {
			session.setAttribute("msg", "succ");
			response.sendRedirect("adminhome.jsp");
		} else {
			session.setAttribute("msg", "fail");
			response.sendRedirect("adminhome.jsp");
		}
	%>
</body>
</html>