<%@ page contentType="text/html; charset="%>
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
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
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
            <li><a href="admin_1.interchange.jsp">企业交互</a></li>
            <li class="now"><a href="admin_2.dataOperation.jsp">数据操作</a></li>
            <li><a href="admin_3.dataAnalyze.jsp">数据分析</a></li>
            <li><a href="admin_4.systemManagement.jsp">系统管理</a></li>
        </ul>
    </div>
</div>
<!--头部-->
<div class="space_hx">&nbsp;</div>
<div class="space_hx">&nbsp;</div>
<div class="scd clearfix">
	<div class="scd_l">
    	<div class="title"><span>企业交互</span></div>
        <div class="scd_lm">
            <ul class="s_nav s_nav_a">
                <li class="now">
                    <div class="li_m">
                        <a href="admin_1.interchange_beian.jsp"><span>企业备案</span></a>
                    </div>
                </li>
                <li>
                    <div class="li_m">
                        <a href="admin_1.interchange_guanli.jsp"><span>报表管理</span></a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
	<div class="scd_r">
		<div class="title">
			<span>企业备案</span>
		</div>
		<div class="scd_m">
			<ul class="alfx clearfix">
			<body><div align="left" class="title"><span>企业查询：</span></div></body>
		        <spam>>按名称查询: <span>
			    <input  type="text" id="name" value="请输入企业名称" onfocus="javascript:if(this.value=='请输入企业名称')this.value='';this.type='text'" style="width:200px;height:22px; ">
	           <br>
	            <p><input type="submit" value="查询" onclick="ok()" style="width:80px;height:22px;">
	            <br>
			   	<spam>>按类别查询: <span>
			    <input  type="text" id="class" value="请输入类别名称" onfocus="javascript:if(this.value=='请输入类别名称')this.value='';this.type='text'" style="width:200px;height:22px;">
	            <p><input type="submit" value="查询" onclick="ok()" style="width:80px;height:22px;">
			    <br>
			   	<spam>>按地域查询: <span>
			   
			   <bodyaction="show.jsp" style=”width:80px;height:22px;“">
                <select name="select" style=”width:80px;height:22px;“>
                <option value="青岛" >青岛</option>
                <option value="济南">济南</option>
                <option value="菏泽">菏泽</option>
                <option value="泰安">泰安</option>
                </select><br>
                <input type="submit" value="查询" style="width:80px;height:22px;">
                </body>
			   <br> <script type="text/javascript">
		         function fun()
	                 	{
		             	var name = document.getElementById('name').value;
                        var class = document.getElementById('class').value;
		                 }
	                </script>
	         
		   	<body><div align="left" class="title"><span>企业登记：</span></div>
		    <spam>>企业名称: <span><input  type="text" id="class" value="请输入企业名称" onfocus="javascript:if(this.value=='请输入企业名称')this.value='';this.type='text'" style="width:200px;height:22px;">
		    <br>
		    <spam>>法人代表: <span><input  type="text" id="class" value="请输入法人代表" onfocus="javascript:if(this.value=='请输入法人代表')this.value='';this.type='text'" style="width:200px;height:22px;">
		    <br>
		    <spam>>注册资金: <span><input  type="text" id="class" value="请输入注册资金/万" onfocus="javascript:if(this.value=='请输入注册资金/万')this.value='';this.type='text'" style="width:200px;height:22px;">
		    <div align="left"><spam>>选择企业类型:<span>
		    <select name="select" style=”width:80px;height:22px;“>
                <option value="国企" >国有企业</option>
                <option value="私企">私营企业</option>
                <option value="外企">外资企业</option>
                </select> 
		     </div>
		   	</body>
		   	<body><div align="left" class="title"><span>信息修改：</span></div>
		   	<spam>>修改原因: <span><input  type="text" id="class" value="请输入企业名称" onfocus="javascript:if(this.value=='请输入企业名称')this.value='';this.type='text'" style="width:200px;height:22px;">
		    <br>
		    <spam>>修改项: <span> <select name="select" style=”width:80px;height:22px;“>
                <option value="" >企业名称</option>
                <option value="私企">法人代表</option>
                <option value="外企">注册资金</option>
                </select> 
		   	
		   	</body>
			
			</ul>

		</div>
	</div>
</div>
</html>