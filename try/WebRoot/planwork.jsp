<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>员工管理</title>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<link rel="icon" href="http://www.xiaomi.com/favicon.ico"
			type="image/x-icon">
		<link href="css/stylesheets.css" rel="stylesheet" type="text/css" />
	</head>

	<body style="padding-left:100px;padding-top:40px;padding-right:100px;">
		<div id="loader">
			<img src="img/loader.gif" />
		</div>
		<div class="page-header">
                    <div class="icon">
                        <span class="ico-chart-2"></span>
                    </div>
                    <h1 style="font-family: 'Segoe UI', arial, sans-serif;">我的任务 <small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>
       </div>
		
		
						<form id="form">
							<div class="head purple" style="margin-top:100px">
								<h3 style="font-size:20px">
									&nbsp;&nbsp;未分配计划
								</h3>
							</div>

							<table cellpadding="0" cellspacing="0" width="100%"
								class="table table-hover" id="unassigned">
								<thead style="font-size:14px;">
									<tr>
										<th width="10%">
											编号
										</th>
										<th width="10%">
											名称
										</th>
										<th width="10%">
											客户名称
										</th>
										<th width="15%">
											开始时间
										</th>
										<th width="15%">
											描述
										</th>
										<th width="10%">
											成功率
										</th>
										<th width="20%">
											分配者
										</th>
										<th width="15%">
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
									</tr>

								</tbody>
							</table>
							<div class="head purple">
								<h3 style="font-size:20px">
									&nbsp;&nbsp;未读计划
								</h3>
							</div>

							<table cellpadding="0" cellspacing="0" width="100%"
								class="table table-hover" id="unread">
								<thead>
									<tr>
										<th width="10%">
											编号
										</th>
										<th width="10%">
											名称
										</th>
										<th width="10%">
											客户名字
										</th>
										<th width="15%">
											开始时间
										</th>
										<th width="20%">
											描述
										</th>
										<th width="10%">
											几率
										</th>
										<th width="15%">
											分配人
										</th>
										<th width="15%">
											审核
										</th>
									</tr>
								</thead>
								<tbody id="tbody">
									<tr>
										<td>
											编号
										</td>
										<td>
											姓名
										</td>
										<td>
											角色
										</td>
									</tr>

								</tbody>
							</table>
						</form>
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

var unassigned;
var unread;
var persons;
var assid;
var opid;
function fullrole(lrvs, id) {

	for ( var index = 0; index < lrvs.length; index++) {
		var rvo = lrvs[index];
		var op = "<option    value='" + rvo.name + "' >" + rvo.name
				+ "</option> ";
		var assignid = "#" + id;
		$(assignid).append(op);
	}
}
function fullunassignplan(levs, man) {
	$("#unassigned #tbody tr").remove();
	for ( var index = 0; index < levs.length; index++) {
		var evo = levs[index];
		assid = "assign" + index + 1;
		var tr = " <tr><td>"
				+ evo.id
				+ "</td><td>"
				+ evo.name
				+ "</td>	<td>"
				+ evo.clientname
				+ "</td>	<td>"
				+ evo.stime
				+ "</td><td>"
				+ evo.descr
				+ "</td><td>"
				+ evo.chance
				+ "</td><td>"
				+ "<form class='form"+index+"'><select  cssStyle='height:20px' class='worker' name='worker"
				//+ evo.worker
				+ "' id="
				+ assid
				+ "></select></form>"
				+ "</td><td>"
				+

				"<a class='buttonsmall'  role='button' href='javascript:sav("
				+ index
				+ ")'>  分配 </a>  </td>	</tr>";

		$("#unassigned #tbody").append(tr);
		fullrole(man, assid);
	}
}

function sav(ndx) {


	var data = $(".form"+ndx).serialize()+"&pid=" + unassigned[ndx].id ;
	var url = "work_update.action";
	$.ajax( {
		type : "POST",
		url : url,
		data : data,
		dataType : "json",
		success : function(data) {
			alert("分配成功！");
			unassigned.remove(ndx);
			fullunassignplan(unassigned, persons);

		},
		error : function() {
			alert("分配失败！");
		}
	});
}

function fullunreadplan(unread) {
	$("#unread #tbody tr").remove();
	for ( var index = 0; index < unread.length; index++) {
		var pvo = unread[index];
		var tr = " <tr><td>"
				+ "<a href='makestep.jsp?pid="
				+ pvo.id
				+ "&role=manager '>"
				+ pvo.id
				+ "</a>"
				+ "</td><td>"
				+ pvo.name
				+ "</td>	<td>"
				+ pvo.clientname
				+ "</td>	<td>"
				+ pvo.stime
				+ "</td><td>"
				+ pvo.descr
				+ "</td><td>"
				+ pvo.chance
				+ "</td><td>"
				+ pvo.worker
				+ "</td>	<td>"
				+ "<a class='buttonsmall'  role='button' href='javascript:updstatus("
				+ index
				+ ")'>   审核 </a>  </td>	</tr>";

		$("#unread #tbody").append(tr);

	}
}

function updstatus(ndx) {
	var data = "pid=" + unread[ndx].id;
	var url = "work_updateread.action";
	$.ajax( {
		type : "POST",
		url : url,
		data : data,
		dataType : "json",
		success : function(data) {
			alert("审核成功！");
			unread.remove(ndx);
			fullunreadplan(unread);

		},
		error : function() {
			alert("审核失败！");
		}
	});
}
function listPlanWork(){

var rid='<%=request.getParameter("roid")%>';
var data="roid="+rid;
 $.ajax( {
		type : "POST",
		url : "work_listunreadplan.action",
		dataType : "json",
		data:data,
		success : function(data) {
			unread = data.unread;
			fullunreadplan(unread);
		}
	}); 

	$.ajax( {

		type : "POST",
		url : "work_listunassignedplan.action",
		dataType : "json",
		data:data,
		success : function(data) {

			unassigned = data.unassigned;
	
			 $.ajax( {
				type : "POST",
				url : "person_findrightperson.action",
				dataType : "json",
				success : function(data) {
			
					persons = data.lpvs;
		
					fullunassignplan(unassigned, persons);
					unassigned.length+unread.length
       
				},
				 error:function(){
				 alert("vvvvvvvv");
				
				} 
				
			});
			

		}
	});
}
$(document).ready(function() {
listPlanWork();
 //setInterval("listPlanWork()",10000);
 
});
Array.prototype.remove = function(dx) {
	if (isNaN(dx) || dx > this.length) {
		return false;
	}
	for ( var i = 0, n = 0; i < this.length; i++) {
		if (this[i] != this[dx]) {
			this[n++] = this[i];
		}
	}
	this.length -= 1;
};
</script>

