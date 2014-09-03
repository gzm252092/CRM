<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="java.net.*" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String cname="";
	if(request.getParameter("clientname")!=null){
		cname=URLDecoder.decode(request.getParameter("clientname"),"utf-8");
	}
%>

<!DOCTYPE HTML>
<html>
<head>

<title>添加计划</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/s.css">
<link href="css/stylesheets.css" rel="stylesheet" type="text/css" />
<style type="text/css">
input.error { border: 10px solid red; }
label.error {
  	background-position: 4px -253px; 
	font: 12px/1 verdana, simsun, sans-serif;   
	margin: 0;   
	padding: 4px 0px 4px 10px; 
  	font-weight: bold;
  	color: #F35858;
}
label.checked {
  background:url("./demo/images/checked.gif") no-repeat 0px 0px;
}
</style>
</head>

<body >

	<div id="loader">
		<img src="img/loader.gif" />
	</div>
	
	<div class="page-header" style="margin-top:40px;margin-left:100px">
                    <div class="icon">
                        <span class="ico-chart-2"></span>
                    </div>
                    <div id="titl"></div>
                </div>
	<div style="padding:100px 200px 0 200px ;">
					
					<div class="form">
						<form id="form">
							<table class="dt" width="500px;">
								<tr>
									<td align="center" width="20%"><label> 编号: </label></td>
									<td width="30%"><input type="text" readonly="readonly"/> <span id="planid"></span>
									</td>
									<td align="center" width="20%"><label> 创建人: <b>*</b></label></td>
									<td width="30%"><input type="text" name="pvo.creator"
										value="${ session.user}" readonly="readonly" /> <span
										id="creator"></span></td>
								</tr>
								<tr>
									<td align="center"><label> 概要: <b>*</b></label></td>
									<td colspan="3"><input type="text" name="pvo.name"  style="width:350px" id="mname" class="required"/> <span id="name"></span>
									</td>
									
								</tr>
								<tr >
									<td align="center" id="client"><label> 目标客户: <b>*</b></label></td>
									<td><input type="text"
										name="pvo.clientname" onblur="isClient()" id="mclient" class="required"/> <span id="clientname"></span></td>
										<td align="center" class="noservice"><label> 成功率: <b>*</b></label></td>
									<td class="noservice"><input type="text" name="pvo.chance" id="mchance" class="required digits" maxlength="2"/> <span
										id="chance"></span></td>
								</tr>
								<tr class="nopromote">
									<td align="center"><label> 联系人: </label></td>
									<td><select
										name="pvo.connector" onchange="tel()" id="mconnector"><option value="">--请选择--</option></select> <span id="connector"></span></td>
										<td align="center"><label> 联系电话: </label></td>
									<td><input type="text" name="pvo.tel" id="mtel" readonly="readonly"/> <span
										id="tel"></span></td>
								</tr>
								<tr height="108px">
									<td valign="top" align="center" id="des" class="required"><label> 描述: <b>*</b></label></td>
									<td colspan="3" valign="top"><textarea name="pvo.descr" class="required" id="mdescr"></textarea>
										<span id="descr"></span></td>
								</tr>
								<tr>
									<td align="center"><label> 开始时间: <b>*</b></label></td>
									<td><input id="d4311" class="Wdate required dateISO" type="text"
										onFocus="WdatePicker({minDate:'%y-%M-%d',maxDate:'#F{$dp.$D(\'d4312\')||\'2020-10-01\'}'})"
										name="pvo.stime"/> <span id="stime"></span></td>
									<td align="center"><label> 结束时间: </label></td>
									<td><input id="d4312" class="Wdate dateISO" type="text"
										onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}',maxDate:'2020-10-01'})"
										name="pvo.ftime"/> <span id="ftime"></span></td>
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
								href="tuiguang1.jsp"; style="display:none;">查询</a>
						</form>
					</div>
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
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/messages_cn.js"></script>
<script language="javascript" type="text/javascript"
	src="My97DatePicker/WdatePicker.js">
</script>
<script type="text/javascript">

var roleid='<%=request.getSession().getAttribute("roleid")%>';
var clientname='<%=cname %>';
var styleid;
$(document).ready(function() {
	 $("#form").validate({	 	
		onfocusout: function(element) { 
      		$(element).valid(); 
		},
		submitHandler:function(form) {
			show();
		}
	 });

var titl;
	if(roleid==1||roleid==2){
		titl="<h1 style='font-family: 'Segoe UI', arial, sans-serif;'>推广计划<small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>";
		$(".nopromote").hide();
		styleid=1;
	}else if(roleid==3||roleid==4){
		titl="<h1 style='font-family: 'Segoe UI', arial, sans-serif;'>销售计划<small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>";
		$("#client label").remove();
		var labl="<label>客户名称:<b>*</b></label>";
		$("#client").append(labl);
		styleid=2;
	}else if(roleid==5||roleid==6){
		titl="<h1 style='font-family: 'Segoe UI', arial, sans-serif;'>服务计划<small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>";
		$(".noservice").hide();
		$("#client label").remove();
		var labl="<label>客户名称:<b>*</b></label>";
		$("#client").append(labl);
		$("#des label").remove();
		var labl="<label>服务请求:<b>*</b></label>";
		$("#des").append(labl);
		styleid=3;
	}
	$("#titl").append(titl);
	if(clientname!=""){
		$("#mclient").val(clientname);
		isClient();
	}
});
	function show() {
	if( $("#form").valid() ){ 
		var data = $("#form").serialize() + "&pvo.styleid="+styleid+"&pvo.status=未分配";
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
				$("select").hide();
				$("textarea").hide();
				$("a").show();
				$("#planid").append(data.planid);
				$("#creator").append(data.pvo.creator);
				$("#name").append(data.pvo.name);
				$("#chance").append(data.pvo.chance);
				$("#clientname").append(data.pvo.clientname);
				$("#tel").append(data.pvo.tel);
				$("#connector").append(data.pvo.connector);
				$("#descr").append(data.pvo.descr);
				$("#stime").append(data.pvo.stime);
				$("#ftime").append(data.pvo.ftime);
			},
			error : function() {
				alert("插入失败！");
			}
		});
		}
	}
	
	function isClient(){
		var client=$("#mclient").val();
		var url="client_findByName.action";
		var data="name="+client;
		if($("#client label").html()=="客户名称:<b>*</b>"&&client!=""){		
			$.ajax({
				type : "POST",
				url : url,
				data : data,
				dataType : "json",
				success : function(data) {
						var linkman=data.cvo.linkmans;
						$("#mconnector option").remove();
						var opt="<option value=''>--请选择--</option>";
						$("select").append(opt);
						for ( var index = 0; index < linkman.length; index++) {
							var cvo = linkman[index];
							var op = "<option   value='" + cvo.name + "' class='"+cvo.tel+"' >" + cvo.name + "</option> ";
							$("select").append(op);
						}
				},
				error : function() {
					$("option").remove();
					var opt="<option value=''>--请选择--</option>";
					$("select").append(opt);
					$("#mtel").val("");
					alert("用户不存在");
					$("#mclient").val("");
				}
			});
		}
	}
	function tel(){
		var tel=$("#mconnector option:selected").attr("class");
		if(tel=="null"){
			tel="";
		}
		var connector=$("#mconnector").val();
		if(connector!=""){
			$("#mtel").val(tel);
		}else{
			$("#mtel").val("");
		}
	}
	
	
	
	
</script>
