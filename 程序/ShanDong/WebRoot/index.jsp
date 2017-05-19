<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>山东省人力资源数据采集系统</title>
  </head>
  
  <body bgcolor="#E0FFFF">
	<h1 align="center">山东省人力资源数据采集系统</h1>
	<%
		Date date = new Date();
	%>

	
	<p align="right">
		<%=date.getMonth() + 1%>月<%=date.getDate()%>号&nbsp;星期<%=date.getDay()%></p>
	<hr>
	<font size="6"> <br> <br>
		<table align="center" bgcolor="#00FFFF" width="300" height="200">
			<tr>
				<td align="center"><font size="6">登录界面</font></td>
			</tr>
			<tr>
				<td align="center">
					<form padding-top="1" action="login_Temp.jsp" method=post>
						账号: <input type="text" name="account"> <br> 密码: <input
							type="password" name="password"> <br> <br> <select
							id='person' name='person'>
							<option value="0">省用户</option>
							<option value="1">企业用户</option>
						</select> <br> <br> <Input type="submit" name="b" value="确认">
					</form>
				</td>
			</tr>
		</table>
	</font>
</body>
</html>
