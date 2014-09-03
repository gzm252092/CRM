<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
		<!--[if gt IE 8]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />        
    <![endif]-->
		<title>Aries - Metro Style Admin Panel</title>
		<link rel="icon" type="image/ico" href="favicon.ico" />

		<link href="css/stylesheets.css" rel="stylesheet" type="text/css" />
		<!--[if lte IE 7]>
        <link href="css/ie.css" rel="stylesheet" type="text/css" />
        <script type='text/javascript' src='js/plugins/other/lte-ie7.js'></script>
    <![endif]-->
	
	</head>
	<body style="padding-left:100px;padding-top:40px;padding-right:100px;">
		<div id="loader">
			<img src="img/loader.gif" />
		</div>
						<div class="client">
							<table cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td width="15%">
										订单编号
									</td>
									<td width="10%">
										124532556
									</td>
									<td width="20%">
										日期

									</td>
									<td width="20%">
										2014年5月10日
									</td>
								</tr>
								<tr>
									<td width="15%">
										送货地址
									</td>
									<td width="10%">
										北京市
									</td>
									<td width="20%">
										总金额（元）

									</td>
									<td width="20%">
										600000
									</td>
								</tr>
								<tr>
									<td width="15%">
										状态
									</td>
									<td width="10%">
										回款
									</td>

								</tr>
							</table>
						</div>


						<div class="row-fluid">
							<div class="span12">

								<div class="block">

									<div class="head purple">
										<h2>
											With hover
										</h2>

									</div>
									<div class="data-fluid">
										<table cellpadding="0" cellspacing="0" width="100%"
											class="table table-hover">
											<thead>
												<tr>
													<th width="15%">
														商品
													</th>
													<th width="10%">
														数量
													</th>
													<th width="20%">
														单位

													</th>
													<th width="20%">
														单价（元）
													</th>

													<th width="25%">
														金额（元）
													</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														海龙笔记本
													</td>
													<td>
														2
													</td>
													<td>
														台
													</td>
													<td>
														100000
													</td>

													<td>
														200000
													</td>


												</tr>


											</tbody>
										</table>
									</div>
								</div>

							</div>
						</div>
						<div class="page">
							<div class="pagination pagination-centered pagination-small">
								<ul>
									<li class="disabled">
										<a href="#">&laquo;</a>
									</li>
									<li class="active">
										<a href="#">1</a>
									</li>
									<li>
										<a href="#">2</a>
									</li>
									<li>
										<a href="#">3</a>
									</li>
									<li>
										<a href="#">4</a>
									</li>
									<li>
										<a href="#">5</a>
									</li>
									<li class="disabled">
										<span>...</span>
									</li>
									<li>
										<a href="#">56</a>
									</li>
									<li>
										<a href="#">57</a>
									</li>
									<li>
										<a href="#">58</a>
									</li>
									<li>
										<a href="#">59</a>
									</li>
									<li>
										<a href="#">&raquo;</a>
									</li>
								</ul>
							</div>
						</div>

		<div class="dialog" id="source" style="display: none;" title="Source"></div>

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
</html>

