<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>My JSP 'top.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link rel="stylesheet" href="css/footerstyle.css">
		<link rel="stylesheet" href="reset.css" />
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
.active {
	background: #eee;
}

.code {
	padding: 10px 0;
}

.code h3 span {
	border: 1px solid #ddd;
	margin-left: -1px;
	padding: 10px;
	display: inline-block;
	cursor: pointer;
}

pre {
	background: #eee;
	padding: 10px;
}

.sliderbox {
	position: relative;
}  /*必须加这句css,否则向左右，上下滚动时会没有效果*/
.noticecontent {
	margin: 20px auto;
	width: 300px;
}

.text {
	height: 150px;
	width: 500px;
	overflow: hidden;
	position: relative;
	margin: 0px auto;
}

.text li {
	line-height: 30px;
	height: 30px;
	width: 500px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

 a {
    text-decoration:none;
    color:#333;
}
 a:hover{
    color:#f35858; 
 }
 a:active{
   
 }

</style>

	</head>

	<body
		style="width: 1025px; float: right; background: url('images/aaaaz22.png'); background-size: cover">


		<div class="notice" style="position: absolute; left: 150px;padding-top:25px">
			<div class="text" id="text-slideTo">
				<ul class="sliderbox">
					<li>
						测试文字1滚动Lorem ipsum dolor sit1.asdfasdfasdfasdfadf
					</li>
					<li>
						测试文字2滚动Lorem ipsum dolor sit2.adsfasdfadsfadsf
					</li>
					<li>
						测试文字3滚动Lorem ipsum dolor sit3afdsfasdfasdfadsfasdf
					</li>

					<li>
						&nbsp;
					</li>
					<li>
						测试文字5滚动Lorem ipsum dolor sit5.adsafdsf
					</li>
					<li>
						测试文字6滚动Lorem ipsum dolor sit1.
					</li>
					<li>
						测试文字7滚动Lorem ipsum dolor sit4.asdfasdfasdfadsf
					</li>
					<li>
						测试文字8滚动Lorem ipsum dolor sit5.adsafdsf
					</li>
					<li>
						测试文字9滚动Lorem ipsum dolor sit1.
					</li>



				</ul>
			</div>
		</div>

		
		
		<div class=""
			style="position: absolute; right: 50px; top: 30px; width: 230px;height:100px;">

            <img style="position:relative;left:30px;margin-left:10px;margin-bottom:15px;width: 50px; height: 50px;" src="images/forewhite1s.png" id="icon"></img>

			
			<a class="buttonsmall" href="person_logout.action" target="_top" style="float:right;position:relative;right:32px;margin-top:70px;">&nbsp;退出</a>
		
			
			<div style="position:relative;left:50px;width:auto;float:right;margin-right:20px;text-align:center"><h5 id="welcome" style="font-size:15px;margin-top:7px;color:#777"></h5></div>
			
			<div id="singal" 
			      style="display:none;width:30px;height:30px;text-align:center;float:left;position:relative;right:32px;
			      background-image: url('images/sicon.png');color : red;font-size:25px;font-weight:bold; ">
			</div> 
			
            <c:if
				test="${sessionScope.roleid=='1'||sessionScope.roleid=='3'||sessionScope.roleid=='5'}">
				<a class="bmedium" style="position:relative;right:32px;margin-left:40px;display:block;margin-top:5px;"  href="planwork.jsp?roid=${sessionScope.roleid}" onclick="cal()" target="bottom" id="work">&nbsp;我的任务</a>
			</c:if>
			<c:if
				test="${sessionScope.roleid=='2'||sessionScope.roleid=='4'||sessionScope.roleid=='6'}">

				<a  class="bmedium" style="position:relative;right:22px;margin-left:40px;display:block;margin-top:5px;"   href="steptask.jsp?roid=${sessionScope.user}" onclick="cal()" target="bottom" id="work"
					>&nbsp;我的任务</a>
			</c:if>	
			
			
			

</div>
		

		<script type="text/javascript" src="images/jquery-1.9.1.min.js">
</script>
		<script type="text/javascript" src="power-slider.js">
</script>
		<script type="text/javascript">
var roleid = '<%=request.getSession().getAttribute("roleid")%>';
var username = '<%=request.getSession().getAttribute("user")%>';
var msize;
var moldsize;
var psize;
var poldsize;
$(function(){  
        $("#text").powerSlider({delayTime:1000,sliderNum:3});
        
        $("#text-slideTo").powerSlider({handle:"slideTo",delayTime:2000,sliderNum:3});
        
        $(".code h3 span").each(function(i){
        	$(this).click(function(){
        		$(this).addClass("active").siblings().removeClass("active");
        		$(".code pre").eq(i).show().siblings("pre").hide();
        	})
        })
     var roletype;
     if(roleid==1){roletype="推广经理";}
     else if(roleid==2){roletype="推广人员";}
     else if(roleid==3){roletype="销售经理";}
     else if(roleid==4){roletype="销售人员";}
     else if(roleid==5){roletype="服务经理";}
     else if(roleid==6){roletype="服务人员";}
     else if(roleid==8){roletype="管理员";}
	$("#welcome").html(roletype+"</br>"+username);
	
	if(roleid==1||roleid==2){
		$("#icon").attr("src","images/icon/tuiguang.png");
	}else if(roleid==3||roleid==4){
		$("#icon").attr("src","images/icon/sale.png");
	}else if(roleid==5||roleid==6){
		$("#icon").attr("src","images/icon/service.png");
	}else if(roleid==8){
		$("#icon").attr("src","images/icon/admin.png");
	}
	 if(roleid==1||roleid==3||roleid==5){
	 respondmana();
	    setInterval("respondmana()",10000);
	 }
	if(roleid==2||roleid==4||roleid==6){
	respondperson();
	   setInterval("respondperson()",10000);
	}
	 
    });
    function respondmana(){ 
	
		var data="personname="+roleid;
	$.ajax( {

		type : "POST",
		url : "work_findTaskList.action",
		dataType : "json",
		data:data,
		success : function(data) {
    		moldsize= data.moldlength;
			msize=data.mlength;
			showupdate();
			}
	}); 
	}
	
 function respondperson(){	
		
		
	var data="personname="+username;
	
	$.ajax( {
		type : "POST",
		url : "work_findTaskList.action",
		dataType : "json",
		data:data,
		success : function(data) {
          psize=data.plength;
			poldsize= data.poldlength;
			 showupdate();
		
			}
	}); 
	} 

    function showupdate(){
    	if(poldsize<psize){
			var com=document.getElementById("singal");
			com.innerText=psize-poldsize;
	     com.style.display   =   "block"; 
			  
			}
				if(moldsize<msize){
				var com=document.getElementById("singal");
				com.innerText=msize-moldsize;
	     com.style.display   =   "block"; 
			  
			}
    
    }
    function cal(){
    
    	var com=document.getElementById("singal");
	     com.style.display   =   "none"; 
    }

    
</script>
	</body>
</html>




