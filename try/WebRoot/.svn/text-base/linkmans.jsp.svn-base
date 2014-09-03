<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

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
    
    <style type="text/css">
    button1, html input[type="button"], input[type="reset"], input[type="submit"] {
cursor: pointer;
-webkit-appearance: button;
background:transparent
}
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
                    <h1 style="font-family: 'Segoe UI', arial, sans-serif;">客户管理 <small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>
                </div>
		
						<form action="linkmans_add.action" id="myform" method="post">
							<div class="client">

                        <a class="btn newlinkman"><span class="icon-th icon-white"></span>
									新建 </a>

								<a class="btn"  href="javascript:history.go(-1);"> 
								 返回 </a>

								
								<table style="margin-top:25px">
									<tr style="font-size:18px;">
										<th width="15%">
											客户编号
										</th>
										<th width="10%" >
											<div id="checkcid">${cid}</div>
										</th>
										<th width="20%">
											客户名称
										</th>
										<th width="20%">
											${cname}
											
										</th>
									</tr>
								</table>
							</div>


							<div class="row-fluid">
								<div class="span12">

									<div class="block">

										<div class="head purple">

											<h3>
												&nbsp;&nbsp;&nbsp;&nbsp;联系人
											</h3>

										</div>
										<div class="data-fluid">
											<table cellpadding="0" cellspacing="0" width="100%"
												class="table table-hover" id="addlink">
												<thead>
													<tr>
														<th width="15%">
															姓名
														</th>
														<th width="10%">
															性别
														</th>
														<th width="20%">
															职位

														</th>

														<th width="20%">
															手机
														</th>
														<th width="25%">
															备注
														</th>
														<th width="30%" colspan="3">
															操作
														</th>
													</tr>
												</thead>
												<tbody>
													<s:iterator value="links" var="each" status="i">
														<tr>
															<td id="t1${each.id }">
											
																${each.name }
															</td>
															<td id="t2${each.id }">
																${each.gender }
															</td>
															<td id="t3${each.id }">
																${each.position }
															</td>
															<td id="t4${each.id }">
																${each.tel }
															</td>
															<td id="t5${each.id }">
																${each.memo }
															</td>
															<td>
																<input type="button" class="buttonsmall" id="conform${each.id }"
																	onclick="sa()" value="更新"  style="display:none" />

															</td>
					
															<td>

																<input type="button" class="buttonsmall" id="edit${each.id }"
																	onclick="upd(${each.id },this)" value="编辑" />


															</td>
															<td>
																<span class="buttonsmall" id="del${each.id }"> <a
																	href="linkmans_del.action?linkmanid=${each.id }">删除</a>
																</span>
															</td>
														</tr>



													</s:iterator>
												</tbody>
											</table>
										</div>
									</div>

								</div>
							</div>
						</form>
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
<script type="text/javascript" charset="UTF-8">
var linkid;

function upd(id,o) {

	linkid = id;

	$("#com").show();

	var tr = o.parentNode.parentNode;
	var cells = new Array();
	cells = tr.cells;
	$("#t1"+id).html(
			
		"<input type='hidden' name='linkman.id' value=" + linkid + ">"+
		
         "<input type='text' name='linkman.name' value="
					+ cells[0].innerHTML + ">");
	$("#t2"+id).html(
			"<input type='text' name='linkman.gender' value="
					+ cells[1].innerHTML + ">");
	$("#t3"+id).html(
			"<input type='text' name='linkman.position' value="
					+ cells[2].innerHTML + ">");
	$("#t4"+id).html(
			"<input type='text' name='linkman.tel' value=" + cells[3].innerHTML
					+ ">");
	$("#t5"+id).html(
			"<input type='text' name='linkman.memo' value="
					+ cells[4].innerHTML + ">");
    
	$("#del"+id).hide();
	$("#edit"+id).hide();
	var com=document.getElementById("conform"+id);
	com.style.display   =   "block"; 
	return;
}
function sa() {
	document.forms.myform.action = "linkmans_edit.action";
	document.forms.myform.submit();

}

function addlink(o) {
    var tr = o.parentNode.parentNode;
    
 var items = new Array();
	items = tr.cells;
	
	if(items[0].childNodes[0].value!=""){
	document.forms.myform.submit();
	}
	else{
	 alert("请输入联系人姓名");
	}
	return ;
      // $("#com").hide();
}

</script>
