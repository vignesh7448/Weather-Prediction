<%@page import="java.util.ArrayList"%>
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
						<form action="ClusterServlet" method="post">
							<table>
							<tr>
							<td><input type="submit" value="Cluster" name="cluster"></td>
							</form>
							<form action="ClusterServlet" method="post">
							<td width="50px"></td>
							<td><input type="submit" value="Cluster" name="cluser"></td>
							</tr>
							</table>
							
						</form>
						</div>
						
											</div>
					<hr>
					<div style="width: 1000px">
					<table>
					<tr>
					<th>Month</th>
					<th>Temperature</th>
					</tr>
					<%
					ArrayList<String> al = (ArrayList)session.getAttribute("cluster");
					if(al!=null){
					
						for(String s:al){
							String s1 [] = s.split(" ");
							String name = s1[0];
							String value = s1[1];
					%>
					<tr>
					<td><%=name %></td>
					<td><%=value %></td>
					</tr>
					
					<%}}session.setAttribute("cluster", null); %>
					</table>
					<div style="width: 1000px">
					<%
					ArrayList<String> al1 = (ArrayList)session.getAttribute("");
					if(al1!=null){
					
						for(String s:al1){	
					%>
					
					<p style="line-height: 15px;"><%=s%></p>
					
					
					
					<%}} %>
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