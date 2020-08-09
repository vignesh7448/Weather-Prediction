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
		
		var pp13 = document.getElementById("pp13").value;
		var pps13 = parseFloat(document.getElementById("pps13").value);

		var pp14 = document.getElementById("pp14").value;
		var pps14 = parseFloat(document.getElementById("pps14").value);

		var pp15 = document.getArrayList<String> al2 =ElementById("pp15").value;
		var pps15 = parseFloat(document.getElementById("pps15").value);

		var pp15 = document.getElementById("pp15").value;
		var pps15 = parseFloat(document.getElementById("pps15").value);

		var pp16 = document.getElementById("pp16").value;
		var pps16 = parseFloat(document.getElementById("pps17").value);

		var pp17 = document.getElementById("pp17").value;
		var pps17 = parseFloat(document.getElementById("pps17").value);

		var pp18 = document.getElementById("pp18").value;
		var pps18 = parseFloat(document.getElementById("pps18").value);

		var pp19 = document.getElementById("pp19").value;
		var pps19 = parseFloat(document.getElementById("pps19").value);

		var pp20 = document.getElementById("pp20").value;
		var pps20 = parseFloat(document.getElementById("pps20").value);

		var pp21 = document.getElementById("pp21").value;
		var pps21 = parseFloat(document.getElementById("pps21").value);

		var pp22 = document.getElementById("pp22").value;
		var pps22 = parseFloat(document.getElementById("pps22").value);

		var pp23 = document.getElementById("pp23").value;
		var pps23 = parseFloat(document.getElementById("pps23").value);

		var pp24 = document.getElementById("pp24").value;
		var pps24 = parseFloat(document.getElementById("pps24").value);

		var pp25 = document.getElementById("pp25").value;
		var pps25 = parseFloat(document.getElementById("pps25").value);

		var pp26 = document.getElementById("pp26").value;
		var pps26 = parseFloat(document.getElementById("pps26").value);

		var pp27 = document.getElementById("pp27").value;
		var pps27 = parseFloat(document.getElementById("pps27").value);

		var pp28 = document.getElementById("pp28").value;
		var pps28 = parseFloat(document.getElementById("pps28").value);

		var pp29 = document.getElementById("pp29").value;
		var pps29 = parseFloat(document.getElementById("pps29").value);

		var pp30 = document.getElementById("pp30").value;
		var pps30 = parseFloat(document.getElementById("pps30").value);

		var pp31 = document.getElementById("pp31").value;
		var pps31 = parseFloat(document.getElementById("pps31").value);

		var pp32 = document.getElementById("pp32").value;
		var pps32 = parseFloat(document.getElementById("pps32").value);

		var pp33 = document.getElementById("pp33").value;
		var pps33 = parseFloat(document.getElementById("pps33").value);

		var pp34 = document.getElementById("pp34").value;
		var pps34 = parseFloat(document.getElementById("pps34").value);

		var pp35 = document.getElementById("pp35").value;
		var pps35 = parseFloat(document.getElementById("pps35").value);

		var pp36 = document.getElementById("pp36").value;
		var pps36 = parseFloat(document.getElementById("pps36").value);

		var pp37 = document.getElementById("pp37").value;
		var pps37 = parseFloat(document.getElementById("pps37").value);

		var pp38 = document.getElementById("pp38").value;
		var pps38 = parseFloat(document.getElementById("pps38").value);

		var pp39 = document.getElementById("pp39").value;
		var pps39 = parseFloat(document.getElementById("pps39").value);

		var pp40 = document.getElementById("pp40").value;
		var pps40 = parseFloat(document.getElementById("pps40").value);

		var pp41 = document.getElementById("pp41").value;
		var pps41 = parseFloat(document.getElementById("pps41").value);

		var pp42 = document.getElementById("pp42").value;
		var pps42 = parseFloat(document.getElementById("pps42").value);
		
		var pp43 = document.getElementById("pp43").value;
		var pps43 = parseFloat(document.getElementById("pps43").value);

		var pp44 = document.getElementById("pp44").value;
		var pps44 = parseFloat(document.getElementById("pps44").value);
		
		var pp45 = document.getElementById("pp45").value;
		var pps45 = parseFloat(document.getElementById("pps45").value);		
		
		var pp46 = document.getElementById("pp46").value;
		var pps46 = parseFloat(document.getElementById("pps46").value);
		
		var pp47 = document.getElementById("pp47").value;
		var pps47 = parseFloat(document.getElementById("pps47").value);






		var chart = new CanvasJS.Chart("chartContainer", {
			title : {
				text : "Weather Prediction"
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
				},{
					y : pps13,
					label : pp13
				},{
					y : pps14,
					label : pp14
				},{
					y : pps15,
					label : pp15
				},{
					y : pps16,
					label : pp16
				},{
					y : pps17,
					label : pp17
				},{
					y : pps18,
					label : pp18
				},{
					y : pps19,
					label : pp19
				},{
					y : pps20,
					label : pp20
				},{
					y : pps21,
					label : pp21
				},{
					y : pps22,
					label : pp22
				},{
					y : pps23,
					label : pp23
				},{
					y : pps24,
					label : pp24
				},{
					y : pps25,
					label : pp25
				},{
					y : pps26,
					label : pp26
				},{
					y : pps27,
					label : pp27
				},{
					y : pps28,
					label : pp28
				},{
					y : pps29,
					label : pp29
				},{
					y : pps30,
					label : pp30
				},{
					y : pps31,
					label : pp31
				},{
					y : pps32,
					label : pp32
				},{
					y : pps33,
					label : pp33
				},{
					y : pps34,
					label : pp34
				},{
					y : pps35,
					label : pp35
				},{
					y : pps36,
					label : pp36
				},{
					y : pps37,
					label : pp37
				},{
					y : pps38,
					label : pp38
				},{
					y : pps39,
					label : pp39
				},{
				y : pps40,
				label : pp40
			},
				{
					y : pps41,
					label : pp41
				},{
					y : pps42,
					label : pp42
				},{
					y : pps43,
					label : pp43
				},{
					y : pps44,
					label : pp44
				},{
					y : pps45,
					label : pp45
				},{
					y : pps46,
					label : pp46
				},{
					y : pps47,
					label : pp47
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
				if(checkValues.length==47){
							for(int i=0;i<checkValues.length;i++){

								FileSystem fs = HdfsConnection.connect();
								Object h=session.getAttribute("val");
								BufferedReader br = new BufferedReader(new InputStreamReader(fs.open(new Path("hdfs://localhost:9000/final/part-r-00000"))));
								String line = "";
								while((line=br.readLine())!=null) {
									String line1[] = line.split("\t");
									
									String k=line1[1]; 
									System.out.println(line1[0]+" "+k);
									hm.put(line1[0],k);
								
								//int cnt = Integer.parseInt(checkValues[i]);
								//String name = request.getParameter("name"+cnt);
								//String val = request.getParameter("val"+cnt);
								//hm.put(name, val);
								
							}
							
							
								HashSet hs1 = new HashSet();
								HashSet hs2 = new HashSet();
								ArrayList<String> al1 = new ArrayList();
								ArrayList<String> al2 = new ArrayList();
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
									<input type="hidden" id="pps<%=k %>" name="pps<%=k%>" value="<%=em.getValue().substring(0,1 )%>" />
									<% 
									
								}
							}
				}else{
					response.sendRedirect("chart.jsp");
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
					for(int k=0;k<10;k++){
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