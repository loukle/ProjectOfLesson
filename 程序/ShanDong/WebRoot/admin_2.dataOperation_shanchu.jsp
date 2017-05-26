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
            <li><a href="news.html">企业交互</a></li>
            <li class="now"><a href="news.html">数据操作</a></li>
            <li><a href="xm.html">数据分析</a></li>
            <li><a href="news.html">系统管理</a></li>
        </ul>
    </div>
</div>
<!--头部-->
<div class="space_hx">&nbsp;</div>
<div class="space_hx">&nbsp;</div>
<div class="scd clearfix">
	<div class="scd_l">
    	<div class="title"><span>数据操作</span></div>
        <div class="scd_lm">
            <ul class="s_nav s_nav_a">
                <li >
                    <div class="li_m">
                        <a href="alfx.html"><span>数据修改</span></a>
                    </div>
                </li>
                <li class="now">
                    <div class="li_m">
                        <a href=""><span>数据删除</span></a>
                    </div>
                </li>
                <li>
                    <div class="li_m">
                        <a href=""><span>数据退回</span></a>
                    </div>
                </li>
                <li>
                	<div class="li_m">
                    	<a href=""><span>数据查询</span></a>
                     </div>
                </li>
                <li>
                	<div class="li_m">
                    	<a href=""><span>数据导出</span></a>
                    </div>
                </li>
                <li>
                	<div class="li_m">
                    	<a href=""><span>数据汇总</span></a>
                    </div>
                </li>
                      
           
            </ul>
        </div>
    </div>
    <div class="scd_r">
    	<div class="title">
        	<span>数据删除</span>
        </div>
        <div class="scd_m">
<div id="search_div">
	&nbsp;数据编号&nbsp;
        <input name="xname" type="text" class="ipt1" style="width:140px;" value="">
	&nbsp;减少类型&nbsp;
        <input name="xname" type="text" class="ipt1" style="width:140px;" value="">
	&nbsp;首要原因&nbsp;
        <input name="xname" type="text" class="ipt1" style="width:140px;" value="">
	&nbsp;XXX&nbsp;
        <input name="xname" type="text" class="ipt1" style="width:140px;" value="">
	</div>


	<input type="submit" value="数据查询"  id="submit" name="button2" >      
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
</body>
</html>
