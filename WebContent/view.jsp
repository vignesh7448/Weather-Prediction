<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
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
    <script type="text/javascript">
//select all


var fieldName='ckb';
 
function selectall(){
  var i=document.frm.elements.length;
  var e=document.frm.elements;
  var name=new Array();
  var value=new Array();
  var j=0;
  for(var k=0;k<i;k++)
  {
    if(document.frm.elements[k].name==fieldName)
    {
      if(document.frm.elements[k].checked==true){
        value[j]=document.frm.elements[k].value;
        j++;
      }
    }
  }
  checkSelect();
  checkBox();
}
function selectCheck(obj)
{
 var i=document.frm.elements.length;
  for(var k=0;k<i;k++)
  {
    if(document.frm.elements[k].name==fieldName)
    {
      document.frm.elements[k].checked=obj;
    }
  }
  selectall();
}
 
function selectallMe()
{
  if(document.frm.allCheck.checked==true)
  {
   selectCheck(true);
  }
  else
  {
    selectCheck(false);
  }
}
function checkSelect()
{
 var i=document.frm.elements.length;
 var berror=true;
  for(var k=0;k<i;k++)
  {
    if(document.frm.elements[k].name==fieldName)
    {
      if(document.frm.elements[k].checked==false)
      {
        berror=false;
        break;
      }
    }
  }
  if(berror==false)
  {
    document.frm.allCheck.checked=false;
  }
  else
  {
    document.frm.allCheck.checked=true;
  }
}

//select All
    
    function checkBox(){
    	//var count = document.querySelectorAll('input[name="checkbox"]:checked').length;
    	var inputs = document.getElementsByName("ckb");
var checked = 0;   
for (var i = 0; i < inputs.length; i++) {   
    var input = inputs[i];
    if('checkbox' == inputs[i].type && inputs[i].checked)
        checked++;
}
alert(checked);
    	var selectVal = document.getElementById('selectVal').innerHTML=checked+" Selected";
    
    }
    </script>
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
				<a class="navbar-brand" href="index.html"><span>Stock Analyze</span></a>
			</div>
			<div class="navbar-collapse collapse">							
				<div class="menu">
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" ><a href="index.html">Home</a></li>
						<li role="presentation"><a href="preprocess.jsp">PreProcessing</a></li>		
						<li role="presentation" ><a href="cluster.jsp">Cluster</a></li>				
						<li role="presentation"><a href="upload.jsp">Upload Data</a></li>		
						<li role="presentation" class="active"><a href="view.jsp">View Report</a></li>				
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
						<p style="color: black;">Choose any 12 Companies</p>
						<p style="color: red;" id="selectVal" ></p>
						<form action="view1.jsp" method="post" name="frm">
						<table style="border-collapse:separate; ;border-spacing: 10px;color: black;">
						<%
						MainStockAnalysis m = new MainStockAnalysis();
					m.main(null);
						%>
						<%
						HashMap<String,String> hs = new HashMap();
						FileSystem fs= HdfsConnection.connect();
						Path p = new Path("hdfs://localhost:9000/stockprediction/part-r-00000");
						BufferedReader br = new BufferedReader(new InputStreamReader(fs.open(p)));
						String line= "";
						int i=0;
						while((line=br.readLine())!=null){
							String name = line.split("\t")[0];
							String value = line.split("\t")[1];
							if(!(name.trim().toLowerCase().contains("top 10"))){
								hs.put(name, value);
								i++;
							}
						}
						int sno=0;
						int j=0;
						%>
						Select all <input type="checkbox" value="" id="in" name="allCheck" onclick="selectallMe()"/>
						<% 
						for(Map.Entry<String,String> me : hs.entrySet()){
							sno++;
						%>
						
						<tr>
						<td><%=sno%></td>
						<td><input type="checkbox" value="<%=j%>" name="ckb" onclick="selectall()" /> </td>
						<td><%=me.getKey()%><input type="hidden" value="<%=me.getKey()%>" name="name<%=j%>"></td>
						<td><%=me.getValue()%><input type="hidden" value="<%=me.getValue()%>" name="val<%=j%>"></td>
						</tr>
						<%j++;} %>
						
						</table>
						<input type="submit">
						</form>
						</div>
						
											</div>
					<hr>
	
					
				</div>
			</div>
 		</div> 
	</div>
	
		
	<footer>
			
		<div class="last-div">
			<div class="container">
				<div class="row">
					<div class="copyright">
						© 2014 eNno Multi-purpose theme | <a target="_blank" href="http://bootstraptaste.com">Bootstraptaste</a>
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
						<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest fa-1x"></i></a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus fa-1x"></i></a></li>
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
	<script type="text/javascript">$('.portfolio').flipLightBox()</script>
  </body>
  </html>