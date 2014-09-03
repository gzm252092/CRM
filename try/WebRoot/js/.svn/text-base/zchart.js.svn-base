
$(window).load(function () {
	

	   if($("#chart-2").length > 0){
        

      var d2 = [];
      	var xd=[];
	var url = "orders_getNmberOfOrders.action";
		$.ajax({type:"POST", url:url, dataType:"json", success:function (data) {

			for (var i = 0; i < data.clientnumberOrders.length; i++) {
	
	
		d2.push([i, parseInt(data.clientnumberOrders[i][0])]);
		xd.push([i+0.3,data.clientnumberOrders[i][1]+""]);
			}
			 var stack = 0, bars = true, lines = false, steps = false;
			   $.plot($("#chart-2"), [ { data: d2, label: "data 1" }  ], {
            series: {
                stack: stack,
                lines: { show: lines, fill: true, steps: steps },
                bars: { show: bars, barWidth: 0.6 }
            },
             xaxis: {
                 ticks:xd,
                   tickSize: 30,
                tickLength: 40,
                labelWidth:50,
               labelHeight: 20
             }
           
        });
			
			 }
			 });  
			 
       


     
         }

	

//chart3 ---start
	if ($("#chart-3").length > 0) {
		var datas = [];
		var url = "client_getRegion.action";
		$.ajax({type:"POST", url:url, dataType:"json", success:function (data) {
			for (var i = 0; i < data.regions.length; i++) {
				
				datas[i] = {label:data.regions[i][1], data:Math.floor(data.regions[i][0]*100)+1};
			}
			//$("#chart-3").css({background:'red'});
			$.plot($("#chart-3"), datas, {series:{pie:{show:true}}, legend:{show:false}});
			
		}});
	
		
	}
//  end of chart---3





//main-chart start
	
	  if ($("#main_chart").length > 0) {
		
		var d = [];
			var url = "orders_findOrdroftime.action";
		$.ajax({type:"POST", url:url, dataType:"json", success:function (data) {
			
			for (var i = 0; i < data.numberOrders.length; i++) {

				d.push([data.numberOrders[i][1], parseInt(data.numberOrders[i][0])]);
			
				}
				$.plot($("#main_chart"), [{data:d, label:"visits"}], {series:{lines:{show:true}, points:{show:true}}, grid:{hoverable:true, clickable:true}, yaxis:{tickLength:0}, xaxis:{labelWidth:30, tickLength:0}});
			
			},error:function(){
	alert("cccccc");
	}
	
	
	});
		
	}
	 if ($("#main_chart1").length > 0) {
		
		var d1 = [];
			var url = "client_lostclientstatis.action";
		$.ajax({type:"POST", url:url, dataType:"json", success:function (data) {
			for (var i = 0; i < data.lostsclientoftime.length; i++) {
				d1.push([data.lostsclientoftime[i][1], parseInt(data.lostsclientoftime[i][0])]);
							}
		$.plot($("#main_chart1"), [{data:d1, label:"visits"}], {series:{lines:{show:true}, points:{show:true}}, grid:{hoverable:true, clickable:true}, yaxis:{ tickLength:0}, xaxis:{labelWidth:30, tickLength:0}});
		
	},error:function(){
	alert("cccccc");
	}
	
	
	});
	
	} 
	function showTooltip(x, y, contents) {
		$("<div class=\"ct\">" + contents + "</div>").css({position:"absolute", display:"none", top:y, left:x + 10, border:"1px solid #000", padding:"3px", opacity:"0.7", "background-color":"#000", color:"#fff"}).appendTo("body").fadeIn(200);
	}
	var previousPoint = null;
	$("#main_chart").bind("plothover", function (event, pos, item) {
		$("#x").text(pos.x.toFixed(2));
		$("#y").text(pos.y.toFixed(2));
		if (item) {
			if (previousPoint != item.dataIndex) {
				previousPoint = item.dataIndex;
				$(".ct").remove();
				var x = item.datapoint[0].toFixed(2), y = item.datapoint[1].toFixed(2);
				showTooltip(item.pageX, item.pageY, item.series.label + " of " + Math.round(x) + " = " + Math.round(y));
			}
		} else {
			$(".ct").remove();
			previousPoint = null;
		}
	});
	$("#main_chart1").bind("plothover", function (event, pos, item) {
		$("#x").text(pos.x.toFixed(2));
		$("#y").text(pos.y.toFixed(2));
		if (item) {
			if (previousPoint != item.dataIndex) {
				previousPoint = item.dataIndex;
				$(".ct").remove();
				var x = item.datapoint[0].toFixed(2), y = item.datapoint[1].toFixed(2);
				showTooltip(item.pageX, item.pageY, item.series.label + " of " + Math.round(x) + " = " + Math.round(y));
			}
		} else {
			$(".ct").remove();
			previousPoint = null;
		}
	});
    //end of main--chart
});

