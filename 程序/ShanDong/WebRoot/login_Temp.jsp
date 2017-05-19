<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%
	response.setContentType("text/html;charset=utf-8");
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>山东省人力资源数据采集系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body bgcolor="#E0FFFF">
	<h1 align="center">山东省人力资源数据采集系统</h1>
	<%
		Date date = new Date();
	%>
	<p align="right">
		<%=date.getMonth() + 1%>月<%=date.getDate()%>号&nbsp;星期<%=date.getDay()%></p>
	<hr>

	<font size="6">
		<p>跳转中...</p> <%
   	String person = request.getParameter("person");
	if("0".equals(person)){
	 	response.sendRedirect("admin_1.interchange.jsp");
	}else{
	 	response.sendRedirect("user_1.info.jsp");
	}
   	%>
</body>
</html>