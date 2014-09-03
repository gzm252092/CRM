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
						<div class="row-fluid">
						
						<div class="page-header">
                    <div class="icon">
                        <span class="ico-chart-2"></span>
                    </div>
                    <h1 style="font-family: 'Segoe UI', arial, sans-serif;">客户管理 <small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>
                </div>
						
							<div class="span12">

								<div class="block">

									<div class="head purple">
										<h3>
											&nbsp;&nbsp;&nbsp;流失客户
										</h3>

									</div>
									<div class="data-fluid">
										<table cellpadding="0" cellspacing="0" width="100%"
											class="table table-hover" id="lost">
											<thead>
												<tr>
													<th width="10%">
														编号
													</th>
													<th width="10%">
														客户
													</th>
													<th width="10%">
														客户经理

													</th>
													<th width="15%">
														上次下单时间
													</th>

													<th width="15%">
														确认流失时间
													</th>
													<th width="15%">
														状态
													</th>
													<th width="20%" colspan="2">
														操作
													</th>
												</tr>
											</thead>
											<tbody id="tbody">
												<tr>
													<td>

													</td>
													<td>

													</td>
													<td>

													</td>
													<td>

													</td>

													<td>

													</td>
													<td>

													</td>
													<td>

													
													</td>
													<td>

														
													</td>

												</tr>


											</tbody>
										</table>
									</div>
								</div>

							</div>
						</div>
						<div class="page">
							<div id="pageheader"></div>
						</div>

		<div id="fModal1" class="modal hide fade" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<form id="reformsus" method="post">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						×
					</button>
					<h3 id="myModalLabel">
						填写流失信息
					</h3>
				</div>
				<div class="row-fluid">
					<div class="block-fluid">
						<div class="row-form" id="suspendlost">
							<div class="span12">
								<span class="top title">暂缓措施:</span>
								<textarea name="memo" id="memo"></textarea>
							</div>
						</div>



					</div>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal"
						aria-hidden="true" onclick="suspendLost()">
						保存
					</button>
					<button class="btn" data-dismiss="modal"
						aria-hidden="true">
						取消
					</button>
				</div>
			</form>
		</div>
		<div id="fModal2" class="modal hide fade" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<form id="reformcom" method="post">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						×
					</button>
					<h3 id="myModalLabel">
						填写流失信息
					</h3>
				</div>
				<div class="row-fluid">
					<div class="block-fluid">



						<div class="row-form" id="confirmlost">
							<div class="span12">
								<span class="top title">流失原因:</span>
								<textarea name="memo" id="memo" ></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal"
						aria-hidden="true" onclick="confirmLost()">
						保存
					</button>
					<button class="btn" data-dismiss="modal"
						aria-hidden="true">
						取消
					</button>
				</div>
			</form>
		</div>
		<div class="dialog" id="source" style="display: none;" title="Source"></div>

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
var cs;
var page;
var cid;
var currentpage;
function fulllostclients(cs) {
	$("#lost #tbody tr").remove();
	for ( var index = 0; index < cs.length; index++) {
		var cvo = cs[index];
		var tr;
		if (cvo.status == "确认流失")
			tr = "<tr><td>" + cvo.id + "</td><td>" + cvo.name + "</td><td>"
					+ cvo.manager + "</td><td>" + cvo.lasttime + "</td><td>"
					+ cvo.confirmtime + "</td><td>" + cvo.status
					+ "</td><td> 流失详情:" + cvo.memo + "</td></tr>";
		else if (cvo.status == "暂缓流失")
			tr = "<tr><td>"
					+ cvo.id
					+ "</td><td>"
					+ cvo.name
					+ "</td><td>"
					+ cvo.manager
					+ "</td><td>"
					+ cvo.lasttime
					+ "</td><td>"
					+ cvo.confirmtime
					+ "</td><td>"
					+ cvo.status
					+ "</td><td><a class='buttonsmall'  role='button' onclick='getmessage()'>"
					+ "暂缓</a>"
					+ "</td><td><a class='buttonsmall' style='position:relative;right:40px;'  role='button' data-toggle='modal' href='#fModal2' onclick='getlostid("
					+ cvo.id + ")'>确认</a></td></tr>";

		else
			tr = "<tr><td>"
					+ cvo.id
					+ "</td><td>"
					+ cvo.name
					+ "</td><td>"
					+ cvo.manager
					+ "</td><td>"
					+ cvo.lasttime
					+ "</td><td>"
					+ cvo.confirmtime
					+ "</td><td>"
					+ cvo.status
					+ "</td><td><a class='buttonsmall'  role='button' data-toggle='modal'href='#fModal1' onclick='getlostid("
					+ cvo.id
					+ ")'>"
					+ "暂缓</a>"
					+ "</td><td><a class='buttonsmall' style='position:relative;right:40px;'  role='button' data-toggle='modal' href='#fModal2' onclick='getlostid("
					+ cvo.id + ")'>确认</a></td></tr>";

		$("#lost #tbody").append(tr);
	}
}
function getlostid(id) {
	cid = id;
}
function getmessage() {
	alert("此状态为暂缓流失");
}
function suspendLost() {

	var data = $("#reformsus").serialize() + "&clientid=" + cid + "&status=暂缓流失"
	$.ajax( {
		type : "POST",
		url : "client_modStatus.action",
		data : data,
		dataType : "json",
		success : function(data) {
			alert("操作成功!");
			changePage(currentpage);

		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(XMLHttpRequest.responseText);
			alert(textStatus);
		}
	});
}
function confirmLost() {
	var data = $("#reformcom").serialize() + "&clientid=" + cid + "&status=确认流失"
	$.ajax( {
		type : "POST",
		url : "client_modStatus.action",
		data : data,
		dataType : "json",
		success : function(data) {
			alert("操作成功!");
			changePage(currentpage);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(XMLHttpRequest.responseText);
			alert(textStatus);
		}
	});
}
function fullpage(page) {
	$(".page #pageheader").remove();
	var isfirstpage = page.currentPage == 1;
	var islastpage = page.currentPage == page.totalPage;
	var nextpage = page.currentPage + 1;
	var prepage = page.currentPage - 1;
	var p = "<div id='pageheader'>共" + page.allRow + " 条记录&nbsp;&nbsp;&nbsp; 共"
			+ page.totalPage + "页&nbsp;&nbsp; 当前第" + page.currentPage
			+ " 页 &nbsp;&nbsp;";
	if (isfirstpage)
		p += "第一页 上一页";
	else
		p += "<a href='javascript:changePage(1)'>第一页</a>"
				+ "<a href='javascript:changePage(" + prepage + ")'>上一页</a>";
	if (islastpage)
		p += "下一页 最后一页</div>";
	else
		p += "<a href='javascript:changePage(" + nextpage + ")'>下一页</a>"
				+ "<a href='javascript:changePage(" + page.totalPage
				+ ")'>最后一页</a></div>";
	$(".page ").append(p);

}
function changePage(page) {
	var data = "page=" + page;

	$.ajax( {
		type : "POST",
		url : "client_findlostClient.action",
		data : data,
		dataType : "json",
		success : function(data) {
			cs = data.pageBean.list;
			page = data.pageBean;
			currentpage = page.currentPage;
			fulllostclients(cs);
			fullpage(page);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(XMLHttpRequest.responseText);
			alert(textStatus);
		}
	});

}
$(document).ready(function() {

	changePage(1);

});
</script>
