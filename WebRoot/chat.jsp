<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Chat page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
  </head>
  
  <body>
	  <section id="said" style="width:100%;height:600px;">
	  	<jsp:useBean id="said" scope="page" class="bean.SayingBean"></jsp:useBean>
	  	<%-- <%=said.getContent()--%>
	  </section>
	  <section id="saying">
	  	<%=session.getAttribute("username") %>:
	  	<textarea id="textarea" rows=5 cols=40>
	  	</textarea>
	  	<input type="submit" id="submit" value="Send"/>
	  </section>
    <script>
    	$(document).ready(function(){
		  $("#submit").click(function(event){
		  event.preventDefault();
		  var htmlobj=$.ajax({url:"chat.do",type:"POST",
		  data:{sayingContent:$("#textarea").val()},dataType:"json",
		  success: function(data){$("#said").append(data.content);}});
		  });
		});
    </script>
  </body>
</html>
