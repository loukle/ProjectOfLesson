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
            <li class="now"><a href="admin_3.dataAnalyze.jsp">数据分析</a></li>
            <li><a href="admin_4.systemManagement.jsp">系统管理</a></li>
        </ul>
    </div>
</div>
<!--头部-->
<div class="space_hx">&nbsp;</div>
<div class="space_hx">&nbsp;</div>
<div class="scd clearfix">
	<div class="scd_l">
    	<div class="title"><span>数据分析</span></div>
        <div class="scd_lm">
            <ul class="s_nav s_nav_a">
                <li class="now">
                    <div class="li_m">
                        <a href="admin_3.dataAnalyze_duowei.jsp"><span>多维分析</span></a>
                    </div>
                </li>
                <li>
                    <div class="li_m">
                        <a href="admin_3.dataAnalyze_tubiao.jsp"><span>图表分析</span></a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
	<div class="scd_r">
		<div class="title">
			<span>多维分析</span>
		</div>
		<div class="scd_m">
			<ul class="alfx clearfix">
			</ul>

		</div>
	</div>
	
	
	
	
	
	
	<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script> 
	<script>
	
	var width  = 700;	//SVG绘制区域的宽度
	var height = 500;	//SVG绘制区域的高度
			
	var svg = d3.select("body")			//选择<body>
				.append("svg")			//在<body>中添加<svg>
				.attr("width", width)	//设定<svg>的宽度属性
				.attr("height", height);//设定<svg>的高度属性
	
	//1. 确定初始数据，数据库传入
	var dataset = [
        { name: "AttributeOne" , 
		  conditions: [	{ year:2005, numbers: 3000 },
					{ year:2006, numbers: 1300 },
					{ year:2007, numbers: 3700 },
					{ year:2008, numbers: 4900 },
					{ year:2009, numbers: 700 }] },
		{ name: "AttributeTwo" , 
		  conditions: [	{ year:2005, numbers: 2000 },
					{ year:2006, numbers: 4000 },
					{ year:2007, numbers: 1810 },
					{ year:2008, numbers: 6540 },
					{ year:2009, numbers: 2820 }] },
		{ name: "AttributeThree" , 
		  conditions: [	{ year:2005, numbers: 1100 },
					{ year:2006, numbers: 1700 },
					{ year:2007, numbers: 1680 },
					{ year:2008, numbers: 4000 },
					{ year:2009, numbers: 4900 }] }
    ];
	
	
	//2. 转换数据
	var stack = d3.layout.stack()
					.values(function(d){ return d.conditions; })
					.x(function(d){ return d.year; })
					.y(function(d){ return d.numbers; });

	var data = stack(dataset);

	console.log(data);
		
		
	//3. 绘制

	//外边框
	var padding = { left:50, right:100, top:30, bottom:30 };
	
	//创建x轴比例尺
	var xRangeWidth = width - padding.left - padding.right;
		
	var xScale = d3.scale.ordinal()
					.domain(data[0].conditions.map(function(d){ return d.year; }))
					.rangeBands([0, xRangeWidth],0.3);

	//创建y轴比例尺
	
	//最大利润（定义域的最大值）
	var maxNumbers = d3.max(data[data.length-1].conditions, function(d){ 
							return d.y0 + d.y; 
					});
	
	//最大高度（值域的最大值）
	var yRangeWidth = height - padding.top - padding.bottom;
	
	var yScale = d3.scale.linear()
					.domain([0, maxNumbers])		//定义域
					.range([0, yRangeWidth]);	//值域
	
	
	//颜色比例尺
	var color = d3.scale.category10();
	
	//添加分组元素
	var groups = svg.selectAll("g")
					.data(data)
					.enter()
					.append("g")
					.style("fill",function(d,i){ return color(i); });
		
	//添加矩形
	var rects = groups.selectAll("rect")
					.data(function(d){ return d.conditions; })
					.enter()
					.append("rect")
					.attr("x",function(d){ return xScale(d.year); })
					.attr("y",function(d){ return yRangeWidth - yScale( d.y0 + d.y ); })
					.attr("width",function(d){ return xScale.rangeBand(); })
					.attr("height",function(d){ return yScale(d.y); })
					.attr("transform","translate(" + padding.left + "," + padding.top + ")");
	
	//添加坐标轴
	var xAxis = d3.svg.axis()
				.scale(xScale)
				.orient("bottom");
		
	yScale.range([yRangeWidth, 0]);
	
	var yAxis = d3.svg.axis()
					.scale(yScale)
					.orient("left");
					
	svg.append("g")
			.attr("class","axis")
			.attr("transform","translate(" + padding.left + "," + (height - padding.bottom) +  ")")
			.call(xAxis);
				
	svg.append("g")
			.attr("class","axis")
			.attr("transform","translate(" + padding.left + "," + (height - padding.bottom - yRangeWidth) +  ")")
			.call(yAxis); 
			
	//添加分组标签
	var labHeight = 50;
	var labRadius = 10;
	
	var labelCircle = groups.append("circle")
						.attr("cx",function(d){ return width - padding.right*0.98; })
						.attr("cy",function(d,i){ return padding.top * 2 + labHeight * i; })
						.attr("r",labRadius);
					
	var labelText = groups.append("text")
						.attr("x",function(d){ return width - padding.right*0.8; })
						.attr("y",function(d,i){ return padding.top * 2 + labHeight * i; })
						.attr("dy",labRadius/2)
						.text(function(d){ return d.name; });
			
	</script>	
	
	
	
	
	
	
	
	
	
	
	
</div>
</html>