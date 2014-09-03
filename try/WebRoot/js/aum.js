	
	var tempAuth=[];
	var auth = []
	
	
	var authdata;
		
	$(function(){
		$.ajax({
			type:"POST",
			url:"auth_load.action",
			success:function(obj){
				authdata = obj.amv;
				fillTabs(authdata.lravs);
				
				
				
				$("a:contains('保存')").hide();
				$("a:contains('保存')").click(function(){
					exeMod(parseInt($(this).attr('id').charAt(4)));
				});
			}
		});
	});
	
	function cop(a2){
		var a1 =[];
		for(var i = 0;i<a2.length;i++){
			var a11 = [];
			for(var j=0;j<a2[i].length;j++){
				a11[j] = a2[i][j];
			}
			a1[i] = a11;
		}
		return a1;
	}
	function exeMod(sid){
		var data = "roleid="+authdata.lravs[sid].roleid;
		tempAuth[sid]
		for(var i=0;i<tempAuth[sid].length;i++){
			data += "&rightid="+tempAuth[sid][i];
		}
		$.ajax({
			type:"POST",
			url:"auth_mod.action",
			data:data,
			success:function(obj){
				if(obj.res=="yes"){
					$("a:contains('保存')").hide();
					alert("保存成功");
					auth = cop(tempAuth);
				}
				else{
					alert("保存失败");
				}
				
				
			}
		});
	}
	
   	function fillTabs(roledata){   	
		for(var i=0;i<roledata.length;i++){	
			var li = "<li";
			if(i==0){
				li += " class='active'"
			}
			li += "><a href='#tab"+i+"' data-toggle='tab'>"+roledata[i].rolename+"</a></li>";			
			var treenodes = roledata[i].lomvs;					
			var content = "<div";
			if(i==0){
				content += " class='tab-pane active'";
			}else{
				content += " class='tab-pane'";
			}
			content += " id='tab"+i+"'><div class='content'><ul id='menu"+i+"' class='menu-one'>"+initTree(treenodes,i)+"</ul></div>";
			content += "<a id='save"+i+"' role='button' class='btn' data-toggle='modal'>保存</a></div>";			
			$("#tabstitle").append(li);
			$("#tabscontent").append(content);
			
		}
		setTreeStyle(roledata);
	}
	
	function setDetail(aMenuOneLi,aMenuTwo,temp){
		temp.each(function (i) {
			$(this).click(function () {
				
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
			});
		});
	}
	
	
	function setTreeStyle(roledata){	
		for(var i=0;i<roledata.length;i++){	
			setDetail($("#"+"menu"+i+" > li"),$("#"+"menu"+i+" .menu-two"),$("#"+"menu"+i+" > li > .header .arrow"));	
		}
	}
	function initTree(treenodes,num){
		var content = "";
		var tempAuth2 = [];
		var auth2 = [];
		for(var i=0;i<treenodes.length;i++){
			var n1 = treenodes[i];
			var liTemp1 = "<li ";
			if(i==0){
				liTemp1 += "class='firstChild'";
			}
			liTemp1 += "><div class='header'> <span class='txt'>"+n1.name+"</span>"
			+" <span class='arrow'></span>"
			+"<a href='javascript:selectOneAuth(\""+n1.id+"\","+i+","+num+")'><span id='"+i+"one"+num+"' class='cb_yes'></span></a>";
			
			liTemp1 += "</div><ul class='menu-two'>";
			
			for(var j=0;j<n1.ltmvs.length;j++){
				var n2 = n1.ltmvs[j];
				var liTemp2 = "<li ";
				if(j==0){
					liTemp2 += "class='firstChild'";
				}
				liTemp2 += "><span>"+n2.name+"</span>";
				liTemp2 += "<a href='javascript:selectTwoAuth(\""+n2.id+"\","+i+","+j+","+num+")'><span id='"+i+"two"+j+"two"+num+"' class='"+(n2.denyed=="yes"?"cb_yes":"cb_no")+"'></span></a>";
				
				if(n2.denyed=="no"){
					tempAuth2.push(n2.id);
					auth2.push(n2.id);
				}
				liTemp1 += liTemp2+"</li>";
			}
			
			liTemp1 += "</ul></li>";
			content += liTemp1;
		}
		
		tempAuth.push(tempAuth2);
		auth.push(auth2);
		return content;
	}
	
	
	function selectOneAuth(id,i,num){
		var k = authdata.lravs[num].lomvs[i].ltmvs.length;
		var temp = $("#"+i+"one"+num).attr("class");
		if(temp=="cb_yes"){
			$("#"+i+"one"+num).attr("class","cb_no");
			for(var j=0;j<k;j++){
				$("#"+i+"two"+j+"two"+num).attr("class","cb_no");	
				resetArray(authdata.lravs[num].lomvs[i].ltmvs[j].id,num,2);
			}
		}else{
			$("#"+i+"one"+num).attr("class","cb_yes");
			for(var j=0;j<k;j++){
				$("#"+i+"two"+j+"two"+num).attr("class","cb_yes");
				
				resetArray(authdata.lravs[num].lomvs[i].ltmvs[j].id,num,3);
			}
		}
	}
	function selectTwoAuth(id,i,j,num){
		var temp = $("#"+i+"two"+j+"two"+num).attr("class");
		if(temp=="cb_no")
			$("#"+i+"two"+j+"two"+num).attr("class","cb_yes");
		else
			$("#"+i+"two"+j+"two"+num).attr("class","cb_no");
			
		resetArray(id,num,1);
	}
	
	function compareArray(a1,a2){
		if(a1.length != a2.length)
			return false;
		for(var i=0;i<a1.length;i++){
			if(a2.indexOf(a1[i])==-1){
				return false;
			}
		}
		return true;
	}
	
	function resetArray(id,num,which){//which,1:selectTwoAuth,2:addToarray,3:removeToArray
		var id = parseInt(id);
		if(tempAuth[num].indexOf(id) != -1){
			if(which!=2){	
					tempAuth[num].remove(tempAuth[num].indexOf(id));
					
			}
		}else{
			if(which!=3){
					tempAuth[num][tempAuth[num].length] = id;
			}
		}
		if(!compareArray(tempAuth[num],auth[num])){				
				$( "#"+"save"+num ).show();
		}else{
				$( "#"+"save"+num ).hide();		
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