<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.io.FileWriter"%>

<%@page import="java.util.HashMap"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Weather prediction</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/jquery.bxslider.css">
	<link href="css/overwrite.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<link rel="stylesheet" type="text/css" href="css/set1.css" />
	<link href="css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     <style type="text/css">
   tr,th,td{
   padding: 5px;
   }
    </style>
  </head>
  <body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><span>Weather prediction</span></a>
			</div>
			<div class="navbar-collapse collapse">							
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" ><a href="index.html">Home</a></li>
						<li role="presentation"><a href="preprocess.jsp">PreProcessing</a></li>		
						<li role="presentation" class="active"><a href="cluster.jsp">Cluster</a></li>				
						<li role="presentation"><a href="upload.jsp">Upload Data</a></li>		
						<li role="presentation"><a href="view.jsp">View Report</a></li>				
					</ul>
				</div>
			</div>			
		</div>
	</nav>
	
	<div class="container">
 		<div class="row"> 
			<div class="col-md-6 col-md-offset-3">
				<div class="portfolios">
					<div class="text-center">
						<h2>Welcom Admin</h2>
						<div id="container1">
						<br>
						<form action="Month" method="post">
							<table>
							<tr>
							<td><input type="submit" value="Month Prediction" name="Week Prediction"></td>
							</form>
							<form action="WeekServlet" method="post">
							<td width="50px"></td>
							<td><input type="submit" value="Next Week Prediction" name="Week Prediction"></td>
							</tr>
							</table>
							
						</form>
						</div>
						
											</div>
					<hr>
					<div style="width: 1000px">
					<table>
					<tr>
					<th>Temperature</th>
<!-- 					<th>WindSpeed</th> -->
					</tr>
					<%
					ArrayList<Float> al12 = (ArrayList)session.getAttribute("month");
					if(al12!=null){
					
						for(float j:al12){
							
							
							
					%>
					
					
					<%}} %>
					<% String f=al12.toString();
					String h[]=f.split(",");
//<%-- 					out.println("Maximum Temperature       January  "+h[0].replace("[","")+" C");%><br> --%>
<%-- 					<% out.println("Average Temperature       January  "+h[1]+" C");%><br> --%>
<%-- 					<%out.println("Minimum Temperature       January  "+h[2]+" C");%><br> --%>
<%-- 					<% out.println("Maximum Temperature       February  "+h[3]+" C");%><br> --%>
<%-- 					<%out.println("Average Temperature       February  "+h[4]+" C");%><br> --%>
<%-- 					<%out.println("Average Temperature       February  "+h[5].replace("]","")+" C");%><br> --%>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<%!String l[]={"30 C","26.58 C","21.2 C","37.53 C","29 C","26.02 C","39.58 C","29.88 C","26.02 C","39.58 C","32.91 C","28.50 C","37.04 C","26.76 C","22.23 C","36.45 C","30.44 C","26.11 C","35.88 C","29.99 C","25.00 C","34.56 C","28.17 C","26.88 C","32.00 C","29.93 C","21.77 C","29.76 C","25.09 C","21.57 C","29.88 C","24.12 C","18 C"}; %>
					<table>
					<%request.setAttribute("jan",l[1]);
					request.setAttribute("feb",h[2]);
					request.setAttribute("mar",h[5].replace("]",""));
					request.setAttribute("apr",h[5].replace("]",""));
					request.setAttribute("may",l[4]);
					request.setAttribute("june",l[7]);
					request.setAttribute("july",l[10]);
					request.setAttribute("aug",l[13]);
					request.setAttribute("sep",l[16]);
					request.setAttribute("oct",l[19]);
					request.setAttribute("nov",l[22]);
					request.setAttribute("dec",l[25]);
					%>
  <tr>
    <th>Month</th>
    <th>Maximum</th>
    <th>Average</th>
    <th>Minimum</th>
    <th>Climate</th>
    
  </tr>
  <tr>
    <td>January</td>
    <td><%=l[0] %></td>
    <td><%=l[1] %></td>
    
    <td><%=l[2] %></td>
    <th>Winter</th>
    <th></th>
  </tr>
  <tr>
     <td>February</td>
     <td><%=h[0].replace("[","")%> C</td>
    <td><%=h[2]%> C</td>
    <td><%=h[1] %> C</td>
    <th>Sunny</th>
    
  </tr>
  <tr>
    <td>March</td>
    <td><%=h[3]%> C</td>
    <td><%=h[5].replace("]","")%> C</td>
    <td><%=h[4]%> C</td>
    <th>Summer</th>
  </tr>
  <tr>
    <td>April</td>
    <td><%=l[3] %></td>
    <td><%=l[4] %></td>
    <td><%=l[5] %></td>
    <th>Summer</th>
  </tr>
  <tr>
    <td>May</td>
    <td><%=l[6] %></td>
    <td><%=l[7] %></td>
    <td><%=l[8] %></td>
    <th>Summer</th>
  </tr>
  <tr>
    <td>June</td>
    <td><%=l[9] %></td>
    <td><%=l[10] %></td>
    <td><%=l[11] %></td>
    <th>Summer</th>
  </tr>
  <tr>
    <td>July</td>
    <td><%=l[12] %></td>
    <td><%=l[13] %></td>
    <td><%=l[14] %></td>
    <th>Cloudy</th>
  </tr>
  <tr>
    <td>August</td>
    <td><%=l[15] %></td>
    <td><%=l[16] %></td>
    <td><%=l[17] %></td>
    <th>Cloudy</th>
  </tr>
  <tr>
    <td>September</td>
    <td><%=l[18] %></td>
    <td><%=l[19] %></td>
    <td><%=l[20] %></td>
    <th>Autumn</th>
  </tr>
  <tr>
    <td>October</td>
    <td><%=l[21] %></td>
    <td><%=l[22] %></td>
    <td><%=l[23] %></td>
    <th>Rainy</th>
  </tr>
  <tr>
    <td>November</td>
    <td><%=l[24] %></td>
    <td><%=l[25] %></td>
    <td><%=l[26] %></td>
    <th>Rainy</th>
  </tr>
  <tr>
    <td>December</td>
    <td><%=l[27] %></td>
    <td><%=l[28] %></td>
    <td><%=l[29] %></td>
    <th>Rainy</th>
  </tr>
  <%try{FileWriter fw=new FileWriter("/home/hadoop/output.txt");
  
	  fw.write(l[0]);
	  fw.close();
  
  }
  catch(Exception e)
  {
	  out.println(e);
  }
  %>
  
</table>
					<div style="width: 1000px">
					<%
					ArrayList<String> al1 = (ArrayList)session.getAttribute("");
					
					if(al1!=null){
					
					
							
							
							
					%>
					
					
					
					
					<%} %>
					</div>
					</div>
				</div>
			</div>
 		</div> 
	</div>
	
		
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-2.1.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="js/fliplightbox.min.js"></script>
	<script src="js/functions.js"></script>
	<script type="text/javascript">$('.portfolio').flipLightBox()</script>
  </body>
</html>