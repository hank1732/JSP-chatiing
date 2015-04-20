<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Begin page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
		::selection{
			background:transparent;
		}
	</style>
	<script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
  </head>
  
  <body>
  	<form action="begin.do">
	    <input type="text" id="username" name="username" placeholder="username">
	    <br/>
	    <input type="submit" value="Begin">
    </form>
  </body>
</html>
