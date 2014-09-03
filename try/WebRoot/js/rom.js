
   var roledata;
   var currentSelect=[];
  
   function run(){
  		$.ajax({
				type:"POST",
				url:"role_load.action",
				success:function(obj){
					roledata = obj;;//深克隆JSOn数据
					fillTable(roledata.rmv.lrvs);
					$("#editbtn").hide();
					$("#delbtn").hide();
				}
			});
  	}
  	
	function fillTable(td){	
			$("#tablebody tr").remove();
			for(var i=0;i<td.length;i++){
				var rowdata = td[i];
				 var row = "<tr><td>"
				 	+(i+1)+"</td><td><input id='item"+i+"'";
				 	if(currentSelect.indexOf(i)!=-1)
				 		row += " checked='ckecked' ";
				 	
				 	row +=" onclick='resetItems("+i+")' type='checkbox'  name='order[]'/></td><td>"
				 	+rowdata.roleid+"</td><td>"
				 	+rowdata.rolename+"</td></tr>";	
				 $("#tablebody").append(row);
			}
			$("#tablebody tr:odd").css("backgroundColor","#eeeeee");
			$("#tablebody tr:even").css("backgroundColor","#dddddd");
	}
	
	 function clickTotal(){
        	var targ = document.getElementById("total");
        	for(var i=0; i<roledata.rmv.lrvs.length;i++){
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
     function check_duplicate(o,name){
    	 for(var i =0;i<roledata.rmv.lrvs.length;i++){
    		 if(roledata.rmv.lrvs[i].rolename == name){
    			 o.html("改角色已存在！");
      			 o.css("color","red");
      			 return false;
    		 }
    	 }
    	 o.html("*必填");
      	 o.css("color","#9b9b9b");
      	 return true;
     }
     /////////////////////增加/////////////////////////
      function click_add(){
      	var name = $("#nm").val();
      	
      	var valid = checkLength($("#nmhint"),name,2,8);
      	valid = valid && check_duplicate($("#nmhint"),name);
      	if(valid){
      		$("#addsure").attr("data-dismiss","modal");
      		$.ajax({
				type:"POST",
				url:"role_add.action",
				data:"rolename="+name,
				success:function(res){
					if(res.res != "no"){
						var newtabledata={"roleid":res.res,"rolename":name};
						roledata.rmv.lrvs[roledata.rmv.lrvs.length]=newtabledata;					
						fillTable(roledata.rmv.lrvs);
						alert("添加成功！");
					}else{
						alert("添加失败！");
					}
						$("#nm").val("");
     					$("#nmhint").html("*必填");
      					$("#nmhint").css("color","#9b9b9b");
      								
				}
							
			});	
      	}else{
      		$("#addsure").attr("data-dismiss","");
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
        
         /////////////////////删除/////////////////////////
        
        function click_del(){
     		var delTemp = [];
     		
        	for(var i =0;i<currentSelect.length;i++){ 		
        		delTemp[i] = roledata.rmv.lrvs[currentSelect[i]];
        	}
        	
        	executeDel(delTemp);
     	}
       
       
      function executeDel(delTemp){
        	var temp = "";
        	for(var i=0;i<delTemp.length;i++){
        		temp += "roleid="+delTemp[i].roleid;
        		if(i != delTemp.length-1){
        			temp += "&";
        		}
        	}      	
        	$.ajax({
        		type:"POST",
        		url:"role_del.action",
        		data:temp,
        		success:function(objj){			
        			if(objj.res == "yes"){      				
        				for(var j=0;j<delTemp.length;j++){	
        					roledata.rmv.lrvs.remove(roledata.rmv.lrvs.indexOf(delTemp[j]));				
        				}
        				$("#delbtn").hide();
        				$("#editbtn").hide();
        				currentSelect=[];
        				
						fillTable(roledata.rmv.lrvs);
        				
        				alert("删除成功!");
        			}else{
        				var temp = parseInt(objj.result);
        				alert("编号为："+temp+" 的角色删除失败!");
        			}
        		}
        	});
        }
        /////////////////////编辑/////////////////////////
       function check_duplicate_edit(o,name){
    	 for(var i =0;i<roledata.rmv.lrvs.length;i++){
    		 if(roledata.rmv.lrvs[i].rolename == name && $("#account1").html() != roledata.rmv.lrvs[i].roleid){
    			 o.html("改角色已存在！");
      			 o.css("color","red");
      			 return false;
    		 }
    	 }
    	 o.html("*必填");
      	 o.css("color","#9b9b9b");
      	 return true;
     }
         function clickeditbtn(){
        	var te = roledata.rmv.lrvs[currentSelect[0]];
        	$("#account1").html(te.roleid);
     		$("#nm1").val(te.rolename);
        }
      
        function click_edit(){
        		
      			var name = $("#nm1").val();
      			
      			var valid = checkLength($("#nmhint1"),name,2,8);
      			valid = valid && check_duplicate_edit($("#nmhint1"),name);
      			if(valid){
      				$("#editsure").attr("data-dismiss","modal");
      				$.ajax({
      				type:"POST",
					url:"role_edit.action",
					data:"roleid="+$("#account1").html()+"&rolename="+name,
							success:function(obj){
								if(obj.res == "yes"){
									var newtabledata={"roleid":$("#account1").html(),"rolename":name};
									roledata.rmv.lrvs[currentSelect[0]] = newtabledata;
									
									fillTable(roledata.rmv.lrvs);					
									
									alert("修改成功!");
								}else{
									alert("修改失败!");
								}
								$("#nm1").val("");
     							$("#nmhint1").html("*必填");
      							$("#nmhint1").css("color","#9b9b9b");
							}
					});
      			}else{
      				$("#editsure").attr("data-dismiss","");
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
  
  	$(document).ready(function () {		
			run();
		});