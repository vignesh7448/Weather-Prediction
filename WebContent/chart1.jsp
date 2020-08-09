<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
String jan=(String)request.getAttribute("jan");
String feb=(String)request.getAttribute("feb");
String mar=(String)request.getAttribute("mar");
String april=(String)request.getAttribute("apr");
String may=(String)request.getAttribute("may");
String june=(String)request.getAttribute("june");
String july=(String)request.getAttribute("july");
String aug=(String)request.getAttribute("aug");
String sept=(String)request.getAttribute("sep");
String oct=(String)request.getAttribute("oct");
String nov=(String)request.getAttribute("nov");
String dec=(String)request.getAttribute("dec");
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
out.println(jan);
 
map = new HashMap<Object,Object>(); map.put("label", "Janaury"); map.put("y", 26); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "February"); map.put("y", 29); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "March"); map.put("y", 27); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "April"); map.put("y", 29); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "May"); map.put("y", 30); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "June"); map.put("y", 32); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "July"); map.put("y", 29); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "August"); map.put("y", 30); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "September"); map.put("y", 29); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "October"); map.put("y", 28); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "November"); map.put("y", 27); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "December"); map.put("y", 25); list.add(map);




 
String dataPoints = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	title: {
		text: "AVERAGE"
	},
	axisX: {
		title: "Weather Prediction"
	},
	axisY: {
		title: "Temperature (in C)"
	},
	data: [{
		type: "column",
		yValueFormatString: " C",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>            