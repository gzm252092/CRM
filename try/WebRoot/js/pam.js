var treenodes;
	var isAddOne = true;
	var isEditOne = true;
	var isDelOne = true;
	var ii,jj;	
	var editi,editii,editjj;
	var ppid;
	var rid;
	
	var deli,delj;
	var delid;
	$(document).ready(function () {	
		$.ajax({
			type:"POST",
			url:"page_load.action",
			success:function(obj){
				treenodes = obj.pmv;
				filltree1(treenodes);
				ii = treenodes.lopvs.length;
			}
		});
	});
	
	function setStyle(){
		var aMenuOneLi = $(".menu-one1 > li");
		var aMenuTwo = $(".menu-two1");
		$(".menu-one1 > li > .header .arrow").each(function (i) {
			$(this).bind({
				click: function() {
     				if ($(aMenuTwo[i]).css("display") == "block") {
						$(aMenuTwo[i]).slideUp(300);
						$(aMenuOneLi[i]).removeClass("menu-show");
					} else {
						for (var j = 0; j < aMenuTwo.length; j++) {
							$(aMenuTwo[j]).slideUp(300);
							$(aMenuOneLi[j]).removeClass("menu-show");
						}
						$(aMenuTwo[i]).slideDown(300);
						$(aMenuOneLi[i]).addClass("menu-show");
					}
    			}
			
			});
		});
	}
	
	function clearStyle(){
		$(".menu-one1 > li > .header .arrow").each(function(i){
			$(this).unbind("click");
		});
	}
	
	
	function click_del_one(id,i){
		//数据库操作
		$("#myModalLabel2").html("删除功能模块");
		$("#delhint").html("确定把该模块包括所有子页面永久删除吗（不能恢复）.");
		isDelOne = true;
		deli = i;
		delid = id;
	}
	function click_del_two(id,i,j){
		$("#myModalLabel2").html("删除页面");
		$("#delhint").html("确定把该子页面永久删除吗（不能恢复）.");
		isDelOne = false;
		deli = i;
		delj = j;
		delid = id;
	}
	
	function click_edit_one(id,i){
		isEditOne = true;
		editi = i;
		$("#myModalLabel3").html("编辑功能模块");
		$("#pagelabel1").html("功能模块编号");
		$("#pagetitle1").html("功能名称：");
		$("#pageid1").html(treenodes.lopvs[i].id);
		$("#nm1").val(treenodes.lopvs[i].name);
		rid = treenodes.lopvs[i].id;
		
		$("#pageurl1").hide();
	}
	
	
	function click_edit_two(id,i,j){
		isEditOne = false;
		editii = i;
		editjj = j;
		$("#myModalLabel3").html("编辑页面");
		$("#pagelabel1").html("页面编号");
		$("#pagetitle1").html("页面名称：");
		$("#pageid1").html(treenodes.lopvs[i].ltpvs[j].id);
		$("#nm1").val(treenodes.lopvs[i].ltpvs[j].name);
		$("#url1").val(treenodes.lopvs[i].ltpvs[j].url);
		rid = treenodes.lopvs[i].ltpvs[j].id;
		$("#pageurl1").show();
	}
	
	function click_add_one(){
		$("#myModalLabel1").html("新增功能模块");
		$("#pagetitle").html("功能名称");
		isAddOne = true;
		ppid = 0;
		$("#pageurl").hide();
	}
	function click_add_two(pid,i){
		$("#myModalLabel1").html("新增页面");
		$("#pagetitle").html("页面名称");
		isAddOne = false;
		jj = i;
		ppid = pid;
		$("#pageurl").show();
		//$( "#dialog-form-add" ).dialog( "open" );
	}
	function clearTree(){
		$("menu-one1 li").remove();
	}
	
	function filltree1(treenodes){
		
		for(var i=0;treenodes.lopvs!=null && i<treenodes.lopvs.length;i++){
		
			var n1 = treenodes.lopvs[i];
			var liTemp1 = "<li id='"+i+"one' ";
			if(i==0){
				liTemp1 += "class='firstChild'";
			}
			liTemp1 += "><div class='header'> <span id='"+i+"n1name' class='txt'>"+n1.name+"</span> <span class='arrow'></span>";
			liTemp1 += "<a onclick='click_del_one(\""+n1.id+"\","+i+")' href='#dModal' data-toggle='modal'><span class='del'></span></a><a onclick='click_edit_one(\""+n1.id+"\","+i+")' href='#eModal' data-toggle='modal'><span class='edit'></span></a>";
			
			
			liTemp1 += "</div><ul id='menu-two"+i+"' class='menu-two1'>";
			
			var ttemp = "";
			for(var j=0;n1.ltpvs != null && j<n1.ltpvs.length;j++){
				var n2 = n1.ltpvs[j];
				var liTemp2 = "<li id='"+i+"two"+j+"' ";
				if(j==0){
					liTemp2 += "class='firstChild'";
				}
				liTemp2 += "><span id='"+i+"n2name"+j+"'>"+n2.name+"</span>";
				liTemp2 += "<a data-toggle='modal' onclick='click_del_two(\""+n2.id+"\","+i+","+j+")' href='#dModal' ><span class='del'></span></a><a onclick='click_edit_two(\""+n2.id+"\","+i+","+j+")' href='#eModal' data-toggle='modal'><span class='edit'></span></a>";
				ttemp += liTemp2+"</li>";
			}
			ttemp += "<li id='"+i+"addtwo'><a onclick='click_add_two(\""+n1.id+"\","+i+")' href='#aModal' data-toggle='modal'><span class='add'></span></a></li>";
			
			liTemp1 += ttemp+"</ul></li>";
			
			$(".menu-one1").append(liTemp1);
		}
		
			
			var n1add = "<li id='addone'> <div class='header'><a onclick='click_add_one()' href='#aModal' data-toggle='modal'><span class='add'></span></a></div></li>";
			
			$(".menu-one1").append(n1add);
			
			setHover();
			setStyle();
			
	}
	
	function setHover(){
			$(".add").hover(
				function(){
					$(this).css("background","url(img/page_add_over.png) no-repeat center center");
				},
				function(){
					$(this).css("background","url(img/page_add_out.png) no-repeat center center");
				}
			);
			
			$(".del").hover(
				function(){
					$(this).css("background","url(img/page_del_over.png) no-repeat center center");
				},
				function(){
					$(this).css("background","url(img/page_del_out.png) no-repeat center center");
				}
			);
			
			$(".edit").hover(
				function(){
					$(this).css("background","url(img/page_edit_over.png) no-repeat center center");
				},
				function(){
					$(this).css("background","url(img/page_edit_out.png) no-repeat center center");
				}
			);
	}
	
	
	function addToList(id,name){
		var liTemp1 = "<li id='"+(ii)+"one' ";
		liTemp1 += "><div class='header'> <span class='txt'>"+name+"</span> <span class='arrow'></span>";
		liTemp1 += "<a onclick='click_del_one(\""+id+"\","+ii+")' href='#dModal' data-toggle='modal'><span class='del'></span></a>";
		liTemp1 += "</div><ul id='menu-two"+ii+"' class='menu-two1'>";
		var ttemp = "<li id='"+ii+"addtwo'><a onclick='click_add_two(\""+id+"\","+ii+")' href='#aModal' data-toggle='modal'><span class='add'></span></a></li>";
		liTemp1 += ttemp+"</ul></li>";						
		$("#addone").before(liTemp1);
		ii++;
	}
	
	function addToList1(id,name){
		var liTemp2 = "<li id='"+ii+"two"+jj+"' ";		
		liTemp2 += "><span>"+name+"</span>";
		liTemp2 += "<a onclick='click_del_two(\""+id+"\","+ii+","+jj+")' href='#dModal' data-toggle='modal'><span class='del'></span></a></li>";
		$("#"+jj+"addtwo").before(liTemp2);
	}
	///////////////////增加//////////////////////
	function click_add(){
      	var name = $("#nm").val();
      	var urll = $("#url").val();
      	
      	var valid = checkLength($("#nmhint"),name,3,10);
      	if(!isAddOne)
      		valid = valid && checkLength($("#urlhint"),urll,6,40);
      	if(valid){
      		$("#addsure").attr("data-dismiss","modal");
      		$.ajax({
				type:"POST",
				url:"page_add.action",
				data:"name="+name+"&url="+urll+"&pid="+ppid,
				success:function(obj){
					if(obj.res != "no"){
						var id = obj.res;
						if(isAddOne){	
							addToList(id,name);
						}else{
							addToList1(id,name);
						}
						setHover();
						clearStyle();
						setStyle();			
						alert("添加成功");
					}else{
						alert("添加失败");
					}
					$("#nm").val("");
					$("#url").val("");
     				$("#nmhint").html("*必填");
      				$("#urlhint").html("*必填");
      				$("#nmhint").css("color","#9b9b9b");
      				$("#urlhint").css("color","#9b9b9b");
				}
			});	
      	}else{
      		$("#addsure").attr("data-dismiss","");
      	}
	}
	///////////////////删除//////////////////////
	
	
	function click_del(){
		$.ajax({
			type:"POST",
			url:"page_del.action",
			data:"rightid="+delid,
			success:function(obj){
				if(obj.res=="yes")	{
					if(isDelOne){
						$("#"+deli+"one").remove();
					}else{
						$("#"+deli+"two"+delj).remove();	
					}
					alert("删除成功");
				}else{		
					alert("删除失败");
				}	
			}
		});
	}
	
	
	///////////////////编辑//////////////////////
	
	
	function click_edit(){
     	var name = $("#nm1").val();
		var	url = $("#url1").val();
			
		var valid = checkLength($("#nmhint1"),name,3,10);
      	if(!isEditOne)
      		valid = valid && checkLength($("#urlhint1"),url,6,40);
      	if(valid){
      		$("#editsure").attr("data-dismiss","modal");
      		$.ajax({
				type:"POST",
				url:"page_edit.action",
				data:"rightid="+rid+"&name="+name+"&url="+url,
					success:function(obj){
					if(obj.res=="yes"){
						if(isEditOne){
							$( "#"+editi+"n1name" ).html(name);
						}else{
							$("#"+editii+"n2name"+editjj).html(name);
						}
						alert("修改成功!");
					}else{			
						alert("修改失败!");
					}
     				$("#nmhint1").html("*必填");
      				$("#urlhint1").html("*必填");
      				$("#nmhint1").css("color","#9b9b9b");
      				$("#urlhint1").css("color","#9b9b9b");
					}
			});
      	}else{
      		$("#editsure").attr("data-dismiss","");
      	}
	}
	
	 function checkLength(o,v,min,max){
      	if(v.length<min || v.length>max){
      		o.html("长度必须在"+min+"到"+max+"之间.");
      		o.css("color","red");
      		return false;
      	}
      	return true;
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