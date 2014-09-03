<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
	<head>

		<title>My JSP 'tuiguang.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="css/s.css">
		<link href="css/stylesheets.css" rel="stylesheet" type="text/css" />

	</head>

	<body style="padding-left:100px;padding-top:40px;padding-right:100px;">
		<div id="loader">
			<img src="img/loader.gif" />
		</div>
		
						<div class="form">
							<form>
								<table class="dt">
									<tr>
										<td align="center">
											<label>
												编号:
											</label>
										</td>
										<td>
											<input type="text" />
										</td>
										<td align="center">
											<label>
												创建人:
											</label>
										</td>
										<td>
											<input type="text" name="pvo.creator"
										value="#session.user" readonly="readonly" /> <span
										id="creator"></span>
										</td>
									</tr>
									<tr>
										<td align="center">
											<label>
												概要:
											</label>
										</td>
										<td colspan="3">
											<input type="text" style="width: 350px" name="pvo.name"/>
											<span id="name"></span>
										</td>
									</tr>
									<tr>
										<td align="center">
											<label>
												联系人:
											</label>
										</td>
										<td>
											<input type="text" name="pvo.clientname"/>
											<span id="clientname"></span>
										</td>
										<td align="center">
											<label>
												联系人电话:
											</label>
										</td>
										<td>
											<input type="text" name="pvo.tel"/>
											<span id="tel"></span>
										</td>
									</tr>
									<tr>
										<td valign="top" align="center">
											<label>
												服务请求:
											</label>
										</td>
										<td colspan="3" valign="top"><textarea name="pvo.descr"></textarea>
										<span id="descr"></span></td>
									</tr>
									<tr>
									<td align="center"><label> 开始时间: </label></td>
									<td><input id="d4311" class="Wdate" type="text"
										onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4312\')||\'2020-10-01\'}'})"
										name="pvo.stime" /> <span id="stime"></span></td>
									<td align="center"><label> 结束时间: </label></td>
									<td><input id="d4312" class="Wdate" type="text"
										onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}',maxDate:'2020-10-01'})"
										name="pvo.ftime" /> <span id="ftime"></span></td>
								</tr>
							</table>
								<input class="btn" type="button" value="保 存"
								onmouseover="this.className='btn btn_h'"
								onmousedown="this.className='btn btn_d'"
								onmouseout="this.className='btn'" onclick="show()" /> <input
								class="btn" type="reset" value="取 消"
								onmouseover="this.className='btn btn_h'"
								onmousedown="this.className='btn btn_d'"
								onmouseout="this.className='btn'" /> <a class="btn"
								href="tuiguang1.jsp" style="display:none;">查询</a>
							</form>
						</div>
					
	</body>

</html>
 
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
<script type="text/javascript">
	function show() {
		var data = $("#form").serialize() + "&pvo.styleid="+3+"&pvo.status=未分配";
		alert(data);
		var url = "plan_add.action";
		$.ajax({
			type : "POST",
			url : url,
			data : data,
			dataType : "json",
			success : function(data) {
				$("span #title").hide();
				$("input").hide();
				$("textarea").hide();
				$("a").show();
				$("#planid").append(data.planid);
				$("#creator").append(data.pvo.creator);
				$("#name").append(data.pvo.name);
				$("#tel").append(data.pvo.tel);
				$("#clientname").append(data.pvo.clientname);
				$("#descr").append(data.pvo.descr);
				$("#stime").append(data.pvo.stime);
				$("#ftime").append(data.pvo.ftime);
			},
			error : function() {
				alert("插入失败！");
			}
		});
	}
	
</script>