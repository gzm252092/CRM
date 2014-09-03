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


	</head>

	<body style="padding-left:100px;padding-top:40px;padding-right:100px;">
	<a href="#fModal" role="button" data-toggle="modal"><button
				 onclick="setOrder()"  class="button">
				生成订单</button> </a>
		<header class="major" id="promote"></header>
		 <!-- Bootrstrap modal form -->
			<div id="fModal" class="modal hide fade" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						关闭
					</button>
					<h3 id="myModalLabel">
						确认订单
					</h3>
				</div>
				<div class="row-fluid">
					<div class="block-fluid">
						<div class="row-form">
							<form id="orform">
								<table class="dt" width="500px;">
									<thead>
										<tr>
											<td>
												名称
											</td>
											<td>
												价格
											</td>
											<td>
												数量
											</td>
										</tr>

									</thead>
									<tbody id="tbody1">
										<tr><td>啊啊啊啊啊</td></tr>
									</tbody>
								</table>
								
							</form>
							<form id="clform">
							收货地址<input type="text" name="ordr.address"/>
							</form>
							<div class="modal-footer">
							<button class="btn btn-primary" data-dismiss="modal"
													aria-hidden="true">
													下一步
												</button>
												<button class="btn btn-primary" data-dismiss="modal"
													aria-hidden="true" onclick="upd()">
													保存
												</button>
												<button class="btn btn-warning" data-dismiss="modal"
													aria-hidden="true">
													取消
												</button>
											</div>
						</div>
						</div>
						</div>
						</div>
	</body>

</html>
<script type='text/javascript' src='js/plugins/jquery/jquery-1.9.1.min.js'></script>
    <script type='text/javascript' src='js/plugins/jquery/jquery-ui-1.10.1.custom.min.js'></script>
    <script type='text/javascript' src='js/plugins/jquery/jquery-migrate-1.1.1.min.js'></script>
    <script type='text/javascript' src='js/plugins/jquery/globalize.js'></script>
    <script type='text/javascript' src='js/plugins/other/excanvas.js'></script>
    
    <script type='text/javascript' src='js/plugins/other/jquery.mousewheel.min.js'></script>
        
    <script type='text/javascript' src='js/plugins/bootstrap/bootstrap.min.js'></script>            
    
    <script type='text/javascript' src='js/plugins/cookies/jquery.cookies.2.2.0.min.js'></script>    
        
    <script type='text/javascript' src='js/plugins/animatedprogressbar/animated_progressbar.js'></script>
    <script type='text/javascript' src="js/plugins/uniform/jquery.uniform.min.js"></script>
    
    <script type='text/javascript' src='js/plugins/shbrush/XRegExp.js'></script>
    <script type='text/javascript' src='js/plugins/shbrush/shCore.js'></script>
    <script type='text/javascript' src='js/plugins/shbrush/shBrushXml.js'></script>
    <script type='text/javascript' src='js/plugins/shbrush/shBrushJScript.js'></script>
    <script type='text/javascript' src='js/plugins/shbrush/shBrushCss.js'></script>    

<script type="text/javascript">
var products=new Array();
var lps;
$(document).ready(function() {	
	//var url="proOrdr_list.action";
	$.ajax({
			type : "POST",
			//data : data,
			url:"proOrdr_list.action",
			dataType : "json",
			success : function(data) {
				lps=data.lps;
				for(var index=0;index<lps.length;index++){
					var product=lps[index];
					var div="<div class='grid_3'><div class='box maxheight'>"
					+"<img src='"+product.url+"' alt=''>"
					+"<div class='title1'>"+product.name+"</div>"
					+"<span class='price'>￥"+product.price+"</span><br/>"
					+"<a href='javascript:addcart("+index+")' class='buttonsmall'>加入购物车</a>"
					+"</div></div>";
					$("#promote").append(div);
				}
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert(XMLHttpRequest.status);
					alert(XMLHttpRequest.readyState);
					alert(XMLHttpRequest.responseText);
					alert(textStatus);
				}
		});
});
function addcart(ndex){
	var pro=new Array(lps[ndex].name,lps[ndex].price,1);
	products[products.length]=pro;
	alert("添加成功");
}
function setOrder(){
$("#tbody1 tr").remove();
	for(var index=0;index<products.length;index++){
		var pro=products[index];
		var tr="<tr><td>"+pro[0]+"</td><td>"+pro[1]+"</td><td>"+pro[2]+"</td></tr>";
		alert(tr);
		$("#tbody1").append(tr);
	}
}
function upd(){
	var data =$("#clform").serialize();
	alert(data);
}
</script>