$(window).load(function() {

	$(".contente tr:odd").css('background', '#fff');
	$('.contente tr:even').css('background', '#f4f4f4');
    $("#com").hide();
    
	
	
	$(".newstep").click(function() {

	var tr = "<tr>" +
		"<td><input type='text' class='Wdate' name='svo.time' id='mftime' "+
		"onFocus='WdatePicker({isShowClear:false,dateFmt:\"yyyy-MM-dd\",readOnly:true})' /></td>"+
		"<td><input type='text' name='svo.content'/></td>"+
		"<td><input type='text' name='svo.result' /></td>" +
		"<td><input class='buttonsmall' type='button' onclick='javascript:sav(this)' value='保存'/></td>"+
		"</tr>";
																		
																	
		  $("#addt").append(tr);
		
	});
	
	$(".newlinkman").click(function() {

		var tr ="<tr><td><input type='text' name='linkman.name' /></td>" +
		"<td><select name='linkman.gender' ><option value='女'>女</option><option value='男'>男</option></select>"+
		"<td><input type='text' name='linkman.position' /></td>"+
		"<td><input type='text' name='linkman.tel'/></td>"+
		"<td><input type='text' name='linkman.memo' /></td>" +
		"<td><input type='button' onclick='javascript:addlink(this)' class='buttonsmall' id='sub' value='保存' /></td>"+
		"</tr>";
		

		$("#addlink").append(tr);
		
	});
	

});