<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<!--
	Telephasic 1.0 by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Rose and you</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link
	
	rel="stylesheet" type="text/css" />
<!--[if lte IE 8]><script src="js/html5shiv.js"><![endif]-->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<noscript>
	<link rel="stylesheet" href="css/skel-noscript.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-n1.css" />
</noscript>

<meta charset="utf-8">
<link rel="icon" type="image/ico" href="favicon.ico"/>
    
<link href="css/stylesheets.css" rel="stylesheet" type="text/css" />
<!--[if lte IE 7]>
        <link href="css/ie.css" rel="stylesheet" type="text/css" />
        <script type='text/javascript' src='js/plugins/other/lte-ie7.js'></script>
<![endif]-->   
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/touchTouch.css">
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
input.error { border: 1px solid red; }
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
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/jquery.tabstabs.min.js"></script>
<script src="js/touchTouch.jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script>
	/*$(document).ready(function() {

		

	})*/
</script>
<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
         </a>
    <![endif]-->
<!--[if lt IE 9]>
    
      <script src="js/html5shiv.js"></script>
      <link rel="stylesheet" media="screen" href="proPresent/css/ie.css">
    <![endif]-->
<!--[if lt IE 10]>
      <link rel="stylesheet" media="screen" href="proPresent/css/ie1.css">
    <![endif]-->


</head>
<body class="homepage">
	<!-- Header Wrapper -->
	<div id="header-wrapper">

		<!-- Header -->
		<div id="header" class="container">
		
			<!-- Logo -->
			<h1 id="logo">
				<a href="proIndex.jsp">
				    <img style="width:500px;height:200px" src="login/img/logo.png"></img>
				    <h2>Rose&You</h2>
				 </a>
			</h1>
			
		</div>
		<!-- Hero -->
		<section id="hero" class="container">
			<header style="padding-top:200px">
				<h2>for your true love</h2>
			</header>
			<p>
				<br />
			</p>
			<ul class="actions">
			<li><a href="#fModal" role="button" data-toggle="modal"><button
				 onclick="setOrder()"  class="button">
				生成订单</button> </a></li>
				<li id="login1"><a href="login.jsp" class="button">登 录</a></li>
				<li id="logout1"><a href="person_logout.action" class="button">退出登录</a></li>
			</ul>
		</section>

	</div>   



   <div align="center" style="background:white"><h2 style="font-size:40px;position:relative;top:80px;height:200px">------❤️真爱典藏️❤️️-----</h2></div> 
  
   <!-- Bootrstrap modal form -->
			<div id="fModal" class="modal hide fade" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				    <h5 style="color: #fff; font-size: 20px; font-weight: normal;font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif;">确认订单</h5>
				</div>
				<div class="row-fluid">
					<div class="block-fluid">
						<div class="row-form">
							<form id="orform">
								<table id="dt" width="500px;">
									<thead>
										<tr style="font-weight:bold;font-size:20px;margin-bottom:10px;">
											<td>
												名称
											</td>
											<td>
												单价
											</td>
											<td>
												数量
											</td>
										</tr>

									</thead>
									<tbody id="tbody1">
										<tr><td></td></tr>
									</tbody>
								</table>
								<span>总计：</span><span id="total"></span>
							</form>
							
							<form id="clform">
							收货地址<input type="text" name="ordrvo.address" class="required"/>
							</form>
							<div class="modal-footer">
							<button class="btn" onclick="gonext()" id="gonext">
													下一步
												</button>
												<button class="btn" data-dismiss="modal"
													aria-hidden="true" onclick="upd()" id="svclform">
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
	<!--==============================Content=================================-->

	<div class="content">
		
		<div class="container_12">
			<div class="grid_12">
				<h3></h3>
			</div>
			
			 
			
			

 <div id="footer-wrapper">
		<div id="footer" class="container">
			<header class="major" id="promote">

			</header>				
		</div>
	</div>
 

			<div class="tabs tb gallery">
			
				<div class="div-nav  ">
					<div class="grid_12">
						<ul class="nav">
						    <li class="selected"><a href="#tab-1" class="">  </a></li>
						</ul>
					</div>
				</div>
				
				<div class="div-tabs">
					<div id="tab-1" class="tab-content gallery1">	
					
					<h2 style="font-size:40px;">------❤️️鲜花❤️️-----</h2>
					
					
						<div class="grid_3">
							<a href="images/redb.jpg" class="gal"><img
								src="images/reds.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">华丽的冒险</h5> </span> $
								200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						<div class="grid_3">
							<a href="images/pinkb.jpg" class="gal"><img
								src="images/pinks.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">粉色莫吉托</h7>  </span> $
								200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						<div class="grid_3">
							<a href="images/redpinkb.jpg" class="gal"><img
								src="images/redpinks.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">星空与尘埃 </h7> </span> $
								200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						<div class="grid_3">
							<a href="images/whiteb.jpg" class="gal"><img
								src="images/whites.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">青木瓜之恋</h7> </span> $ 200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
							
					
					
					
						<div class="grid_3">
							<a href="images/red2b.jpg" class="gal"><img
								src="images/red2s.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">我爱你❤️</h7> </span> $
								200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						<div class="grid_3">
							<a href="images/orange2b.jpg" class="gal"><img
								src="images/orange2s.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">情长久❤️</h7> </span> $
								200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						<div class="grid_3">
							<a href="images/white2b.jpg" class="gal"><img
								src="images/white2s.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">在一起❤️  </h7></span> $
								200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						<div class="grid_3">
							<a href="images/pink2b.jpg" class="gal"><img
								src="images/pink2s.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">不相离❤️ </h7></span> $ 200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
					
						
						<!-- <h2 style="font-size:40px;position:relative;top:80px;height:800px">------❤️️永生花❤️️-----</h2>
					 -->
					
					 <h2 style="font-size:40px;margin-top:800px">------❤️️永生花❤️️-----</h2>
						
						<div class="grid_3">
							<a href="images/foregreen1b.jpg" class="gal"><img
								src="images/foregreen1s.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">青蛙王子的雨天 </h7></span> $
								200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						<div class="grid_3">
							<a href="images/forewhite1b.jpg" class="gal"><img
								src="images/forewhite1s.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">企鹅宝宝的日记 </h7> </span> $
								200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						<div class="grid_3">
							<a href="images/forered1b.jpg" class="gal"><img
								src="images/forered1s.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">瓢虫先生的假期</h7> </span> $
								200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						<div class="grid_3">
							<a href="images/foreblue1b.jpg" class="gal"><img
								src="images/foreblue1s.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">章鱼保罗的密码</h7> </span> $ 200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						 
						
						
					    <div class="grid_3">
							<a href="images/forecolor.jpg" class="gal"><img
								src="images/forecolor.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">保护树🌲 </h7> </span> $
								300.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						
						<div class="grid_3">
							<a href="images/forepink2b.jpg" class="gal"><img
								src="images/forepink2s.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">小胖熊💗</h7> </span> $ 200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						<div class="grid_3">
							<a href="images/forered2b.jpg" class="gal"><img
								src="images/forered2s.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"><h7 style="color:#f35858">🔔铃铛🔔 </h7></span> $
								200.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						<div class="grid_3">
							<a href="images/forepurple2b.jpg" class="gal"><img
								src="images/forepurple2s.png" alt=""><span></span> </a>
							<div class="col2">
								<span class="col3"> <h7 style="color:#f35858">G的信💗 </h7></span> $
								300.00<br/>
								<a href="" class="bsmall">加入购物车</a>
							</div>
						</div>
						
					
					 
						
					</div>
				</div>
			</div>
		</div>
		          </div>
		

			




	<!-- Footer Wrapper -->
	<div id="footer-wrapper">

		<!-- Footer -->
		<div id="footer" class="container">
			<header class="major">
				<h2></h2>
				<span>许所有幸福一个明亮的结尾，许所有时光一个芬芳的未来.</span>
			</header>
					
		</div>

		<!-- Copyright -->
		<div id="copyright" class="container">
			<ul class="menu">
				<li>&copy; rose&you,all rights reserved.</li>
				<li>辽ICP备17026077 </li>
			</ul>
		</div>

			

		</div>
	
	
	
	
											

</body>
</html>

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
	<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/messages_cn.js"></script>
<script type="text/javascript">
var products=new Array();
var username='<%=request.getSession().getAttribute("user")%>';
var lps;
$(document).ready(function() {	
	$("#clform").validate({	 	
		onfocusout: function(element) { 
      		$(element).valid(); 
		},
		submitHandler:function(form) {
			upd();
		}
	 });
	$("#clform").hide();
	$("#svclform").hide();
	$("#logout1").hide();
	
	$().UItoTop({
			easingType : 'easeOutQuart'
		});
		$('.gallery a.gal').touchTouch();



	$().UItoTop({
			easingType : 'easeOutQuart'
		});
		$('.gallery a.gal').touchTouch();

	if(username!=null){
		$("#login1").hide();
		$("#logout1").show();
	}

	$.ajax({
			type : "POST",
			url:"proOrdr_list.action",
			dataType : "json",
			success : function(data) {
				lps=data.lpvs;
				for(var index=0;index<lps.length;index++){
					var product=lps[index];
					var div="<div class='grid_4'><div class='box maxheight'>"
					+"<img src='"+product.url+"' alt=''>"
					+"<div class='title1'>"+product.name+"</div>"
					+"<span class='price'>￥"+product.price+"</span><br/>"
					+"<a href='javascript:minusone("+index+")' class='bsmall'>-</a>"
					+"<input type='text' value='1' id='number"+index+"' style='width:50px;text-align:center;'></input>"
					+"<a href='javascript:plusone("+index+")' class='bsmall'>+</a><br/>"
					+"<a href='javascript:addcart("+index+")' class='bsmall'>加入购物车</a>"
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
function minusone(ndex){
	var number=$("#number"+ndex).val();
	if(number>1){
	$("#number"+ndex).val(number-1);
	}
}
function plusone(ndex){
	var number=+$("#number"+ndex).val();
	$("#number"+ndex).val(number+1);
}
function addcart(ndex){
	var number=$("#number"+ndex).val();
	var pro=new Array(lps[ndex].name,lps[ndex].price,number,lps[ndex].id);
	products[products.length]=pro;
	alert("添加成功");
}
function gonext(){
	$("#gonext").hide();
	$("#orform").hide();
	$("#clform").show();
	$("#svclform").show();
}
function setOrder(){
$("#tbody1 tr").remove();
$("#total").html("");
var total=0;
	for(var index=0;index<products.length;index++){
		var pro=products[index];
		var tr="<tr><td>"+pro[0]+"</td><td>"+pro[1]+"</td><td id='qt"+index+"'>"+pro[2]+"</td>"
		+"<td id='pid"+index+"'>"+pro[3]+"</td></tr>";
		total+=pro[1]*pro[2];
		$("#tbody1").append(tr);
		$("#pid"+index).hide();
	}
	$("#total").append(total);
	$("#tbody1 tr td").css("padding-left","10px");
	$("#tbody1 tr td").css("padding-top","15px");
	$("#tbody1 tr").css("border-bottom","gray dashed thin");
}
function upd(){
	if( $("#clform").valid() ){
		var data =$("#clform").serialize()+"&username="+username;
		var rows=$("#dt").find("tr").length-1;
		$.ajax({
				type : "POST",
				data : data,
				url:"proOrdr_add.action",
				dataType : "json",
				success : function(data) {
					for(var index=0;index<rows;index++){
						data1= "ordrid="+data.ordrid+"&productvo.id="+$("#pid"+index).html()+"&proOrdrvo.quantity="+$("#qt"+index).html()
							+"&username="+username;
						$.ajax({
							type : "POST",
							async: false ,
							data : data1,
							url:"proOrdr_addProOrdr.action",
							dataType : "json",
							success : function(data) {
								if(index==0){
									alert("下单成功");
								}
							},
							error : function(XMLHttpRequest, textStatus, errorThrown) {
									alert(XMLHttpRequest.status);
									alert(XMLHttpRequest.readyState);
									alert(XMLHttpRequest.responseText);
									alert(textStatus);
								}
						});
					}
					var data2="ordrid="+data.ordrid;
					$.ajax({
							type : "POST",
							async: false ,
							data : data2,
							url:"proOrdr_addServicePln.action",
							dataType : "json",
							success : function(data) {
								
							},
							error : function(XMLHttpRequest, textStatus, errorThrown) {
									alert(XMLHttpRequest.status);
									alert(XMLHttpRequest.readyState);
									alert(XMLHttpRequest.responseText);
									alert(textStatus);
								}
						});
					products=new Array();			
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
						alert(XMLHttpRequest.status);
						alert(XMLHttpRequest.readyState);
						alert(XMLHttpRequest.responseText);
						alert(textStatus);
					}
			});
		$("#clform").hide();
		$("#svclform").hide();
		$("#gonext").show();
		$("#orform").show();
		}	
}
</script>