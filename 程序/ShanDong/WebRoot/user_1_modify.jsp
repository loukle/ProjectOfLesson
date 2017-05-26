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
            <li class="now"><a href="user_1.info.jsp">企业信息</a></li>
            <li><a href="user_2.dataFill.jsp">数据填报</a></li>
            <li><a href="user_3.dataInquire.jsp">数据查询</a></li>
        </ul>
    </div>
</div>

<!--头部-->
<div class="space_hx">&nbsp;</div>
<div class="space_hx">&nbsp;</div>
<div class="scd clearfix">
	<div class="scd_l">
    	<div class="title"><span>功能列表</span></div>
        <div class="scd_lm" style="height: 243px; ">
            <ul class="s_nav s_nav_a">
                <li>
                    <div class="li_m">
                        <a href="user_1_input.jsp"><span>信息录入</span></a>
                    </div>
                </li>
                <li class="now">
                    <div class="li_m">
                        <a href="user_1_modify.jsp"><span>信息修改</span></a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
	<div class="scd_r">
			<div class="space_hx">&nbsp;</div>
<Font size=3>
<div class="title">
<span>信息修改</span>
</div>
<table align = "center" border="0" cellpadding="0" cellspacing="0">
<tr><td>所属地区：</td><td><Input type="text" name="number"></td></tr>
<tr><td>组织机构代码：</td><td><Input type="text" name="name"></td></tr>
<tr><td>企业名称：</td><td><Input type="text" name="os"></td></tr>
<tr><td>企业性质：</td><td><Input type="text" name="pc"></td></tr>
<tr><td>所属行业：</td><td><Input type="text" name="ds"></td></tr>
<tr><td>主要经营业务：</td><td><Input type="text" name="number"></td></tr>
<tr><td>联系人：</td><td><Input type="text" name="name"></td></tr>
<tr><td>联系地址：</td><td><Input type="text" name="os"></td></tr>
<tr><td>邮政编码：</td><td><Input type="text" name="pc"></td></tr>
<tr><td>联系电话：</td><td><Input type="text" name="ds"></td></tr>
<tr><td>传真：</td><td><Input type="text" name="pc"></td></tr>
<tr><td>EMAIL：</td><td><Input type="text" name="ds"></td></tr>
<tr><td><Input type="submit" name="b" value="保存并上报"></td></tr>
</table>
		</div>
</div>

</body>
</html>