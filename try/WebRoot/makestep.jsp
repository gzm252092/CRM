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
	<body style="padding-left:100px;padding-top:40px;padding-right:100px;">
		<div id="loader">
			<img src="img/loader.gif" />
		</div>
<div class="page-header">
                    <div class="icon">
                        <span class="ico-chart-2"></span>
                    </div>
                    <h1 style="font-family: 'Segoe UI', arial, sans-serif;">推广计划 <small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>
                </div>

						<div class="plan">

							<table cellpadding="0" cellspacing="0" width="80%" style="font-size: 15px;" id="showplan">

								<tr >
									<td width="15%">
										计划编号
									</td>
									<td width="10%">
										${pid }
									</td>
									<td width="15%">
										名称

									</td>
									<td width="20%">
										${pvo }
									</td>
								</tr>
								<tr>
									<td width="15%">
										客户名称
									</td>
									<td width="10%">
										${pvo }
									</td>
									<td width="15%">
										描述

									</td>
									<td width="20%">
										${pvo }
									</td>
										
								</tr>
								<tr>
								    <td width="15%">
										创建人

									</td>
									<td width="20%">
										${pvo }
									</td>
									
									<td width="15%">
										状态
									</td>
									<td width="10%">
										${pvo }
									</td>

								</tr>
							</table>
						</div>


						<div class="row-fluid">
							<div class="span12">

								<div class="block">

									<div class="head purple">
										<h3 style="font-size:20px">
											&nbsp;&nbsp;制定步骤
										</h3>
										</div>
										<button class="newstep">
											增加步骤
										</button>
										<a href="#fModal" onclick="changetofinished()" role="button" class="btn" data-toggle="modal">
											完成计划
										</a>
										
									
									<form id="form">
									<div class="data-fluid">
										<table cellpadding="0" cellspacing="0" width="100%"
											class="table table-hover" id="addt">
											<thead>
												<tr>
													<th width="15%">
														日期
													</th>
													<th width="40%">
														实施
													</th>
													<th width="30%">
														执行效果

													</th>
													<th width="20%" colspan="2">
														操作
													</th>
												</tr>
											</thead>
											
											<tbody id="tbody">
												<!--  
												<tr>
													<td>
														201112145
													</td>
													<td>
														好久没规矩，汇款
													</td>
													<td>
                                                     <div>
                                                     <input id="result" type="text" name=""/>
                                                     </div>
													</td>
													<td>
                                                        <div class="personoperation">
														<span class="label label-green">反馈</span>
														</div>
													</td>
													<td>  <div class="personoperation">
														<span class="label label-green">删除</span>
														</div>
													</td>



												</tr>
												-->

											</tbody>
										</table>
									
										<a  class="btn" href="javascript:history.go(-1);">返回</a>
										
									</div>
									</form>
								</div>

							</div>
						</div>
					

<div id="fModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <form id="reform">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel">填写反馈信息</h3>
            </div>        
            <div class="row-fluid">
                <div class="block-fluid">
                    <div class="row-form">
                        <div class="span12">
                            <span class="top title">成功率:</span>
                            <input type="text" name="chance" value=""/>                        
                        </div>
                    </div>
                   
                             
                    <div class="row-form">
                        <div class="span12">
                            <span class="top title">反馈信息:</span>
                            <textarea name="feedback"></textarea>
                        </div>
                    </div>       
                </div>
            </div>                   
            <div class="modal-footer">
                <button class="buttonsmall" data-dismiss="modal" aria-hidden="true" onclick="saveFeedback()">保存</button> 
                <button class="buttonsmall" data-dismiss="modal" aria-hidden="true">取消</button>            
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
var sts;
var role;
function managerview(){    
    $(".newstep").hide();
    $(".fi").hide();
    $(".changeStatus").hide();
    $(".personoperation").hide();
 
}
function saveFeedback(){
var pid="<%=request.getParameter("pid")%>"; 
var data=$("#reform").serialize()+"&pid="+pid;
var url = "work_writeFeedback.action";
	$.ajax({
			type : "POST",
			url : url,
			data:data,
			dataType:"json"	,	
			success : function(data) {
		$.ajax({
			type : "POST",
			url : "step_findbyid.action",
			data:data,
			dataType:"json"	,	
			success : function(data) {
		
				fullplan(data.pvo);
				sts=data.steps;
				fullstep(sts);
			}
		});
		//	var tr = document.getElementById("showplan");    
		//	       alert(tr.cells[1].childNodes[0].value);         
		//	           tr.innerText = "已完成"; 
		//	document.getElementById("status").value = "已完成";
			      alert("反馈成功！");
			
			      
			},
			error:function(){
				alert("反馈失败！");
			}
			});

}
function fullplan(pvo){

      $(".plan table tr").remove();
      var tr="<tr><td width='15%'>计划编号</td><td width='10%'>"+pvo.id
		       +"</td><td width='15%'>名称</td><td width='20%'>"+pvo.name
			   +"</td></tr><tr><td width='15%'>客户名称</td><td width='10%'>"+pvo.clientname

				+"</td><td width='15%'>描述</td><td width='20%'>"+pvo.descr
				+"</td></tr><tr><td width='20%'>创建人</td><td width='20%'>"+pvo.creator
				+"</td><td width='15%' >状态</td><td width='10%'id='status'>"+pvo.status

				+"</td></tr>";
			$(".plan table").append(tr);	
}
function fullstep(steps){
     
       $("#addt #tbody tr").remove();
       	for( var index  =0 ;index <steps.length;index++  )
		{
		  var svo=steps[index];
	       var tr="<tr>"
			       +"<td >"+svo.time+"</td>"
			       +"<td>"+svo.content+"</td>"
			       +" <td id="+svo.id+">"+svo.result+"</td>"
			       +"<td ><div class='personoperation'><input type='button' class='buttonsmall' onclick='javascript:writeresult("+svo.id+",this)'value='反馈'id='res'></div></td>"
			       +"<td ><div class='personoperation ' ><input type='button' class='buttonsmall' onclick='javascript:upd("+index+",this)' value='保存'class='upd' "
			       +"visibility='hidden'></div></td>"
			       +"<td ><div class='personoperation'><input type='button'  class='buttonsmall' onclick='javascript:del("+index+")' value='删除' id='cal'></div></td>"
			       +"</tr>";
		   
		    $("#addt #tbody").append(tr);
		  
		      if(role=='manager'){
              managerview();
         }
			
		}
		  
}
function changetofinished(){
var pid="<%=request.getParameter("pid")%>"; 
var data="pid="+pid;
var url = "work_changtofinish.action";
	$.ajax({
			type : "POST",
			url : url,
			data:data,
			dataType:"json"	,	
			success : function(data) {
			      alert("成功！");
			},
			error:function(){
				alert("失败！");
			}
			});

}
function writeresult(id,o){

  var tr = o.parentNode.parentNode.parentNode;
 var sid="#"+id;
  var cells = new Array();
	cells = tr.cells;
	 $(cells[2]).html("<input type='text' name='svo.rssult' value="
					+ cells[2].innerHTML + ">");
	$(cells[3]).hide();
	 $(cells[4]).show();
	 
	 return ;
}
function upd(index,o){
	var tr = o.parentNode.parentNode.parentNode;
	 var cells = new Array();
	cells = tr.cells;
	var data="sid="+sts[index].id+"&result="+cells[2].childNodes[0].value;

		var url = "step_editresult.action";
		$.ajax({
			type : "POST",
			url : url,
			data:data,
			dataType:"json"	,	
			success : function(data) {
			alert("添加成功！");			   
				   fullstep(data.steps);
						
			},
			error:function(){
				alert("添加失败！");
			}
			});
			 return ;
}

function sav(o){
var tr = o.parentNode.parentNode;
 var cells = new Array();
	cells = tr.cells;
	if(cells[1].childNodes[0].value!="" && cells[0].childNodes[0].value!=""){
	var data = $("#form").serialize();
		var url = "step_save.action";
		$.ajax({
			type : "POST",
			url : url,
			data:data,
			dataType:"json"	,	
			success : function(data) {
			alert("插入成功！");	
					var svo = new Object;
				svo.id = data.sid;
				svo.time =cells[0].childNodes[0].value;
				svo.content=cells[1].childNodes[0].value;
				svo.result =cells[2].childNodes[0].value;
				//数组；
				sts[sts.length] = svo;   
				fullstep(sts);
				
						
			},
			error:function(){
				alert("插入失败！");
			}
			}); 
			}else{
			 alert("请至少填写日期和实施！");
			
			}
}

function del(index){
       var sid=sts[index].id;
       var data ="svo.id="+sid;
		var url = "step_del.action";
		$.ajax({
			type : "POST",
			url : url,
			data:data,
			dataType:"json"	,	
			success : function(data) {
			alert("删除成功！");			   
		   sts.remove(index);
			fullstep(sts);
			},
			error:function(){
				alert("删除失败！");
			}
			});
}

$(document).ready(function() {
        role="<%=request.getParameter("role")%>";
   
       var pid="<%=request.getParameter("pid")%>";  

       var data="pid="+pid;
        $("#read").hide();
         if(role=='manager'){
              managerview();
         }
         $.ajax({
			type : "POST",
			url : "step_findbyid.action",
			data:data,
			dataType:"json"	,	
			success : function(data) {
		
				fullplan(data.pvo);
				sts=data.steps;
				fullstep(sts);
			}
		});
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
