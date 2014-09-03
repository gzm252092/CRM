<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>


		<title>My JSP 'clientlist.jsp' starting page</title>
		<link href="css/stylesheets.css" rel="stylesheet" type="text/css" />
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

        <link href="css/stylesheets.css" rel="stylesheet" type="text/css" />
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
.buttonsmall {
	display: inline-block;
	color: #f35858;
	border-color: rgba(243, 88, 88, 0.5);
	text-decoration: none;
	border: solid 1px rgba(243, 88, 88, 0.5);
	border-radius: 0.25em;
	padding: 0.1em 0.1em 0.1em 0.1em;
	font-size: 15px;
	width: 30px;
}

.buttonsmall:hover {
	color: #fff;
	border-color: rgba(243, 88, 88, 0.5);
	/*background-color:rgba(243,88,88,0.5);*/
	background-color: #f35858;
	border: solid 1px #fff;
}
</style>

	</head>

	<body
		style="padding-left: 100px; padding-top: 40px; padding-right: 100px;">
		<div id="loader">
			<img src="img/loader.gif" />
		</div>






		<div class="client">

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
		
					<table style="font-size:18px;margin-top:20px;margin-bottom:20px;">
						<tr>
							<td>
								按客户名查询:
							</td>
							<td>
								<input type="text" name="clname" id="clname" />
							</td>
							<td>
								<button style="position:relative;top:1px;" class="btn" onclick="searchbyname()">查询</button>
							</td>
						     
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按地区查询:
							</td>
							<td>
								<input type="text" name="clregion" id="clregion" />
							</td>
							<td>
								<button style="position:relative;top:1px;" class="btn" onclick="searchbyregion()" >查询</button>
							</td>
						</tr>
					</table>
					<div class="data-fluid">
						<table cellpadding="0" cellspacing="0" width="80%"
							class="table table-hover" id="clients" >
							<thead style="font-size:15px">
								<tr>
									<th width="10%">
										编号
									</th>
									<th width="10%">
										名称
									</th>
									<th width="20%">
										网址

									</th>
									<th width="20%">
										手机
									</th>
									<th width="10%">
										成功率
									</th>
									<th width="20%">
										传真
									</th>
									<th width="30%" colspan="2">
										操作
									</th>
								</tr>
							</thead>
							<tbody id="tbody" style="font-size:12px">
								<!--
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

										<span class="buttonsmall">编辑</span>
									</td>
									<td>
										<span class="buttonsmall">删除</span>

									</td>
								
								</tr>
                                -->

							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>

		<div class="page">
			<div id="pageheader"></div>
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
<script type='text/javascript' src='js/plugins/jflot/jquery.flot.pie.js'>
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

var clients;
var page;
var currentpage;
var namesearch;
var search;
var regionsearch;
function del(index) {
	var cid = clients[index].id;
	var data = "clientid=" + cid;
	var url = "client_del.action";
	$.ajax( {
		type : "POST",
		url : url,
		data : data,
		dataType : "json",
		success : function(data) {
			alert("删除成功！");
			changePage(currentpage);

		},
		error : function() {
			alert("删除失败！");
		}
	});
}
function searchbyregion(){
search = "true";
regionsearch = "true";
	changePage(1);


}
function searchbyname() {
	search = "true";
	namesearch="true";
	changePage(1);

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
	if (search == "true") {
	if (namesearch == "true") {
			var url = "client_findnamecomtainschar.action";
			var data = "namechar=" + $("#clname").val()+"&page="+page;
			$.ajax( {
				type : "POST",
				url : url,
				data : data,
				dataType : "json",
				success : function(data) {

					clients = data.pageBean.list;
					page = data.pageBean;	
					currentpage = page.currentPage;
					fullallclient(clients);
					fullpage(page);
				},
				error : function() {
					alert("查询失败！");
				}
			});
			}
				if (regionsearch == "true") {
			var url = "client_findregioncomtainschar.action";
			var data = "region=" + $("#clregion").val()+"&page="+page;
			$.ajax( {
				type : "POST",
				url : url,
				data : data,
				dataType : "json",
				success : function(data) {

					clients = data.pageBean.list;
					page = data.pageBean;	
					currentpage = page.currentPage;
					fullallclient(clients);
					fullpage(page);
				},
				error : function() {
					alert("查询失败！");
				}
			});
			}
		
	} else {
	var data="page="+page
		$.ajax( {
			type : "POST",
			url : "client_findall.action",
			data : data,
			dataType : "json",
			success : function(data) {
				clients = data.pageBean.list;
				page = data.pageBean;
				currentpage = page.currentPage;
				fullallclient(clients);
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

}
function fullallclient(clients) {
	$("#clients #tbody tr").remove();
	for ( var index = 0; index < clients.length; index++) {
		var clientvo = clients[index];
		var tr = "<tr><td>" + clientvo.id + "</td><td>" + clientvo.name
				+ "</td><td>" + clientvo.web + "</td><td>" + clientvo.tel
				+ "</td><td>" + clientvo.chance + "</td><td>" + clientvo.fax
				+ "</td><td>"
				+ "<a class='buttonsmall'href='client_findbyid.action?cid="
				+ clientvo.id + "'>查看</a>" + "</td><td>"
				+ "<a style='position:relative;right:30px' class='buttonsmall' href='javascript:del(" + index
				+ ")'>删除</a></td></tr>";

		$("#clients #tbody").append(tr);
	}
}
$(document).ready(function() {
	changePage(1);
});
</script>