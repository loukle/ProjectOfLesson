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
        	<li><a href="shiuser_0_mainpage.jsp">首页</a></li>
            <li><a href="shiuser_1.recorded.jsp">企业备案</a></li>
            <li class="now"><a href="shiuser_2.report_search.jsp">报表管理</a></li>
        </ul>
    </div>
</div>
<!--头部-->
<div class="space_hx">&nbsp;</div>
<div class="space_hx">&nbsp;</div>
<div class="scd clearfix">
	<div class="scd_l">
    	<div class="title"><span>企业备案</span></div>
        
        <div class="scd_lm">
            <ul class="s_nav s_nav_a">
                <li class="now">
                    <div class="li_m">
                        <a href="shiuser_2.report_search.jsp"><span>查看</span></a>
                    </div>
                </li>
                <li>
                    <div class="li_m">
                        <a href="shiuser_2.report_censor.jsp"><span>审核</span></a>
                    </div>
                </li>
                <li>
                    <div class="li_m">
                        <a href="shiuser_2.report_handIn.jsp"><span>上报</span></a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="scd_r">
    	<div class="title">
        	<span>数据导出</span>
        </div>
        <div class="scd_m">
        	<ul class="alfx clearfix">
			<table border="1" >
            <td> 数据编号</td><td>原人数</td><td> 现人数</td>
            <td> 减少类型</td><td> 首要原因</td><td> 次要原因</td>
            <td> 其他原因</td><td>操作</td>
            </table>
            </ul>
            
    </div>
     <div class="pages">
            	<a href="" class="now">1</a>
                <a href="">2</a>
                <a href="">上一页</a>
                <a href="">下一页</a>

            </div>
</div>
</div>

</html>