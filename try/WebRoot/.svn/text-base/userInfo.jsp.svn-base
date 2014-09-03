<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
		
	
%>

<!DOCTYPE >
<html>
	<head>

		<title>My JSP 'createSaleplan.jsp' starting page</title>

		<link rel="icon" type="image/ico" href="favicon.ico" />
		<link href="css/stylesheets.css" rel="stylesheet" type="text/css" />



		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<style>
.contentBorder {
	position: absolute;
	 left: 10px;
	top: 60px;
	right: 50px;
	border: solid eaeaea;
	padding: 30px;
}

td {
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
	width:150px;
	
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
		
						<form action="client_add.action" id="myform" method="post">
							<div class="">
								<a class="btn" href="userInfo.jsp" id="newClient">
								 <span	class="icon-th icon-white"></span>新建客户 </a>
								<a class="btn" href="client_findbyid.action?cid=${client.id }" id="showClient"> <span	class="icon-th icon-white"></span>客户 </a>
								
									<a class="btn" id="showlinkman"
										href="linkmans_find.action?cid=${client.id}">
										<span  class="icon-th icon-white"></span>联系人 </a>
							
							 <c:if test="${!empty clientid}">
									<a class="btn" id="newlinkman" href="linkmans_find.action?cid=${clientid}"><span	class="icon-th icon-white"></span> 联系人 </a>
							</c:if>
							 <c:if test="${empty clientid}">
									<a class="btn" id="newlinkman" href="linkmans.jsp">
									  <span	class="icon-th icon-white"></span> 联系人 
									 </a>
							</c:if>
	
<a class="btn" href="orders.jsp?cid=${clientid}&cname=${client.name}" id="ors">
								<span	class="icon-th icon-white"></span> 历史订单 </a>
									
								<input class="btn" onclick="javascript:history.go(-1);" value="返回" type="button">  
								<input class="btn" type="button" value="保存" id="savenew" onclick="createnew()"/>
								<input class="btn" type="button" onclick="changeclient()"
									value="保存" id="savechange" />

                                 
								<table   >
									<tbody id="tbody">
									
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										</tr>
										<tr>
											<td align="center">
												客户编号
											</td>
											<td>
												<input type="hidden" id="cid" />
												<input type="text" name="client.id" value="${client.id }"
													disabled="disabled" />
											</td>
											<td align="center">
												名称
											</td>
											<td>
												<input type="text" name="client.name" id="clientname"
													value="${client.name }"
													onblur="javascript:checkClientName()" />
											</td>
											
										</tr>
										<tr>
											<td align="center">
												地区
											</td>
											<td>
												<input type="text" name="client.region"
													value="${client.region }" />
											</td>
											<td align="center">
												客户经理
											</td>
											<td>
												<input type="text" name="client.manager"
													value="${client.manager }" />
											</td>
										</tr>
										<tr>
											<td align="center" style="marin-bottom:20px">
												客户等级
											</td>
											<td>



												<select name="client.levl">
													<option value="${client.levl }" selected="selected">
														${client.levl }
													</option>
													<option value="1">
														1
													</option>
													<option value="2">
														2
													</option>
													<option value="3">
														3
													</option>
													<option value="4">
														4
													</option>
													<option value="5">
														5
													</option>
												</select>
											</td>
											
										</tr>
										<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										</tr>
										
										<tr>
											<td align="center">
												客户成功率
											</td>
											<td>
												<input type="text" name="client.chance" value="${client.chance }"
													onblur="javascript:checkChance()" id="chance" onclick="javascript:showchance()"/>
													
											</td>
											<td align="center">
												客户信用度
											</td>
											<td>
												<select name="client.credit">
													<option value="${client.credit }" selected="selected">
														${client.credit }
													</option>
													<option value="1">
														1
													</option>
													<option value="2">
														2
													</option>
													<option value="3">
														3
													</option>
													<option value="4">
														4
													</option>
													<option value="5">
														5
													</option>
												</select>

											</td>
										</tr>
										<tr></tr>
										<tr></tr>
										<tr>
											<td align="center">
												地址
											</td>
											<td>
												<input type="text" name="client.address"
													value="${client.address }" />
											</td>
											<td align="center">
												邮政编码
											</td>
											<td>
												<input type="text" name="client.post" onblur="javascript:checkpostnumber()"
													value="${client.post }" id="post" onclick="javascript:showpostnumber()"/>
											</td>
										</tr>
										<tr>
											<td align="center">
												电话
											</td>
											<td>
												<input type="text" id="num" name="client.tel" value="${client.tel }" onclick="javascript:shownumber()"/>
											</td>
											<td align="center">
												传真
											</td>
											<td>
												<input type="text" name="client.fax" value="${client.fax }" 
												onclick="javascript:showfax()" onblur="javascript:checkfax()" id="fax"/>
											</td>
										</tr>
										<tr>
											<td align="center">
												网址
											</td>
											<td>
												<input type="text" name="client.web" value="${client.web }"
													onclick="initweb()" id="web" />
											</td>
											
										</tr>
										<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										</tr>
										<tr>
											<td align="center">
												营业执照注册号
											</td>
											<td>
												<input type="text" name="client.licenceNo"
													value="${client.licenceNo }" />
											</td>
											<td align="center">
												法人
											</td>
											<td>
												<input type="text" name="client.chieftain"
													value="${client.chieftain }" />
											</td>
										</tr>
										<tr>
											<td align="center">
												注册资金（万元）
											</td>
											<td>
												<input type="text" name="client.bankroll"
													value="${client.bankroll }" />
											</td>
											<td align="center">
												年营业额
											</td>
											<td>
												<input type="text" name="client.turnover"
													value="${client.turnover }" />
											</td>
										</tr>
										<tr>
											<td align="center">
												开户银行
											</td>
											<td>
												<input type="text" name="client.bank"
													value="${client.bank }" />
											</td>
											<td align="center">
												银行账号
											</td>
											<td>



												<input type="text" name="client.bankAccount"
													value="${client.bankAccount }" id="account" />
											</td>
										</tr>

									</tbody>
								</table>
							</div>
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
var checkcname=true;
var checkchance=true;
var checkpost=true;
var checkfax=true;
function changeclient() {
	document.forms.myform.action = "client_edit.action ";
	document.forms.myform.submit();
}
function initweb() {
	document.getElementById("web").value = "http://";
}
function showchance(){
showErrorMessage($("#chance").position().left-60,
				$("#chance").position().top, "请输入0到100的数字!"); 
}
function checkChance() {
	var chance = document.getElementById("chance").value;
	if (!IsNum(chance)) {
		showErrorMessage($("#chance").position().left-60,
				$("#chance").position().top, "请输入字符!");
		checkchance=false;
	}
	if (chance < 0 || chance > 100) {

		showErrorMessage($("#chance").position().left-60,
				$("#chance").position().top, "请输入0到100的数字!");
		checkchance=false;
	}
	$(".ct").remove();
}
function showErrorMessage(x, y, contents) {
	$("<div class=\"ct\">" + contents + "</div>").css( {
		position : "absolute",
		display : "none",
		top : y ,
		left : x + 200,
		border : "1px solid #000",
		padding : "3px",
		opacity : "0.7",
		"background-color" : "#000",
		color : "#fff"
	}).appendTo("body").fadeIn(200);
}
function IsNum(num) {
	var reNum = /^\d*$/;
	return (reNum.test(num));
}
function showpostnumber(){
  showErrorMessage($("#post").position().left-60,
				$("#post").position().top, "请输入6位字符如404021!");
}
function checkpostnumber(){
  var post = document.getElementById("post").value;
  $(".ct").remove();
   if (!IsNum(post)) {

		showErrorMessage($("#post").position().left-60,
				$("#post").position().top, "请输入字符!");
		checkpost=false;
	}
	if(post.length!=6){
	  showErrorMessage($("#post").position().left-60,
				$("#post").position().top, "请6位数字!");
		checkpost=false;
	}
	
	
}
function checkClientName() {
	var cname = document.getElementById("clientname").value;
	if(cname==""){
	showErrorMessage($("#clientname").position().left-60,
				$("#clientname").position().top, "请填写客户名称!");
				checkcname=false;
	}
	else{
	var data = "name=" + cname;
	$.ajax( {
		type : "post",
		url : "client_checkClientName.action",
		data : data,
		success : function(data) {
			if (data.ishere == 'true'){
			showErrorMessage($("#clientname").position().left-60,
				$("#clientname").position().top, "该用户已存在!");
				checkcname=false;
				}
			else
			{
				$(".ct").remove();
			
				}
		}
	//	error : function() {
	//	alert("失败！");
	//	}
	});
	}
		
	
}
function showfax(){

  showErrorMessage($("#fax").position().left-60,
				$("#fax").position().top, "请输入9位字符如023-124567!");
}
function checkfax(){
 var fax = document.getElementById("fax").value;
   if (!IsNum(fax)) {
		showErrorMessage($("#fax").position().left-60,
				$("#fax").position().top, "请输入字符!");
		checkfax=false;
	}
	if(fax.length!=10){
	  showErrorMessage($("#fax").position().left-60,
				$("#fax").position().top, "请9位数字!");
		checkfax=false;
	}

}
function shownumber(){

  showErrorMessage($("#num").position().left-60,
				$("#num").position().top, "请输入8位字符如5864587!");

}
function createnew(){

checkClientName();
   if(checkcname&&checkchance&&checkpost&&checkfax)
   document.forms.myform.submit();
}
$(document).ready(function() {
 
    var isShow=<%=request.getParameter("show")%>;
    
    if(isShow==1){   
       $("#newClient").hide();    
       $("#savenew").hide();
       $("#newlinkman").hide();
    
   /*    var cid=<%=request.getParameter("cid")%>;
      alert(cid);
      $.ajax( {
		     type:"post",
		     url:"client_findbyid.action",
		     data:"clientid="+cid,
		});*/
      
   // document.forms.myform.action = "client_findbyid_cid="+cid;
	//document.forms.myform.submit();
    }else{
    
     $("#message").hide();
       $("#showClient").hide();
       $("#ors").hide(); 
        $("#savechange").hide();
       $("#showlinkman").hide();
       
    }
});
</script>

