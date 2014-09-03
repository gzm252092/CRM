<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.net.*"%>
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


		<style>
#tbody td {
	font-size: medium;
}

thead th {
	font-size: medium;
}
</style>

	</head>
	<body
		style="padding-left: 100px; padding-top: 40px; padding-right: 100px;">
		<div id="loader">
			<img src="img/loader.gif" />
		</div>

		<div class="block">

			<div class="page-header">
				<div class="icon">
					<span class="ico-chart-2"></span>
				</div>
				<h1 style="font-family: 'Segoe UI', arial, sans-serif;">
					订单管理
					<small>CUSTOMER RELATIONSHIP MANAGEMENT</small>
				</h1>
			</div>


			<div class="client">

				<a class="btn" href="javascript:history.go(-1);" id="getback">
					返回 </a>

				<table cellpadding="0" cellspacing="0" width="100%" id="clientinfo"
					style="margin-top: 20px; margin-bottom: 15px">
					<tr style="font-size: 20px">
						<td width="15%">
							客户编号
						</td>
						<td width="10%">
							<%=request.getParameter("cid")%>
						</td>
						<td width="20%">
							客户名称

						</td>
						<td width="20%">
						<%
						String clientname="";
	if(request.getParameter("cname")!=null){
	clientname=request.getParameter("cname");
		clientname= new String(clientname.getBytes("ISO-8859-1"),"utf-8"); 
	} %>
							<%=clientname %>
						</td>
					</tr>
				</table>
			</div>


			<div class="row-fluid">
				<div class="span12">

					<div id="hisorder" class="head purple">
						<h3>
							&nbsp;&nbsp;&nbsp;历史订单
						</h3>

					</div>

					<div id="search">

						<table
							style="font-size: 18px; margin-top: 20px; margin-bottom: 20px;">
							<tr>
								<td>
									年份：


									<select name="year" id="year">

									</select>
								</td>
								<td>
									月份：
									<select name="month" id="month">
										<option value="">

										</option>
										<option value="01">
											01
										</option>
										<option value="02">
											02
										</option>
										<option value="03">
											03
										</option>
										<option value="04">
											04
										</option>
										<option value="05">
											05
										</option>
										<option value="06">
											06
										</option>
										<option value="07">
											07
										</option>
										<option value="08">
											08
										</option>
										<option value="09">
											09
										</option>
										<option value="10">
											10
										</option>
										<option value="44">
											11
										</option>
										<option value="12">
											12
										</option>
									</select>

								</td>
								<td>
									天数：
									<input type="text" name="day" id="day" />
								</td>
								<td>
									<button style="position: relative; top: 11px;" class="btn"
										onclick="searchbytime()">
										查询
									</button>
								</td>
							</tr>

						</table>

					</div>
					<div class="data-fluid">
						<table cellpadding="0" cellspacing="0" width="100%"
							class="table table-hover" id="orders">
							<thead>
								<tr>
									<th width="15%">
										订单编号
									</th>
									<th></th>
									<th width="20%">
										下单时期
									</th>
									<th width="20%">
										送货地址

									</th>


									<th width="30%">
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
								</tr>
								<tr class="showit">
									<td colspan="7">

										<table cellpadding="0" cellspacing="0" width="100%"
											class="text">
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


												</tr>
												<tr>
													<td>
														总金额：
													</td>
												</tr>
											</tbody>
										</table>
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
var ors;
var page;
var currentpage;
var search;
var time;
var orderyears;
function fulldeatils(detail, ndex) {
	var position = "#text" + ndex + " #tbody ";
	$(position + " tr").remove();
	var total = 0;
	for ( var index = 0; index < detail.length; index++) {
		var provo = detail[index];
		var eachtotal = provo.quantity * provo.pvo.price;
		var tr = "<tr><td>" + provo.pvo.name + "</td><td>" + provo.quantity
				+ "</td><td>" + provo.pvo.unit + "</td><td>" + provo.pvo.price
				+ "</td><td>" + eachtotal + "</td></tr>";
		total += eachtotal;
		$(position).append(tr);
	}
	var result = "<tr><td></td><td></td><td></td><td >总金额：" + total
			+ "</td></tr>";
	$(position).append(result);

}

function fullorders(orders) {

	$("#orders #tbody tr").remove();
	for ( var index = 0; index < orders.length; index++) {
		var orvo = orders[index];

		var tr = "<tr><td><div class='data-fluid faq'><div class='item' id='faq-1'><a class='title' href='javascript:showdetails("
				+ index
				+ ")'>"
				+ orvo.id
				+ "</a></div></div></td><td></td><td>"
				+ orvo.time
				+ "</td><td>"
				+ orvo.address
				+ "</td><td>"
				+ "<a class='buttonsmall' href='javascript:del("
				+ index
				+ ")'>删除</a></td></tr>"
				+ "<tr class='showit'><td colspan='7'>"
				+ "<table cellpadding='0' cellspacing='0' width='100%' class='text' id='text"
				+ index
				+ "' ><thead>"
				+ "<tr><th width='15%'>商品</th><th width='10%'>数量</th>"
				+ "<th width='20%'>单位</th><th width='20%'>单价（元）</th>"
				+ "<th width='25%'>金额（元）</th></tr></thead><tbody id='tbody'>"
				+ "</tbody></table></td></tr>";

		$("#orders #tbody").append(tr);
	}

}
function showdetails(index) {

	var text = "#text" + index;
	var data = "id=" + ors[index].id;
	if ($(text).is(':visible')) {
		$(text).fadeOut();
	} else {
		$.ajax( {
			type : "POST",
			url : "proOrdr_findProductsByOrdrid.action",
			dataType : "json",
			data : data,
			success : function(data) {
				fulldeatils(data.pros, index);
				$(text).fadeIn();

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
function searchbytime() {
	if ($("#year").val() == "" & $("#month").val() == ""
			& $("#day").val() == "")
		alert("请输入数据！");
	else {
		search = "true";
		if ($("#month").val() == "" & $("#day").val() == "") {
			time = $("#year").val() + "-";
		}

		else
			time = $("#year").val() + "-" + $("#month").val() + "-"
					+ $("#day").val();
		changePage(1);
	}

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

	var cid
=<%=request.getParameter("cid")%>;
 
   if(cid!=null){
   var data="clientid="+cid+"&page="+page;
$.ajax( {
		type : "POST",
		url : "orders_find.action",
		data : data,
		dataType : "json",
		success : function(data) {
				ors=data.pageBean.list;
				 fullorders(ors);
			page = data.pageBean;
			currentpage=page.currentPage;
			fullpage(page);
			 if((".text").length > 0){ 	
			        $(".text").hide();
			   }; 
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(XMLHttpRequest.responseText);
			alert(textStatus);
		}
	});
	}
	else{

	if(search=="true"){
	alert
		var data="page="+page+"&time="+time;
	$.ajax( {
		type : "POST",
		url : "orders_searchbytime.action",
		data : data,
		dataType : "json",
		success : function(data) {
				ors=data.pageBean.list;
				 fullorders(ors);
			page = data.pageBean;
			currentpage=page.currentPage;
			fullpage(page);
			 if((".text").length > 0){ 	
			        $(".text").hide();
			   }; 
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(XMLHttpRequest.responseText);
			alert(textStatus);
		}
	});
	 
	}else{
		var data="page="+page;
	  $.ajax( {
		type : "POST",
		url : "orders_findall.action",
		data : data,
		dataType : "json",
		success : function(data) {
				ors=data.pageBean.list;
				 fullorders(ors);
			page = data.pageBean;
			currentpage=page.currentPage;
			fullpage(page);
			 if((".text").length > 0){ 	
			        $(".text").hide();
			   }; 
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

}
function fullyears(lrvs ) {
	for ( var index = 0; index < lrvs.length; index++) {
		var op = "<option   value='" + lrvs[index]+ "' >" + lrvs[index]
				+ "</option> ";
		$("#year").append(op);
	}
}
function del(index) {
	var oid = ors[index].id;

	var data = "oid=" + oid;
	var url = "orders_del.action";
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
$(document).ready(function() {

    var cid=<%=request.getParameter("cid")%>;
  
     $("#search").hide();
	if(cid==null){
	    $("#clientinfo").hide();
	     $("#search").show();
	     $("#getback").hide();
	      $("#hisorder").hide();
	     
	     	$.ajax( {
				type : "POST",
				url : "orders_getOrderYears.action",
				dataType : "json",
				success : function(data) {
				
					orderyears = data.years;
					fullyears(orderyears ) ;

				}
			});
	}
changePage(1);
});
Array.prototype.remove = function (dx) {  
   if (isNaN(dx) || dx > this.length) {  
      return false;  
   }  
  for (var i = 0, n = 0; i < this.length; i++) {  
     if (this[i] != this[dx]) {  
          this[n++] = this[i];  
       }  
  }  
   this.length -= 1;  
}; 
</script>