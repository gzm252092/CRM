<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;}
.iconhint{
	position:absolute;
	bottom:5px;
	right:5px;
	width:120px;
	height:220px;
	border:gray solid thin;
	z-index:100;
	background:#aaaaaa;
	filter:alpha(opacity=50);  
    -moz-opacity:0.5;  
    -khtml-opacity: 0.5;  
    opacity: 0.4;  
    padding:13px;
}
</style>
<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=lDNHXz6qT6pvv5l9CnB2YtAh"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>


<title>点聚合</title>
</head>
<body style="padding:6px;padding-top:6px;">
	<div class='iconhint'>
		<table>
			<tr><th>标注</th><th>成功率</th></tr>
			<tr><td><img src="img/map1.png"/></td><td style="padding-left:12px;">0%-19%</td></tr>
			<tr><td><img src="img/map2.png"/></td><td style="padding-left:12px;">20%-39%</td></tr>
			<tr><td><img src="img/map3.png"/></td><td style="padding-left:12px;">40%-59%</td></tr>
			<tr><td><img src="img/map4.png"/></td><td style="padding-left:12px;">60%-79%</td></tr>
			<tr><td><img src="img/map5.png"/></td><td style="padding-left:12px;">80%-100%</td></tr>
		</table>
	</div>
	<div id="allmap"></div>
</body>

<script type="text/javascript">
var map;
var myGeo;
var markers = [];
var index = 0;
var mapdata ;

function initt(){
	map = new BMap.Map("allmap");//创建Map实例
	myGeo = new BMap.Geocoder();//创建地址解析器实例
}


function bdGEO(){
    var add = mapdata[index];
    geocodeSearch(add);
    index++;
}
function geocodeSearch(add){
    if(index < mapdata.length){
        setTimeout(window.bdGEO,300);
    } 
    myGeo.getPoint(add.addr, function(point){
       if (point) {
    	  	var where = getIndex(add.addr);
    	   	var myIcon = new BMap.Icon("img/map"+mapdata[where].chance+".png", new BMap.Size(50,50));
    	   	var marker = new BMap.Marker(new BMap.Point(point.lng, point.lat),{icon:myIcon});      		
       		var info = "<h3><a style='color:#f35858;text-decoration:none' href='client_findbyid.action?cid="+mapdata[where].cid+"' target='bottom'>"+mapdata[where].cname+"</a></h3>";
       		var infoWindow = new BMap.InfoWindow(info);
       		marker.addEventListener("click", function(){          
   				this.openInfoWindow(infoWindow);
			});
       		markers.push(marker);		
	   		var markerClusterer = new BMapLib.MarkerClusterer(map, {markers:markers});//点聚合
      }
    });
}

function getIndex(addr){
	for(var i=0;i<mapdata.length;i++){
		if(mapdata[i].addr == addr){
			return i;
		}
	}
}
$(function(){
	initt();
	$.ajax({
		type:"POST",
		url:"cmap_load.action",
		datatype:"json",
		success:function(obj){
			mapdata = obj.lcmvs;
			bdGEO();
			map.centerAndZoom(new BMap.Point(108.91,34.21), 6);
			map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
			map.enableScrollWheelZoom(true);
		}
	});
	$(".iconhint").hover(function(){
		$(this).css("opacity",0.9);
	},function(){
		$(this).css("opacity",0.3);
	});
});



</script>

</html>