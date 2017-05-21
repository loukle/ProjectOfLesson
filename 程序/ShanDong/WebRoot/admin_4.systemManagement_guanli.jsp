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
            <li><a href="admin_1.interchange.jsp">企业交互</a></li>
            <li><a href="admin_2.dataOperation.jsp">数据操作</a></li>
            <li><a href="admin_3.dataAnalyze.jsp">数据分析</a></li>
            <li class="now"><a href="admin_4.systemManagement.jsp">系统管理</a></li>
        </ul>
    </div>
</div>
<!--头部-->
<div class="space_hx">&nbsp;</div>
<div class="space_hx">&nbsp;</div>
<div class="scd clearfix">
	<div class="scd_l">
    	<div class="title"><span>系统管理</span></div>
        <div class="scd_lm">
            <ul class="s_nav s_nav_a">
                <li>
                    <div class="li_m">
                        <a href="admin_4.systemManagement_bufa.jsp"><span>发布通知</span></a>
                    </div>
                </li>
                <li>
                    <div class="li_m">
                        <a href="admin_4.systemManagement_sheji.jsp"><span>设置时限</span></a>
                    </div>
                </li>
                <li class="now">
                    <div class="li_m">
                        <a href="admin_4.systemManagement_guanli.jsp"><span>管理用户</span></a>
                    </div>
                </li>
                <li>
                    <div class="li_m">
                        <a href="admin_4.systemManagement_jiankong.jsp"><span>监控系统</span></a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    	<div class="scd_r">
		<div class="title">
			<span>管理用户</span>
		</div>
		<div class="scd_m">
			<ul class="alfx clearfix">
			
			
<head>
 <meta charset="UTF-8">
 <title></title>
 <style type="text/css">
  #box{
  margin:0 auto;
  border:4px double #808080;
  width:600px;
  text-align:center;
  }
  #box input{
  width:130px;
  }
  #box table{
  margin:5px 0;
  }
 </style>
 <script type="text/javascript">
  onload = function(){
  var aInput = document.getElementsByTagName('input');
  var bTn = document.getElementById('btn');
  var table = document.getElementsByTagName('table')[0];

  bTn.onclick = function(){
 
   var oTr=document.createElement('tr');//创建节点
   table.appendChild(oTr);//创建table的子节点tr
   for(var i = 0; i < aInput.length-1; i ++){
   var oTd=document.createElement('td');//创建节点
   oTd.innerHTML=aInput[i].value;//给表格赋内容
   oTr.appendChild(oTd);//创建tr的子节点td
   }
 
   var oTd=document.createElement('td') ;//创建节点
   oTd.innerHTML='<a href="javascript:;" rel="external nofollow" rel="external nofollow" >删除</a>';//给表格赋内容
   oTr.appendChild(oTd);//创建tr的子节点td
 
   oTd.getElementsByTagName('a')[0].onclick=function(){
   table.deleteRow(1);
   }
  }
  }  
 </script>
 </head>
 <body>
 <div id="box">
 <br>
  姓名:<input type="text" name="" id="" value="" />
  企业：<input type="text" name="" id="" value="" />
  电话：<input type="text" name="" id="" value="" />
  <br><br>
  <input type="button" name="btn" id="btn" value="保存" style="width:50px;"/>
  <input type="button" name="btn" id="btn" value="删除" style="width:50px;"/>
  <table border="" cellspacing="" cellpadding="" width="600px" >
  <tr>
  <td>姓名</td>
  <td>企业</td>
  <td>电话</td>
  </tr>  
  </table>
  <br>
 </div>
 
 </body>			
			
			
			</ul>

		</div>
	</div>
</div>
</div>

</html>