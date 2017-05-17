<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>山东省人力资源数据采集系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
p.leftmargin {
	margin-left: 35%
}
</style>
</head>
<body bgcolor="#E0FFFF">
	<h1 align="center">山东省人力资源数据采集系统</h1>
	<%
		Date date = new Date();
	%>
	<p align="right">
		<%=date.getMonth() + 1%>月<%=date.getDate()%>号&nbsp;星期<%=date.getDay()%></p>
	<hr>
	<table width="100%">
		<tr height="100" align="center">
			<td><table width="1200">
					<tr>
						<input type="button" style="width:200px;height:25px" value="企业信息"
							onClick="window.location.href='user_1.info.jsp'">
						<input type="button" style="width:200px;height:25px" value="数据填报"
							onClick="window.location.href='user_2.dataFill.jsp'">
						<input type="button" style="width:200px;height:25px" value="数据查询"
							onClick="window.location.href='user_3.dataInquire.jsp'">
					</tr>
				</table></td>
		</tr>
	</table>


</body>
</html>