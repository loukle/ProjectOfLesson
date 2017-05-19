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
			<td><table>
					<tr>
						<input type="button" style="width:200px;height:25px" value="企业交互"
							onClick="window.location.href='admin_1.interchange.jsp'">
						<input type="button" style="width:200px;height:25px" value="数据操作"
							onClick="window.location.href='admin_2.dataOperation.jsp'">
						<input type="button" style="width:200px;height:25px" value="数据分析"
							onClick="window.location.href='admin_3.dataAnalyze.jsp'">
						<input type="button" style="width:200px;height:25px" value="系统管理"
							onClick="window.location.href='admin_4.systemManagement.jsp'">
					</tr>
				</table></td>
		</tr>
	</table>
	<table width="100%">
		<tr height="100" align="center">
			<td><table>
					<tr>
						<input type="button" style="width:200px;height:25px" value="多维分析"
							onClick="window.location.href='admin_3.dataAnalyze_duowei.jsp'">
						<input type="button" style="width:200px;height:25px" value="图表分析"
							onClick="window.location.href='admin_3.dataAnalyze_tubiao.jsp'">
					</tr>
				</table></td>
		</tr>
	</table>

</body>
</html>