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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<title>数据删除</title>
<link rel="stylesheet" type="text/css" href="css/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/thems.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">
</head>

<body>
<!--头部-->
<div class="header">
<div class="space_hx">&nbsp;</div>
<div class="head_td"> 山东省人力资源数据管理系统</div>
    <div class="space_hx">&nbsp;</div>
    <div class="nav_m">
        <div class="n_icon">&nbsp;</div>
        <ul class="nav clearfix">
        	<li class="now"><a href="admin_mainpage.jsp">首页</a></li>
            <li><a href="admin_1.Inter.jsp">企业交互</a></li>
            <li><a href="admin_2.Data.jsp">数据操作</a></li>
            <li><a href="admin_3.Analysis.jsp">数据分析</a></li>
            <li><a href="admin_4.System.jsp">系统管理</a></li>
        </ul>
    </div>
    <div class="scd_r">
		<div class="title">
			<span>通知</span>
		</div>
		<div class="scd_m">

			
<table align="center" width="1000" cellpadding="0" cellspacing="0" Border="5">
<tr><th style="width: 200px; ">通知标题</th><th style="width: 120px; ">通知时间</th><th style="width: 100px; ">发布单位</th><th style="width: 580px; ">内容</th></tr>
<tr><td>54℃</td><td>54℃</td><td>54℃</td><td><a href="" onClick="">点击查看全文</a></td><td align="center" style="width: 40px; "> <a href="" onClick="return confirm('确定要删除该通知吗？')">删除</a></td></tr>
</table>



		</div>
	</div>
</div>