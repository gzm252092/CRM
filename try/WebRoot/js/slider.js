$(document).ready(function() {
	$.ajax({
		type:"POST",
		url:"navi.action",
		dataType:"json",
		success:function(obj){
			filltree(obj.lonvs);
			$(".datepicker").datepicker( {
				dateFormat : 'yy-mm-dd'
			});

			if ($("#datepicker").length > 0) {
					$("#datepicker").datepicker( {
						dateFormat : 'yy-mm-dd',
						onSelect : function(date) {
					//action
					}
				});
			}

		var aMenuOneLi = $(".menu-one > li");
		var aMenuTwo = $(".menu-two");
		$(".menu-one > li > .header").each(function(i) {
			$(this).click(function() {
				if ($(aMenuTwo[i]).css("display") == "block") {
					$(aMenuTwo[i]).slideUp(300);
					$(aMenuOneLi[i]).removeClass("menu-show");
				} else {
					for ( var j = 0; j < aMenuTwo.length; j++) {
						$(aMenuTwo[j]).slideUp(300);
						$(aMenuOneLi[j]).removeClass("menu-show");
					}
					$(aMenuTwo[i]).slideDown(300);
					$(aMenuOneLi[i]).addClass("menu-show");
				}
			});
		});
		}
	});
		//{"lonvs":[{"ltnvs":[{"name":"推广经理页面1","url":"############"}],"name":"推广经理页面"}]}
});


function filltree(treenodes) {
	//{"lonvs":[{"ltnvs":[{"name":"推广经理页面1","url":"############"}],"name":"推广经理页面"}]}
	for ( var i = 0; i < treenodes.length; i++) {

		var n1 = treenodes[i];
		var liTemp1 = "<li ";
		if (i == 0) {
			liTemp1 += "class='firstChild'";
		}
		liTemp1 += "><div class='header'> <span class='txt'>" + n1.name
				+ "</span> <span class='arrow'></span>";
		liTemp1 += "</div><ul class='menu-two'>";

		for ( var j = 0; j < n1.ltnvs.length; j++) {
			var n2 = n1.ltnvs[j];
			var liTemp2 = "<li ";
			if (j == 0) {
				liTemp2 += "class='firstChild'";
			}
			liTemp2 += "><a href='"+n2.url+"' target='bottom'>" + n2.name
					+ "</a>";
			liTemp1 += liTemp2 + "</li>";
		}
		liTemp1 += "</ul></li>";

		$(".menu-one").append(liTemp1);
	}

}