<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.db.DBHelper"%>
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
<body>
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
   	String account = request.getParameter("account");
   	String password = request.getParameter("password");
	if("0".equals(person)){
		/*
		String id = null;
		String sql="select * from '省用户' where '账号'='"+account+"' and '密码'='"+password+"'";
		Statement stat = null;
		ResultSet rs = null;
		Connection conn = new DBHelper().getConn();
		try{
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while (rs.next()) {
				id = rs.getString(0);
			}
		}
		catch(SQLException ex){}
		*/
		
		
	 	response.sendRedirect("admin_0.corpSearch.jsp");
	}else if("1".equals(person))
	{
	 	response.sendRedirect("shiuser_0_mainpage.jsp");
	}
	else response.sendRedirect("user_0.index.jsp");
   	%>
</body>
</html>