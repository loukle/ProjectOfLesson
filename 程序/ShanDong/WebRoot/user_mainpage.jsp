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
        	<li class="now"><a href="user_mainpage.jsp">首页</a></li>
            <li><a href="user_1.Info.jsp">信息交互</a></li>
            <li><a href="user_2.Data.jsp">数据填报</a></li>
            <li><a href="user_3.Check.jsp">数据查看</a></li>
        </ul>
    </div>
</div>