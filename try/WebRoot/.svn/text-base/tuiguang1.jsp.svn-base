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
	width: 40px;
	background:transparent;
	outline:none;
}

.buttonsmall:hover {
	color: #fff;
	border-color: rgba(243, 88, 88, 0.5);
	/*background-color:rgba(243,88,88,0.5);*/
	background-color: #f35858;
	border: solid 1px #fff;
}
.buttonsmall:active {
	color: #fff;
	border-color: rgba(243, 88, 88, 0.5);
	/*background-color:rgba(243,88,88,0.5);*/
	background-color: #f35858;
	border: solid 1px #fff;
}



</style>
    

	</head>

	<body style="padding-left:100px;padding-top:40px;padding-right:100px;overflow-y:auto">


		<div id="loader">
			<img src="img/loader.gif" />
		</div>
		
		
		<div class="page-header">
                    <div class="icon">
                        <span class="ico-chart-2"></span>
                    </div>
                    <div id="titl"></div>
                </div>
		
						<div class="row-fluid">
							<div class="span12">

								<div class="block">

								
									<div class="data-fluid">
										<a type="button" class="btn" href="tuiguang.jsp"><span	class="icon-th icon-white"></span>添加计划</a>
										<input type="button" class="btn " value="所有计划"
											onclick="changePage(1,0)" id="allplan" />
										<input type="button" class="btn" value="已指派计划"
											onclick="changePage(1,1)" id="assigned" />
										<input type="button" class="btn" value="未指派计划"
											onclick="changePage(1,2)" id="unassigned" />
										<input type="button" class="btn" value="高成功率客户"
															onclick="highclient()" id="highclt" />
										<div class="row-form" style="padding-left:70%;height:40px;">
											<div class="span9" >
												<div class="input-append" style="width:257px;position:relative;bottom:10px;">
												<form id="qform">
													<input id="pinput" style="width:350px;" type="text" name="query" value="--请输入计划名称--" onclick="this.value=''" onblur="if(this.value=='')this.value='--请输入计划名称--'"/>
													<button class="btn" type="button" onclick="query1()">
														查 询
													</button>
												</form>
												<form id="pform" style="width:150px;">
													<select id="pselect" name="query"><option value="">--请选择人员--</option></select>
													<button class="btn" type="button" onclick="query2()">
													查 询
													</button>
												</form>
												</div>
											</div>
										</div>
										<table cellpadding="1" cellspacing="0" width="100%"
											class="table table-hover" id="plan">
											<thead>
												<tr>
													<th width="20%">
														计划名称
													</th>
													<th width="10%">
														创建人
													</th>
													<th width="10%">
														状态

													</th>
													<th width="15%">
														创建时间
													</th>

													<th width="15%">
														指派给
													</th>

													<th width="30%" colspan="2">
														操作
													</th>
												</tr>
											</thead>

											<tbody id="tbody">
												<tr>
													<td>
														
													</td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td>
													
													</td>
												</tr>
												<tr class="showit">
													<td colspan="7">
														<span class="text">asawwrwr</span>
													</td>
												</tr>
											</tbody>

										</table>
										<table cellpadding="1" cellspacing="0" width="100%"
											class="table table-hover" id="hclient">
											<thead>
												<tr>
													<th width="10%"></th>
													<th width="10%">
														编号
													</th>
													<th width="15%">
														名称
													</th>
													<th width="10%">
														地区

													</th>
													<th width="20%">
														地址
													</th>
													<th width="10%">
														成功率
													</th>
													<th width="25%">
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
													<td></td>
												</tr>


											</tbody>
										</table>
										<!-- Bootrstrap modal form -->
										<div id="fModal" class="modal hide fade" tabindex="-1"
											role="dialog" aria-labelledby="myModalLabel"
											aria-hidden="true">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">
													×
												</button>
												<h3 id="myModalLabel">
													修改计划
												</h3>
											</div>
											<div class="row-fluid">
												<div class="block-fluid">
													<div class="row-form">
														<form id="modform">

															<table class="dt" width="500px;">
																<tr>
																	<td align="center" width="20%">
																		<label>
																			编号:
																		</label>
																	</td>
																	<td width="30%">
																		<input type="text" id="mid" readonly="readonly"
																			name="pvo.id" />
																	</td>
																	<td align="center" width="20%">
																		<label>
																			创建人:
																		</label>
																	</td>
																	<td width="30%">
																		<input type="text" name="pvo.creator" id="mcreator"
																			readonly="readonly" />
																	</td>
																</tr>
																<tr>
																	<td align="center">
																		<label>
																			概要:
																		</label>
																	</td>
																	<td colspan="3">
																		<input type="text" name="pvo.name"
																			style="width: 350px" id="mname" />
																	</td>

																</tr>
																<tr class="noservice">
																	<td align="center" class="client">
																		<label>
																			目标客户:
																		</label>
																	</td>
																	<td>
																		<input type="text" name="pvo.clientname"
																			id="mclientname" />
																	</td>
																	<td align="center">
																		<label>
																			成功率:
																		</label>
																	</td>
																	<td>
																		<input type="text" name="pvo.chance" id="mchance" />
																	</td>
																</tr>
																<tr class="nopromote">
																	<td align="center">
																		<label>
																			联系人:
																		</label>
																	</td>
																	<td>
																		<input type="text" name="pvo.connector" id="mconnector" />
																	</td>
																	<td align="center">
																		<label>
																			联系电话:
																		</label>
																	</td>
																	<td>
																		<input type="text" name="pvo.tel" id="mtel" />
																	</td>
																</tr>
																<tr height="108px">
																	<td valign="top" align="center" class="des">
																		<label>
																			描述:
																		</label>
																	</td>
																	<td colspan="3" valign="top">
																		<textarea name="pvo.descr" id="mdescr"></textarea>
																	</td>
																</tr>
																<tr>
																	<td align="center">
																		<label>
																			开始时间:
																		</label>
																	</td>
																	<td>
																		<input id="d4311" class="Wdate" type="text"
																			onFocus="WdatePicker({minDate:'%y-%M-%d',maxDate:'#F{$dp.$D(\'d4312\')||\'2020-10-01\'}'})"
																			name="pvo.stime" />
																	</td>
																	<td align="center">
																		<label>
																			结束时间:
																		</label>
																	</td>
																	<td>
																		<input id="d4312" class="Wdate" type="text"
																			onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}',maxDate:'2020-10-01'})"
																			name="pvo.ftime" />
																	</td>
																</tr>
															</table>
															<input name="pvo.styleid" id="mstyleid" style="display:none;"/>
															<input name="pvo.status" id="mstatus" style="display:none;"/>
															<input name="pvo.read" id="mread" style="display:none;"/>
														</form>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button class="btn" data-dismiss="modal"
													aria-hidden="true" onclick="upd()">
													保存
												</button>
												<button class="btn" data-dismiss="modal"
													aria-hidden="true">
													取消
												</button>
											</div>
										</div>

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

var planid;
var lpvs;
var page;
var planlist;
var index;
var currentPage;
var plantype;
var roleid='<%=request.getSession().getAttribute("roleid")%>';
var role="manager";
$(document).ready(function() {	
	$("#highclt").hide();
	$("#hclient").hide();	
	getPerson();
	changePage(1,0);
	//setInterval(getPerson, 1000*100);
	if(roleid==2||roleid==4||roleid==6){
		$("#assigned").hide();
		$("#unassigned").hide();
		$("#pform").hide();
		role="person";
		//$(".confirm").hide();
		//$("select").hide();
	}
	var titl;
	if(roleid==1||roleid==2){
		titl="<h1 style='font-family: 'Segoe UI', arial, sans-serif;'>推广计划<small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>";
		$(".nopromote").hide();
		styleid=1;
	}else if(roleid==3||roleid==4){
		titl="<h1 style='font-family: 'Segoe UI', arial, sans-serif;'>销售计划 <small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>";
		$(".client label").remove();
		$("#highclt").show();
		var labl="<label>客户名称:</label>";
		$(".client").append(labl);
		styleid=2;
	}else if(roleid==5||roleid==6){
		titl="<h1 style='font-family: 'Segoe UI', arial, sans-serif;'>服务计划<small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>";
		$(".noservice").hide();
		$(".des label").remove();
		var labl="<label>服务请求:</label>";
		$(".des").append(labl);
		styleid=3;
	}
	$("#titl").append(titl);
});

function getPerson(){
	$("#pselect option").remove();
	$("#pselect").append("<option value=''>--请选择人员--</option>");
	$(".worker option").remove();
	$(".worker").append("<option value=''>--请选择--</option>");
	$.ajax( {
		type : "POST",
		url : "person_findrightperson.action",
		dataType : "json",
		async: false ,
		success : function(data) {
			lpvs = data.lpvs;
			for ( var index = 0; index < lpvs.length; index++) {
			var pvo = lpvs[index];
			var op = "<option   value='" + pvo.name + "' >" + pvo.name + "</option> ";
			$("#pselect").append(op);
			$(".worker").append(op);
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(XMLHttpRequest.responseText);
			alert(textStatus);
		}
	});
	return lpvs;
}
function fullplan(planlist, lpvs) {
	$(".page").show();
	$("#hclient").hide();
	$("#plan").show();	
	$("#plan #tbody tr").remove();
for ( var index = 0; index < planlist.length; index++) {
		var plan=planlist[index];
		if(plan.ftime==null){
			plan.ftime="";
		}
		if(plan.connector==null){
			plan.connector="";
		}
		if(plan.tel==null){
			plan.tel="";
		}
		var tr;
		if(plan.status=="未分配"){
		tr="<tr><td><div class='data-fluid faq'>"
			+"<div class='item' id='faq-1'><div class='title'>"
			+plan.name
			+"</div></div></div></td><td>"
			+plan.creator
			+"</td><td id='status"+index+"'><span>"
			+plan.status
			+"</span></td><td>"
			+plan.stime
			+"</td><td><form class='form"+index+"'><select name='pvo.worker' class='worker' id='worker"+index+"'>"
			+"<option value=''>--请选择--</option>"
			+"</select></form>"
			+"</td><td id='button"+index+"'><span>"
			+"<button class='buttonsmall confirm' onclick='updWorker("+index+")'>"
			+"确认</button>"+"&nbsp;&nbsp;"
			+"<a href='#fModal' role='button' data-toggle='modal'><button class='buttonsmall' onclick='sel("+index+")'>"
			+"编辑</button></a>"+"&nbsp;&nbsp;"
			+"<button class='buttonsmall' onclick='del("+index+")'>"
			+"删除</button><span>"
			+"</td></tr>";		
		
		}else{
			tr="<tr><td><div class='data-fluid faq'>"
			+"<div class='item' id='faq-1'><div class='title'>"
			+plan.name
			+"</div></div></div></td><td>"
			+plan.creator
			+"</td><td>"
			+plan.status
			+"</td><td>"
			+plan.stime
			+"</td><td>"
			+plan.worker
			+"</td><td>"
			+"<a class='buttonsmall checkstep' style='width:65px;' href='makestep.jsp?pid="+plan.id+"&role="+role+"'>"
			+"查看步骤</a>"
			+"</td></tr>";	
		}
		tr=tr+"<tr class='showit'><td colspan='7'>"
		+"<table class='text'><tr><td><label>编号</label>"
		+"</td><td><input type='text' disabled='disabled' value='"+plan.id+"' />"
		+"</td><td><label>创建人:</label></td>"
		+"<td><input type='text' disabled='disabled' value='"+plan.creator+"'/>"
		+"</td></tr><tr><td><label>概要:</label></td>"
		+"<td colspan='3'><input type='text' disabled='disabled' value='"+plan.name+"'/>"
		+"</td></tr><tr class='noservice'><td class='client'><label>目标客户:</label></td>"
		+"<td><input type='text' disabled='disabled' value='"+plan.clientname+"'/>"
		+"</td><td><label>成功率:</label></td>"
		+"<td><input type='text' disabled='disabled' value='"+plan.chance+"'/>"
		+"</td></tr><tr class='nopromote'><td><label> 联系人: </label></td>"
		+"<td><input type='text' disabled='disabled' value='"+plan.connector+"' />"
		+"</td><td><label> 联系电话: </label></td>"
		+"<td><input type='text' disabled='disabled' value='"+plan.tel+"' />"
		+" </td></tr><tr><td valign='top' class='des'><label>描述:</label></td>"
		+"<td colspan='3'><textarea disabled='disabled'>"+plan.descr+"</textarea>"
		+"</td></tr><tr><td><label>开始时间:</label></td>"
		+"<td><input type='text' disabled='disabled' value='"+plan.stime+"'/>"
		+"</td><td><label>结束时间:</label></td>"
		+"<td><input type='text' disabled='disabled' value='"+plan.ftime+"'/>"
		+"</td></tr></table></td></tr>";
		$("#plan #tbody").append(tr);
		if(roleid==2||roleid==4||roleid==6){
			$(".confirm").hide();
			$("select").hide();
		}
		if(roleid==1||roleid==2){
		$(".nopromote").hide();
	}else if(roleid==3||roleid==4){
		$(".client label").remove();
		var labl="<label>客户名称:</label>";
		$(".client").append(labl);
	}else if(roleid==5||roleid==6){
		$(".noservice").hide();
		$(".des label").remove();
		var labl="<label>服务请求:</label>";
		$(".des").append(labl);
	}
	}
	for ( var index = 0; index < lpvs.length; index++) {
		var pvo = lpvs[index];
		var op = "<option   value='" + pvo.name + "' >" + pvo.name + "</option> ";
		$(".worker").append(op);
	}
}

function fullpage(page) {
$(".page #pageheader").remove();
	var isfirstpage = page.currentPage == 1;
	var islastpage = page.currentPage == page.totalPage;
	var nextpage=page.currentPage + 1;
	var prepage=page.currentPage - 1;
	currentPage=page.currentPage;
	var p = "<div id='pageheader'>共" + page.allRow + " 条记录&nbsp;&nbsp;&nbsp; 共" + page.totalPage
			+ "页&nbsp;&nbsp; 当前第" + page.currentPage + " 页 &nbsp;&nbsp;";
	if(page.totalPage==0){
		p += "第一页 上一页下一页 最后一页</div>";
	}else{
		if (isfirstpage)
			p += "第一页 上一页";
		else
			p += "<a href='javascript:changePage(1,"+plantype+")'>第一页</a>"
					+ "<a href='javascript:changePage(" + prepage+","+plantype
					+ ")'>上一页</a>";
		if (islastpage)
			p += "下一页 最后一页</div>";
		else
			p += "<a href='javascript:changePage(" + nextpage+","+plantype
					+ ")'>下一页</a>" + "<a href='javascript:changePage("
					+ page.totalPage+","+plantype + ")'>最后一页</a></div>";
		}
	$(".page ").append(p);

}
function changePage(page,type){
	var data;
	plantype=type;
	var url;
	if(plantype==0){
	 	data="page="+page;
		url="plan_list.action";
	}else if(plantype==1){
		url="plan_listByStatus.action";
		data="page="+page+"&status='已分配'";
	}else if(plantype==2){
		url="plan_listByStatus.action";
		data="page="+page+"&status='未分配'";
	}else if(plantype==3){
		url="plan_find.action";
		data=$("#qform").serialize()+"&page="+page;
	}else if(plantype==4){
		url="plan_findByName.action";
		data=$("#pform").serialize()+"&page="+page;
	}
		$.ajax( {
		type : "POST",
		url : url,
		data : data,
		dataType : "json",
		success : function(data) {
			planlist = data.pageBean.list;
			page = data.pageBean;
			fullpage(page);
			/*$.ajax( {
				type : "POST",
				url : "person_findrightperson.action",
				dataType : "json",
				async: false ,
				success : function(data) {
				lpvs = data.lpvs;*/
				fullplan(planlist,lpvs);
				$(".faq .item .title").click(function(){
			        var text = $(this).parent().parent().parent().parent().next().find('.text');
			        if(text.is(':visible')){ 
			            text.fadeOut();
			            }
			        else{
			            text.fadeIn();      
			            }          
			  });
			 if((".text").length > 0){ 	
			        $(".text").hide();
			   };
				/*},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert(XMLHttpRequest.status);
					alert(XMLHttpRequest.readyState);
					alert(XMLHttpRequest.responseText);
					alert(textStatus);
				}
			});*/
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});	
}
	
function del(ndex) {
	index=ndex;
	planid = planlist[index].id;
	var data = "pvo.id=" + planid;
	$.ajax( {
		type : "POST",
		url : "plan_del.action",
		data : data,
		dataType : "json",
		success : function(data) {
			alert(data.result);
			if ("操作成功" == data.result) {
				changePage(currentPage,plantype);
			}
		},
		error : function() {
			alert("操作失败");
		}
	});
}

function updWorker(ndex) {
	index = ndex;
	if($("#worker"+index).val()!=""){
	var pvo=planlist[index];
	var data =$(".form"+index).serialize()+"&pvo.status=已分配"+"&pvo.id="+pvo.id;
	$.ajax( {
		type : "POST",
		url : "plan_updWorker.action",
		data : data,
		dataType : "json",
		success : function(data) {
			if ("操作成功" == data.result) {				
				var worker="<span>"+$("#worker"+index).val()+"</span>";
				var status="<span>已分配</span>";
				$("#worker"+index).remove();
				$("#button"+index+" span").remove();
				$("#status"+index+" span").remove();
				$("#status"+index).append(status);
				$(".form"+index).append(worker);
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	}else{
		alert("请指派人员");
	}
}
function sel(ndex){
	index = ndex;
	var pvo=planlist[index];
	$("#mdescr").html("");
	$("#mid").val(pvo.id);
	$("#mcreator").val(pvo.creator);
	$("#mname").val(pvo.name);
	$("#mclientname").val(pvo.clientname);
	$("#mdescr").html(pvo.descr);
	$("#mchance").val(pvo.chance);
	$("#d4311").val(pvo.stime);
	$("#d4312").val(pvo.ftime);
	$("#mtel").val(pvo.tel);
	$("#mconnector").val(pvo.connector);
	$("#mstyleid").val(pvo.styleid);
	$("#mread").val(pvo.read);
	$("#mstatus").val(pvo.status);
}
function upd(){
	var data =$("#modform").serialize();
	alert(data);
	$.ajax( {
		type : "POST",
		url : "plan_upd.action",
		data : data,
		dataType : "json",
		success : function(data) {
			if ("操作成功" == data.result) {				
				alert("修改成功");
				changePage(currentPage,plantype);
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
}

function highclient(){
	$(".page").hide();
	$("#plan").hide();
	$("#hclient").show();
	$.ajax( {
			type : "POST",
			url : "client_findHighClient.action",
			dataType : "json",
			success : function(data) {
				clients = data.hcs;
				fullallclient(clients);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				alert(XMLHttpRequest.status);
				alert(XMLHttpRequest.readyState);
				alert(XMLHttpRequest.responseText);
				alert(textStatus);
			}
		});
		
}
function fullallclient(clients) {
	$("#hclient #tbody tr").remove();
	for ( var index = 0; index < clients.length; index++) {
		var clientvo = clients[index];
		var pi=index+1;
		var tr = "<tr><td><span class='ctop'>TOP"+pi+"<span></td><td>"
				+ clientvo.id
				+ "</td><td>"
				+ clientvo.name
				+ "</td><td>"
				+ clientvo.region
				+ "</td><td>"
				+ clientvo.address
				+ "</td><td>"
				+ clientvo.chance
				+ "</td><td>"
				+ "<a class='buttonmedium' href='tuiguang.jsp?clientname="+encodeURI(encodeURI(clientvo.name))+"'>制订销售计划</a>"
				+ "</td></tr>";
		$("#hclient #tbody").append(tr);
		if(pi<4){
			$(".ctop").css({"color":"red","font":"bold"});
		}
	}
}

function query1(){
if($("#pinput").val()=="--请输入计划名称--"||$("#pinput").val()==""){
		alert("未输入");
	}else{
		changePage(1,3);		
	}
}

function query2(){
if($("#pselect").val()!=""){
	changePage(1,4);
	}else{
		alert("未选择");
	}
}
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
