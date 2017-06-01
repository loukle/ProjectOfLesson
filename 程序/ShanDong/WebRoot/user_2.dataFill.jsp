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

.download{margin-left: 30%
   
}
.datafill{
	text-align:center;
}
.input{text-align:center;}
.clear{clear:both;}
.ehdel_upload_show input{float:center; margin-top:10px;}
.ehdel_upload{float:center;margin-top:-20px; *margin-top:-40px; filter:alpha(opacity=0);-moz-opacity:0;opacity:0;}
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
            <li><a href="user_1.info.jsp">企业信息</a></li>
            <li class="now"><a href="user_2.dataFill.jsp">数据填报</a></li>
            <li><a href="user_3.dataInquire.jsp">数据查询</a></li>
        </ul>
    </div>
</div>

<div class="space_hx">&nbsp;</div>
<div class="space_hx">&nbsp;</div>
<div class="scd clearfix">
	<div class="scd_r">
<font size=3>

<form id="user_dataFill" name="user_dataFill" method ="post">  
  <table align = "left" border="0" cellpadding="0" cellspacing="5">
        <tr><td>组织机构代码：</td><td><input id="number" name="number" type="text" /></td></tr>
        <tr><td>调查期：</td><td><input id="time" name="time" type="text" /></td></tr>
        <tr><td>建档期就业人数：</td><td><input id="jianDangNumber" name="jianDangNumber" type="text" /></td></tr>
        <tr><td>调查期就业人数：</td><td><input id="diaoChaNumber" name="diaoChaNumber" type="text" /></td></tr>
        <tr><td>其他原因：</td><td><input id="otherReason" name="otherReason" type="text" /></td></tr>
        <tr><td>就业人数减少类型：</td><td><input id="type" name="type" type="text" /></td></tr>
        <tr><td>主要原因：</td><td><input id="mainReason" name="mainReason" type="text" /></td></tr>
        <tr><td>主要原因说明：</td><td><input id="mainReasonInfo" name="mainReasonInfo" type="text" /></td></tr>
        <tr><td>次要原因：</td><td><input id="secondReason" name="secondReason" type="text" /></td></tr>
        <tr><td>次要原因说明：</td><td><input id="secondReasonInfo" name="secondReasonInfo" type="text" /></td></tr>
        <tr><td>第三原因：</td><td><input id="thirdReason" name="thirdReason" type="text" /></td></tr>
        <tr><td>第三原因说明：</td><td><input id="thirdReasonInfo" name="thirdReasonInfo" type="text" /></td></tr>
        <tr><td>地区：</td><td><input id="fax" name="fax" type="text" /></td></tr>
        <tr><td>审核：</td><td><input id="EMAIL" name="EMAIL" type="text" /></td></tr>
        <tr><td><input id="subdataFill"  name ="subdataFill" type="submit" value="数据上报" /></td></tr>
     </table>
</form>
		</div>
</div>

    
</body>
</html>