<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'auth-manage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/stylesheets.css" rel="stylesheet" type="text/css" />
	<style>
	
.content {
	position:relative;
	right:15px;
	margin: 50px auto;
	width: 200px;
	height: auto;
	margin-left:0px;
	padding-left: 0px;
}

.content>ul {
	list-style: none;
}

.content .menu-one>li {
	width: 200px;
	height: auto;
	overflow: hidden;
	border-top: 1px solid #888;
	float:left;
}

.content .menu-one>li.firstChild {
	border: 0;
}

.content .menu-one .header {
	height: 35px;
	background: #666;
	line-height: 34px;
	text-indent: 15px;
	cursor: pointer;
}

.content .menu-one .header>span {
	display: block;
}

.content .menu-one .header .txt {
	float: left;
	color: #fff;
}

.content .menu-one .header .arrow {
	float: right;
	width: 35px;
	height: 35px;
	background: url(img/arrow-d.png) no-repeat center center;
}

.content .menu-two {
	position:relative;
	right:40px;
	display: none;
	width: 220px;
	height: auto;
}

.content .menu-two li {
	width: 220px;
	height: 35px;
	background: #eee;
	border-top: 1px solid #ccc;
	line-height: 34px;
	text-indent: 40px;
}

.content .menu-two li a{
	color:#f35858;
	
}

.content .menu-two li.firstChild {
	border: 0;
}

.special {
	display: block;
	color: #888;
}

.content .menu-show .header {
	background: #777;
}

.content .menu-show .header .arrow {
	background-image: url(img/arrow-u.png);
}	
		.content .menu-one .header .cb_yes,
		.content .menu-two .cb_yes{float: right; width: 35px; height: 35px; background: url(img/cb_yes.png) no-repeat center center;}
		
		.content .menu-one .header .cb_no,
		.content .menu-two .cb_no{float: right; width: 35px; height: 35px; background: url(img/cb_no.png) no-repeat center center;}
		
	</style>
	
  </head>
  
  <body style="padding-left:100px;padding-top:40px;padding-right:100px;">
  <div id="loader">
			<img src="img/loader.gif" />
		</div>
		
				<div class="page-header">
                    <div class="icon">
                        <span class="ico-chart-2"></span>
                    </div>
                    <h1>权限管理 <small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>
                </div>
		

								
					<div id="tabs"  class="data-fluid tabbable" style="margin-top:100px;background-color:white">                    
                                <ul id="tabstitle" class="nav nav-tabs">     
                                </ul>
                                <div style="padding-bottom:40px;padding-left:40%;border-left:solid #eeeeee;border-bottom:solid #eeeeee;border-right:solid #eeeeee" id="tabscontent" class="tab-content">                   
                                </div>
                    </div>
  </body>
  
<script type="text/javascript" src="js/jquery-1.10.1.min.js">
</script>
		<script type='text/javascript'
			src='js/plugins/jquery/jquery-1.9.1.min.js'>
</script>
		<script type='text/javascript'
			src='js/plugins/jquery/jquery-ui-1.10.1.custom.min.js'>
</script>
		<script type='text/javascript'
			src='js/plugins/jquery/jquery-migrate-1.1.1.min.js'>
</script>
		<script type='text/javascript' src='js/plugins/jquery/globalize.js'>
</script>
		<script type='text/javascript' src='js/plugins/other/excanvas.js'>
</script>

		<script type='text/javascript'
			src='js/plugins/other/jquery.mousewheel.min.js'>
</script>

		<script type='text/javascript'
			src='js/plugins/bootstrap/bootstrap.min.js'>
</script>

		<script type='text/javascript'
			src='js/plugins/cookies/jquery.cookies.2.2.0.min.js'>
</script>

		<script type='text/javascript' src='js/plugins/jflot/jquery.flot.js'>
</script>
		<script type='text/javascript'
			src='js/plugins/jflot/jquery.flot.stack.js'>
</script>
		<script type='text/javascript'
			src='js/plugins/jflot/jquery.flot.pie.js'>
</script>
		<script type='text/javascript'
			src='js/plugins/jflot/jquery.flot.resize.js'>
</script>

		<script type='text/javascript'
			src='js/plugins/sparklines/jquery.sparkline.min.js'>
</script>

		<script type='text/javascript'
			src='js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js'>
</script>

		<script type='text/javascript'
			src="js/plugins/uniform/jquery.uniform.min.js">
</script>

		<script type='text/javascript' src='js/plugins/shbrush/XRegExp.js'>
</script>
		<script type='text/javascript' src='js/plugins/shbrush/shCore.js'>
</script>
		<script type='text/javascript' src='js/plugins/shbrush/shBrushXml.js'>
</script>
		<script type='text/javascript'
			src='js/plugins/shbrush/shBrushJScript.js'>
</script>
		<script type='text/javascript' src='js/plugins/shbrush/shBrushCss.js'>
</script>

		<script type='text/javascript' src='js/plugins.js'>
</script>
		
		<script type='text/javascript' src='js/zchart.js'>
</script>

		<script type='text/javascript' src='js/actions.js'>
</script>

		<script type="text/javascript" src="js/slider.js">
		</script>
		<script type='text/javascript' src='js/plugins/other/faq.js'>
</script>
     <script type='text/javascript' src='js/table.js'>
</script>

<script language="javascript" type="text/javascript"
	src="My97DatePicker/WdatePicker.js">
</script>
  <script type="text/javascript" src="js/aum.js">
 
	
  </script>
</html>
