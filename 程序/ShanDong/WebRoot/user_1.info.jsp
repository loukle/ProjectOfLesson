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
<link rel="stylesheet" type="text/css" href="css/reset.css"/>
<link rel="stylesheet" type="text/css" href="css/thems.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">
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

<!--头部-->
<div class="header">
<div class="space_hx">&nbsp;</div>
<div class="head_td"> 山东省人力资源数据管理系统</div>
    <div class="space_hx">&nbsp;</div>
    <div class="nav_m">
        <div class="n_icon">&nbsp;</div>
        <ul class="nav clearfix">
            <li><a href="user_0.index.jsp">首页</a></li>
            <li class="now"><a href="user_1.info.jsp">企业信息</a></li>
            <li><a href="user_2.dataFill.jsp">数据填报</a></li>
            <li><a href="user_3.dataInquire.jsp">数据查询</a></li>
        </ul>
    </div>
</div>

<div class="space_hx">&nbsp;</div>
<div class="space_hx">&nbsp;</div>
<div class="scd clearfix">
	
	<div class="scd_r">
<font size=3>

<form id="user_info" name="user_info" method ="post">  
  <table align = "left" border="0" cellpadding="0" cellspacing="5">
        <tr><td>所属地区：</td><td><input id="place" name="place" type="text" /></td></tr>
        <tr><td>企业机构代码：</td><td><input id="number" name="number" type="text" /></td></tr>
        <tr><td>企业名称：</td><td><input id="name" name="name" type="text" /></td></tr>
        <tr><td>企业性质：</td><td><input id="xingzhi" name="xingzhi" type="text" /></td></tr>
        <tr><td>所属行业：</td><td><input id="hangye" name="hangye" type="text" /></td></tr>
        <tr><td>主要经营业务：</td><td><input id="yewu" name="yewu" type="text" /></td></tr>
        <tr><td>联系人：</td><td><input id="contact" name="contact" type="text" /></td></tr>
        <tr><td>联系地址：</td><td><input id="address" name="address" type="text" /></td></tr>
        <tr><td>邮政编码：</td><td><input id="zipcode" name="zipcode" type="text" /></td></tr>
        <tr><td>联系电话：</td><td><input id="tel" name="tel" type="text" /></td></tr>
        <tr><td>传真：</td><td><input id="fax" name="fax" type="text" /></td></tr>
        <tr><td>EMAIL：</td><td><input id="EMAIL" name="EMAIL" type="text" /></td></tr>
        <tr><td><input id="subinfo"  name ="subinfo" type="submit" value="保存修改" /></td></tr>
     </table>
</form>
		</div>
</div>

</body>
</html>