<%@page import="java.util.Map"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="org.apache.hadoop.fs.Path"%>
<%@page import="hdfs.HdfsConnection"%>
<%@page import="org.apache.hadoop.fs.FileSystem"%>
<%@page import="analyze.MainStockAnalysis"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Stock Analyze</title>

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
</style>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript" src="canvasjs.min.js"></script>
<script type="text/javascript">
	window.onload = function() {
		var pp1 = document.getElementById("pp1").value;
		var pps1 = parseFloat(document.getElementById("pps1").value);
		var pp2 = document.getElementById("pp2").value;
		var pps2 = parseFloat(document.getElementById("pps2").value);
		var pp3 = document.getElementById("pp3").value;
		var pps3 = parseFloat(document.getElementById("pps3").value);
		var pp4 = document.getElementById("pp4").value;
		var pps4 = parseFloat(document.getElementById("pps4").value);
		var pp5 = document.getElementById("pp5").value;
		var pps5 = parseFloat(document.getElementById("pps5").value);
		var pp6 = document.getElementById("pp6").value;
		var pps6 = parseFloat(document.getElementById("pps6").value);

		var pp7 = document.getElementById("pp7").value;
		var pps7 = parseFloat(document.getElementById("pps7").value);

		var pp8 = document.getElementById("pp8").value;
		var pps8 = parseFloat(document.getElementById("pps8").value);

		var pp9 = document.getElementById("pp9").value;
		var pps9 = parseFloat(document.getElementById("pps9").value);

		var pp10 = document.getElementById("pp10").value;
		var pps10 = parseFloat(document.getElementById("pps10").value);

		var pp11 = document.getElementById("pp11").value;
		var pps11 = parseFloat(document.getElementById("pps11").value);

		var pp12 = document.getElementById("pp12").value;
		var pps12 = parseFloat(document.getElementById("pps12").value);

		var chart = new CanvasJS.Chart("chartContainer", {
			title : {
				text : "Sentiment Analysis"
			},
			animationEnabled : true,
			axisY : {
				title : "Score"
			},
			legend : {
				verticalAlign : "bottom",
				horizontalAlign : "center"
			},axisX: {
				labelAngle: 0
			},
			theme : "theme2",
			dataPointWidth: 50,
			data : [

			{
				type : "column",
				showInLegend : true,
				legendMarkerColor : "grey",
				legendText : "Polarity",
				dataPoints : [ {
					y : pps1,
					label : pp1
				}, {
					y : pps2,
					label : pp2
				}, {
					y : pps3,
					label : pp3
				}, {
					y : pps4,
					label : pp4
				}, {
					y : pps5,
					label : pp5
				}, {
					y : pps6,
					label : pp6
				}, {
					y : pps7,
					label : pp7
				}, {
					y : pps8,
					label : pp8
				}, {
					y : pps9,
					label : pp9
				}, {
					y : pps10,
					label : pp10
				}, {
					y : pps11,
					label : pp11
				}, {
					y : pps12,
					label : pp12
				}

				]
			} ]
		});

		chart.render();
	}
</script>

</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target=".navbar-collapse.collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><span>Stock
					Analyze</span></a>
		</div>
		<div class="navbar-collapse collapse">
			<div class="menu">
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation"><a href="index.html">Home</a></li>
					<li role="presentation"><a href="preprocess.jsp">PreProcessing</a></li>
					<li role="presentation"><a href="cluster.jsp">Cluster</a></li>
					<li role="presentation"><a href="upload.jsp">Upload Data</a></li>
					<li role="presentation" class="active"><a href="view.jsp">View
							Report</a></li>
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
						<h2>Welcome Admin</h2>
						<div id="container1">
							<%
							HashMap<String,String> hm = new HashMap();
							String checkValues[] = request.getParameterValues("ckb");
				if(checkValues!=null){
				if(checkValues.length==12){
							for(int i=0;i<checkValues.length;i++){
								
								int cnt = Integer.parseInt(checkValues[i]);
								String name = request.getParameter("name"+cnt);
								String val = request.getParameter("val"+cnt);
								hm.put(name, val);
								
							}
							
							
								HashSet hs1 = new HashSet();
								HashSet hs2 = new HashSet();
								ArrayList<String> al1 = new ArrayList();
								ArrayList<String> al2 = new ArrayList();
								Enumeration e = request.getParameterNames();
								//String name[] = request.getParameterValues("name");
								//String val[] = request.getParameterValues("val");

//								for (String name1 : name) {
	//								hs1.add(name1);
		//						}

			//					for (String va1 : val) {
				//					hs2.add(va1);
					//			}
								al1.addAll(hs1);
								al2.addAll(hs2);
								out.println(al1.size());
							%>

							<%
							int k=0;
								for(Map.Entry<String,String> em :hm.entrySet()){
									k++;
									%>
									<input type="hidden" id="pp<%=k %>" name="pp<%=k%>" value="<%=em.getKey()%>" />
									<input type="hidden" id="pps<%=k %>" name="pps<%=k%>" value="<%=em.getValue().substring(0, 6)%>" />
									<% 
									
								}
				}else{
					response.sendRedirect("view.jsp");
				}}else{
					HashSet hs1 = new HashSet();
					HashSet hs2 = new HashSet();
					ArrayList<String> al1 = new ArrayList();
					ArrayList<String> al2 = new ArrayList();
					Enumeration e = request.getParameterNames();
					String name[] = request.getParameterValues("name0");
					String val[] = request.getParameterValues("val0");
					System.out.println(name[1]);
					for (String name1 : name) {
								hs1.add(name1);
						}

					for (String va1 : val) {
						hs2.add(va1);
					}
					al1.addAll(hs1);
					al2.addAll(hs2);
					System.out.println(al2);
					float max=0;
					ArrayList maxs = new ArrayList();
					for(int k=0;k<5;k++){
					for(String large1 : al2){
						float i = Float.parseFloat(large1);
						max = 0;
						if(max<i){
							max = i;
							
						}
						
					}
					System.out.println(max);
					maxs.add(max);
					al2.remove(max);
					}
					System.out.println(maxs);
					out.println(al1.size());
					
					%>
					
					
					
					<% 
				}
							
							%>

						









						</div>

						
					</div>
					<hr>


				</div>
			</div>
		</div>
	</div>

<div id="chartContainer" style="height: 400px; width: 100%;"></div>
	<footer>

	<div class="last-div">
		<div class="container">
			<div class="row">
				<div class="copyright">
					© 2014 eNno Multi-purpose theme | <a target="_blank"
						href="http://bootstraptaste.com">Bootstraptaste</a>
				</div>
				<!-- 
                        All links in the footer should remain intact. 
                        Licenseing information is available at: http://bootstraptaste.com/license/
                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=eNno
                    -->
			</div>
		</div>
		<div class="container">
			<div class="row">
				<ul class="social-network">
					<li><a href="#" data-placement="top" title="Facebook"><i
							class="fa fa-facebook fa-1x"></i></a></li>
					<li><a href="#" data-placement="top" title="Twitter"><i
							class="fa fa-twitter fa-1x"></i></a></li>
					<li><a href="#" data-placement="top" title="Linkedin"><i
							class="fa fa-linkedin fa-1x"></i></a></li>
					<li><a href="#" data-placement="top" title="Pinterest"><i
							class="fa fa-pinterest fa-1x"></i></a></li>
					<li><a href="#" data-placement="top" title="Google plus"><i
							class="fa fa-google-plus fa-1x"></i></a></li>
				</ul>
			</div>
		</div>
		<a href="" class="scrollup"><i class="fa fa-chevron-up"></i></a>
	</div>
	</footer>

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
	<script type="text/javascript">
		$('.portfolio').flipLightBox()
	</script>
</body>
</html>