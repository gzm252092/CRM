var hrdata;
	var hrdatasource;
	var maxItem = 7;
	var pageNum = -1;
		
	var currentPage = 1;
	var currentSelect=[];
  	function run(){
  		$.ajax({
				type:"POST",
				url:"hr_load.action",
				success:function(obj){
					hrdatasource = obj;;//深克隆JSOn数据
					hrdata = jQuery.extend(true,{},hrdatasource);
					other();
				}
			});
  	}
  	
  	function other(){
  			pageNum = Div((hrdata.hmv.lpvs.length-1),maxItem)+1;
			fillRole(hrdata.hmv.lrvs);
			fillCName(hrdata.hmv.lncvs);
			hidenameselect();
			fillTable(1,hrdata.hmv);
			
			setTotalInfo();
			$("#delbtn").hide();
			$("#editbtn").hide();
			
			$("#roleselect").change(function(){
			if($("#roleselect option:selected").html()=="客户"){
				shownameselect();
				
			}else{
				hidenameselect();
			}
		});
	}
  
	function fillTable(currentPage,td){
			clearTable();
			
			for(var i=(currentPage-1)*maxItem;i<currentPage*maxItem && i<td.lpvs.length;i++){
				var rowdata = td.lpvs[i];
				var row = "<tr";
				row += "><td>"+(i+1)+"</td><td><input id='item"+i+"'";
				 	if(currentSelect.indexOf(i)!=-1)
				 		row += " checked='ckecked' ";
				 	
				 	row +=" onclick='resetItems("+i+")' type='checkbox'  name='order[]'/></td><td class='row'>"
				 	+rowdata.id+"</td><td>"
				 	+rowdata.name+"</td><td>"
				 	+rowdata.pwd+"</td><td>"
				 	
				 	+rowdata.rolename+"</td></tr>";	
				 $("#tablebody").append(row);
			}
			resetA();
	}
		function fillCName(cnamedata){
			for(var i=0;i<cnamedata.length;i++){
				var option = "<option value='"+cnamedata[i].cid+"'";
				if(i==0){
					option += " selected='selected' ";
				}
				option += ">"+cnamedata[i].name+"</option>";
				$("#cnameselect").append(option);
			}
		}
		
		function fillRole(roledata){
			for(var i=0;i<roledata.length;i++){
				var option = "<option value='"+roledata[i].roleid+"'";
				if(i==0){
					option += " selected='selected' ";
				}
				option += ">"+roledata[i].rolename+"</option>";
				$("#roleselect").append(option);
			}
		}
	
	function setTotalInfo(){
			$("#tValue").html(" "+pageNum+" ");
			$("#tNotes").html(" "+hrdata.hmv.lpvs.length+" ");
		}
	function resetA(){		
			if(currentPage==1){
				$("#first").attr("href",null);
				$("#last").attr("href",null);
			}else{
				$("#first").attr("href","javascript:firstPage()");
				$("#last").attr("href","javascript:lastPage()");
			}
			if(currentPage==pageNum){
				$("#final").attr("href",null);
				$("#next").attr("href",null);
			}else{
				$("#final").attr("href","javascript:finalPage()");
				$("#next").attr("href","javascript:nextPage()");
			}
			
			
			
			$("#cValue").html(" "+currentPage+" ");
			var hint = " "+((currentPage-1)*maxItem+1)+" - "+(currentPage*maxItem)+" ";
			if(currentPage*maxItem>hrdata.hmv.lpvs.length)
				hint = " "+((currentPage-1)*maxItem+1)+" - "+(hrdata.hmv.lpvs.length)+" ";
			$("#cNotes").html(hint);
			$("#tablebody tr:odd").css("backgroundColor","#eeeeee");
			$("#tablebody tr:even").css("backgroundColor","#dddddd");
		}
	function clearTable(){
			 $("#tablebody tr").remove();
	}
	function firstPage(){
			
			currentPage = 1;
			fillTable(currentPage,hrdata.hmv);
		
		}
		function hidenameselect(){
			$("#newclient").hide();
			$("#ac").show();
		}
		function shownameselect(){
			$("#newclient").show();
			$("#ac").hide();
		}
		function nextPage(){
			
			if(currentPage==pageNum-1){
				finalPage();
				return;
			}
			currentPage += 1;
			fillTable(currentPage,hrdata.hmv);	
		
		}
		
		function finalPage(){
			currentPage = pageNum;
			fillTable(currentPage,hrdata.hmv);
			
		}
		
		function lastPage(){
			
			if(currentPage==2){
				firstPage();
				return;
			}
			currentPage -= 1;
			fillTable(currentPage,hrdata.hmv);
			
		}
	
	 function clickTotal(){
        	var targ = document.getElementById("total");
        	for(var i=(currentPage-1)*maxItem;i<currentPage*maxItem && i<hrdata.hmv.lpvs.length;i++){
        			document.getElementById("item"+i).checked=targ.checked;
        			resetItems(i);
        	}
        }
     
     function resetItems(i){
    	 	if(document.getElementById("item"+i).checked==true){
        		if(currentSelect.indexOf(i)!=-1)
        			return;
        		currentSelect[currentSelect.length] = i;
        	}else{
        		if(currentSelect.indexOf(i)==-1)
        			return;
        		currentSelect.remove(currentSelect.indexOf(i));
        	}
        	if(currentSelect.length>0){	
        		$("#delbtn").show();
				
        	}else{
        		$("#delbtn").hide();
        		
        	}
        	if(currentSelect.length == 1){
        		$("#editbtn").show();
        		
        	}else{
        		$("#editbtn").hide();
        	}
      }
      
      function clicksrhbtn(){
      	
      	var keywords = $("#keywords").val().trim();
      	findTarget(keywords);
      
      }
      function clickallbtn(){
      	hrdata = jQuery.extend(true,{},hrdatasource);
      	pageNum = Div((hrdata.hmv.lpvs.length-1),maxItem)+1;	
        currentPage = 1;
		setTotalInfo();
		fillTable(currentPage,hrdata.hmv);
      }
      
      function findTarget(keywords){
      	hrdata = jQuery.extend(true,{},hrdatasource);
      	var lpvs = hrdatasource.hmv.lpvs;
       
       
      	for(var i =0;i<lpvs.length;i++){
      		if((lpvs[i].id+"").indexOf(keywords)!=-1){
      			
      			continue;
      		}
      		if(lpvs[i].name.indexOf(keywords)!=-1){
      			
      			continue;
      		}
      		if(lpvs[i].pwd.indexOf(keywords)!=-1){
      			
      			continue;
      		}
      		if(lpvs[i].rolename.indexOf(keywords)!=-1){
      			
      			continue;
      		}
      		for(var j=0;j<hrdata.hmv.lpvs.length;j++){
      			if(hrdata.hmv.lpvs[j].id == lpvs[i].id){
      				hrdata.hmv.lpvs.remove(j);
      			}
      		}	
      	}
      	pageNum = Div((hrdata.hmv.lpvs.length-1),maxItem)+1;	
        currentPage = 1;
		setTotalInfo();
		fillTable(currentPage,hrdata.hmv);
      }
      
      function check_duplicate(o,nm){
    	 for(var i =0;i<hrdatasource.hmv.lpvs.length;i++){
    		 if(hrdatasource.hmv.lpvs[i].name == nm){
    			 o.html("该账号已存在！");
      			 o.css("color","red");
      			 return false;
    		 }
    	 }
    	 o.html("*必填");
      	 o.css("color","#9b9b9b");
      	 return true;
      }
      
      function click_add(){
      	var roleid = $("#roleselect option:selected").val();
      	var name = $("#nm").val();
      	var pwd = $("#pwd").val();
      	
      	var valid = true;
      	if(roleid != 7){
      		valid = checkLength($("#nmhint"),name,2,16);
      		valid = valid && check_duplicate($("#nmhint"),name);
      	}
      
      	valid = valid && checkLength($("#pwdhint"),pwd,2,20);
      	
      	if(valid){
      		$("#addsure").attr("data-dismiss","modal");
      		var namee;
      		if(roleid == 7){
      			namee = $("#cnameselect option:selected").html();
      			
      		
      		}else{
      			namee = name;
      		}
      		$.ajax({
				type:"POST",
				url:"hr_add.action",
				data:"name="+namee+"&pwd="+pwd+"&roleid="+$("#roleselect option:selected").val()+"&cid="+$("#cnameselect option:selected").val(),
				success:function(res){
								if(res.res != "-1"){
									var newtabledata={"id":res.res,"pwd":pwd,"name":namee,"rolename":$("#roleselect option:selected").html()};
									
									hrdatasource.hmv.lpvs[hrdatasource.hmv.lpvs.length] = newtabledata;
									hrdata = jQuery.extend(true,{},hrdatasource);
									
									//hrdata.hmv.lpvs[hrdata.hmv.lpvs.length] = newtabledata;
						
									pageNum = Div((hrdata.hmv.lpvs.length-1),maxItem)+1;	
        							currentPage = pageNum;
									setTotalInfo();
									fillTable(currentPage,hrdata.hmv);
									
									if($("#roleselect option:selected").val()==7)
										removeNewclient($("#cnameselect option:selected").val());
									alert("添加成功！");
								}else{
									alert("添加失败！");
								}
									$("#nm").val("");
									$("#pwd").val("");
     								$("#nmhint").html("*必填");
      								$("#pwdhint").html("*必填");
      								$("#nmhint").css("color","#9b9b9b");
      								$("#pwdhint").css("color","#9b9b9b");
      								document.getElementById("roleselect").childNodes[1].selected = true;
							}
							
						});	
      	}else{
      		$("#addsure").attr("data-dismiss","");
      	}
      }
      function removeNewclient(ccid){
			for(var i=0;i<hrdata.hmv.lncvs.length;i++){
				if(hrdata.hmv.lncvs[i].cid == ccid){
					
					hrdatasource.hmv.lncvs.remove(i);
					hrdata = jQuery.extend(true,{},hrdatasource);
									
					$("#cnameselect option").remove();
					fillCName(hrdata.hmv.lncvs);
					hidenameselect();
				}
			}
		}
      function checkLength(o,v,min,max){
      	if(v.length<min || v.length>max){
      		o.html("长度必须在"+min+"到"+max+"之间.");
      		o.css("color","red");
      		return false;
      	}else{
      		o.html("*必填");
      		o.css("color","#9b9b9b");
      		return true;
      	}
      }
      /////////////////////////////删除///////////////////////////////////////////////
     function click_del(){
     	var delTemp = [];
        	for(var i =0;i<currentSelect.length;i++){ 		
        		delTemp[i] = hrdata.hmv.lpvs[currentSelect[i]];
        	}
        	
        	executeDel(delTemp);
     }
       
       
      function executeDel(delTemp){
        	var temp = "";
        	for(var i=0;i<delTemp.length;i++){
        		temp += "pid="+delTemp[i].id+"&";
        		if(i != delTemp.length-1){
        			temp += "&";
        		}
        	}
        	$.ajax({
        		type:"POST",
        		url:"hr_del.action",
        		data:temp,
        		success:function(objj){			
        			if(objj.result == "yes"){      				
        				for(var j=0;j<delTemp.length;j++){				
        					for(var k=0;k<hrdatasource.hmv.lpvs.length;k++){
        						if(hrdatasource.hmv.lpvs[k].id == delTemp[j].id){
        							hrdatasource.hmv.lpvs.remove(k);
        						}
        					}					
        				}
						hrdata = jQuery.extend(true,{},hrdatasource);
        				$("#delbtn").hide();
        				$("#editbtn").hide();
        				currentSelect=[];
        				pageNum = Div((hrdata.hmv.lpvs.length-1),maxItem)+1;	
        				currentPage = 1;
						setTotalInfo();
						fillTable(currentPage,hrdata.hmv);	
        				
        				alert("删除成功!");
        			}else{
        				var temp = parseInt(objj.result);
        				alert("编号为："+temp+" 的人员删除失败!");
        			}
        		}
        	});
        }
        ////////////////////////////编辑/////////////////////////////////////
       function check_duplicate_edit(o,nm){
    	 for(var i =0;i<hrdatasource.hmv.lpvs.length;i++){
    		 if(hrdatasource.hmv.lpvs[i].name == nm && hrdatasource.hmv.lpvs[i].id != $("#account1").html()){
    			 o.html("该账号已存在！");
      			 o.css("color","red");
      			 return false;
    		 }
    	 }
    	 o.html("*必填");
      	 o.css("color","#9b9b9b");
      	 return true;
      }
        function clickeditbtn(){
        	var te = hrdata.hmv.lpvs[currentSelect[0]];
        	$("#account1").html(te.id);
        	fillRole1(hrdata.hmv.lrvs,te.rolename);
        	$("#pwd1").attr("value",te.pwd);
     		$("#nm1").attr("value",te.name);
        }
        function fillRole1(roledata,rolenamee){
			$("#roleselect1 option").remove();
			for(var i=0;i<roledata.length;i++){
				var option = "<option value='"+roledata[i].roleid+"'";
				if(roledata[i].rolename==rolenamee){
					option += " selected='selected' ";
				}
				option += ">"+roledata[i].rolename+"</option>";
				$("#roleselect1").append(option);
			}
		}
        function click_edit(){
        		var roleid = $("#roleselect1 option:selected").val();
      			var name = $("#nm1").val();
      			var pwd = $("#pwd1").val();
      			var valid = checkLength($("#nmhint1"),name,2,16);
      				valid = valid && check_duplicate_edit($("#nmhint1"),name);
      				valid = valid && checkLength($("#pwdhint1"),pwd,2,20);
      			if(valid){
      				$("#editsure").attr("data-dismiss","modal");
      				$.ajax({
      				type:"POST",
					url:"hr_edit.action",
					data:"id="+$("#account1").html()+"&pwd="+pwd+"&name="+name+"&roleid="+roleid,
							success:function(obj){
								if(obj.res == "yes"){
									var newtabledata={"id":$("#account1").html(),"pwd":pwd,"name":name,"rolename":$("#roleselect1 option:selected").html()};
									hrdatasource.hmv.lpvs[currentSelect[0]] = newtabledata;
									hrdata = jQuery.extend(true,{},hrdatasource);
									fillTable(currentPage,hrdata.hmv);						
									
									alert("修改成功!");
								}else{
									alert("修改失败!");
								}
								$("#nm1").val("");
								$("#pwd1").val("");
     							$("#nmhint1").html("*必填");
      							$("#pwdhint1").html("*必填");
      							$("#nmhint1").css("color","#9b9b9b");
      							$("#pwdhint1").css("color","#9b9b9b");
							}
							});
      			}else{
      				$("#editsure").attr("data-dismiss","");
      			}
        }
        function pagenumselect(){
        	maxItem = $("#pagenumselect option:selected").val();
        	pageNum = Div((hrdata.hmv.lpvs.length-1),maxItem)+1;	
        	currentPage = 1;
			setTotalInfo();
			fillTable(currentPage,hrdata.hmv);
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
  	 function Div(exp1, exp2) {
            var n1 = Math.round(exp1); //四舍五入  
            var n2 = Math.round(exp2); //四舍五入  
            var rslt = n1 / n2; //除  
            if (rslt >= 0) {
                rslt = Math.floor(rslt); //返回小于等于原rslt的最大整数。  
            }
            else {
                rslt = Math.ceil(rslt); //返回大于等于原rslt的最小整数。  
            }
            return rslt;
        }
  
  	$(document).ready(function () {		
			run();
		});