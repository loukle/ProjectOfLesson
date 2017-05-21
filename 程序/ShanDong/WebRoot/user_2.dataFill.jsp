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
        <div>
        <ul class="nav clearfix">
            <li><a href="user_1.info.jsp">企业信息</a></li>
            <li class="now"><a href="user_2.dataFill.jsp">数据填报</a></li>
            <li><a href="user_3.dataInquire.jsp">数据查询</a></li>
        </ul>
        </div>
        </div>
	<%
		Date date = new Date();
	%>
	<p align="right">
		<%=date.getMonth() + 1%>月<%=date.getDate()%>号&nbsp;星期<%=date.getDay()%></p>
	<hr>
	<div class="download">
	<input type="button" style="width:200px;height:25px" value="模板下载" onClick="">
	</div>
	<div class="datafill">
		<div>文件提交 </div>
    <div class="film_discription">
        <span>新文件的最大尺寸： 100MB ，最多附件：1</span>
           </div>         
		<fieldset class="hidden"><div>
	<div class="input">
<form method="post" action="" enctype="multipart/form-data">
<div class="ehdel_upload_show">
<input id="ehdel_upload_text" type="text" name="txt" />
<input id="ehdel_upload_btn" type="image" src="" value="请选择文件" /><!--加图片地址-->
</div>
<div class="clear"></div>
<input type="file" onchange="ehdel_upload_text.value=this.value" class="ehdel_upload" />
</form>
</div>
		<div id="fgroup_id_buttonar" class="fitem fitem_actionbuttons fitem_fgroup">
		<div class="felement fgroup"><input name="submitbutton" value="保存更改" type="submit" id="id_submitbutton" /> 
		<input name="cancel" value="取消" type="reset" onclick="window.location.href('http://desktop-pquapof:8080/ShanDong/user_1.info.jsp')" class=" btn-cancel" id="id_cancel" />
		</div>
		</div>
		</div>
		</fieldset>
		</div>
</body>
</html>