<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>折叠菜单</title>
	<link href="css/stylesheets.css" rel="stylesheet" type="text/css" />
	<style type="text/css">	
		.content1 {margin: 50px auto; width: 220px; height: auto;}
		.content1 > ul {list-style: none;}
		.content1 .menu-one1 > li {width: 220px; height: auto; overflow: hidden; border-top: 1px solid #888;}
		.content1 .menu-one1 > li.firstChild {border: 0;}
		.content1 .menu-one1 .header {height: 35px; background: #666; line-height: 34px; text-indent: 15px; cursor: pointer;}
		
		.content1 .menu-one1 .header > span {display: block;}
		.content1 .menu-one1 .header .txt {float: left; color: #fff;}
		.content1 .menu-one1 .header .arrow {float: right; width: 35px; height: 35px; background: url(img/arrow-d.png) no-repeat center center;}
		.content1 .menu-one1 .header .edit{float: right; width: 35px; height: 35px; background: url(img/page_edit_out.png) no-repeat center center;}
		.content1 .menu-one1 .header .del{float: right; width: 35px; height: 35px; background: url(img/page_del_out.png) no-repeat center center;}
		.content1 .menu-one1 .header .add{float: right; width: 35px; height: 35px; background: url(img/page_add_out.png) no-repeat center center;}
		
		
		
		.content1 .menu-two1  .add{float: right; width: 35px; height: 35px; background: url(img/page_add_out.png) no-repeat center center;}
		
		.content1 .menu-two1 .del{float:right;width: 35px; height: 35px; background: url(img/page_del_out.png) no-repeat center center;}
		.content1 .menu-two1 .edit{float:right; width: 35px; height: 35px; background: url(img/page_edit_out.png) no-repeat center center;}
		
		
		.content1 .menu-two1 {position:relative;right:25px;display: none; width: 220px; height: auto;}
		.content1 .menu-two1 li {width:220px; height:35px; background: #eee; border-top: 1px solid #ccc; line-height: 34px; text-indent: 40px;}
		.content1 .menu-two1 li.firstChild {border: 0;}
		.special {display: block; color: #888;}
		
		.content1 .menu-show .header {background: #777;}
		.content1 .menu-show .header .arrow {background-image: url(img/arrow-u.png);}

	</style>
</head>
<body style="padding-left:100px;padding-top:40px;padding-right:100px;">
<div id="loader">
			<img src="img/loader.gif" />
		</div>
		
		<div class="page-header">
                    <div class="icon">
                        <span class="ico-chart-2"></span>
                    </div>
                    <h1>页面管理<small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>
                </div>
		
	<!-- 新增对话框 -->
	<div id="aModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel1"></h3>
            </div>        
            <div class="row-fluid">
                <div class="block-fluid">
                	
                    <div class="row-form">
                        <div class="span12">
                            <span id="pagetitle" class="top title">页面名称:</span>
                            <input type="text" id="nm" name="nm" value=""/>
                            <span id="nmhint" class="bottom">*必填</span>
                        </div>
                    </div>                
                    <div id="pageurl" class="row-form">
                        <div class="span12">
                            <span class="top title">页面路径:</span>
                            <input type="text" id="url" name="url" value=""/>
                            <span id="urlhint" class="bottom">*必填</span>
                        </div>
                    </div>   
                    
                </div>
            </div>                   
            <div class="modal-footer">
                <button class="btn" id="addsure" onclick="click_add()"  data-dismiss="modal"   aria-hidden="true">新增</button> 
                <button  data-dismiss="modal" class="btn " aria-hidden="true">取消</button>            
            </div>
        
        </div>      

	<!-- 删除对话框 -->
   <div id="dModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel2"></h3>
            </div>
            <div class="modal-body">
                <p id="delhint"></p>
            </div>
            <div class="modal-footer">
                <button onclick="click_del()" class="btn" data-dismiss="modal" aria-hidden="true">删除</button> 
                <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>            
            </div>
   </div>     

  <!-- 编辑对话框 -->
        <div id="eModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            
           
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel3"></h3>
            </div>        
            <div class="row-fluid">
                <div class="block-fluid">
                	<div class="row-form">
                        <div class="span12">
                            <span id="pagelabel1" class="top title"> </span>
                            <h3 id="pageid1" style="font-size:30px;padding-left:20px;">  </h3>         
                        </div>
                        
                    </div>                 
                    
                   <div class="row-form">
                        <div class="span12">
                            <span id="pagetitle1" class="top title"></span>
                            <input type="text" id="nm1" name="nm" value=""/>
                            <span id="nmhint1" class="bottom">*必填</span>
                        </div>
                    </div>                
                    <div id="pageurl1" class="row-form">
                        <div class="span12">
                            <span class="top title">页面路径:</span>
                            <input type="text" id="url1" name="url" value=""/>
                            <span id="urlhint1" class="bottom">*必填</span>
                        </div>
                    </div>   
                    
                </div>
            </div>                   
            <div class="modal-footer">
                <button class="btn" id="editsure" onclick="click_edit()"  data-dismiss="modal"   aria-hidden="true">保存</button> 
                <button  data-dismiss="modal" class="btn" aria-hidden="true">取消</button>            
            </div>
        
        </div>      
					
					<div class="content1">
						<ul class="menu-one1">
						</ul>
					</div>

<script type="text/javascript" src="js/jquery-1.10.1.min.js">
</script>
		<script type='text/javascript'
			src='js/plugins/jquery/jquery-1.9.1.min.js'>
</script>
		<script type='text/javascript'
			src='js/plugins/jquery/jquery-ui-1.10.1.custom.min.js'>
</script>
		<script type='text/javascript'
			src='js/plugins/jquery/jquery-migrate-1.1.1.min.js'>
</script>
		<script type='text/javascript' src='js/plugins/jquery/globalize.js'>
</script>
		<script type='text/javascript' src='js/plugins/other/excanvas.js'>
</script>

		<script type='text/javascript'
			src='js/plugins/other/jquery.mousewheel.min.js'>
</script>

		<script type='text/javascript'
			src='js/plugins/bootstrap/bootstrap.min.js'>
</script>

		<script type='text/javascript'
			src='js/plugins/cookies/jquery.cookies.2.2.0.min.js'>
</script>

		<script type='text/javascript' src='js/plugins/jflot/jquery.flot.js'>
</script>
		<script type='text/javascript'
			src='js/plugins/jflot/jquery.flot.stack.js'>
</script>
		<script type='text/javascript'
			src='js/plugins/jflot/jquery.flot.pie.js'>
</script>
		<script type='text/javascript'
			src='js/plugins/jflot/jquery.flot.resize.js'>
</script>

		<script type='text/javascript'
			src='js/plugins/sparklines/jquery.sparkline.min.js'>
</script>

		<script type='text/javascript'
			src='js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js'>
</script>

		<script type='text/javascript'
			src="js/plugins/uniform/jquery.uniform.min.js">
</script>

		<script type='text/javascript' src='js/plugins/shbrush/XRegExp.js'>
</script>
		<script type='text/javascript' src='js/plugins/shbrush/shCore.js'>
</script>
		<script type='text/javascript' src='js/plugins/shbrush/shBrushXml.js'>
</script>
		<script type='text/javascript'
			src='js/plugins/shbrush/shBrushJScript.js'>
</script>
		<script type='text/javascript' src='js/plugins/shbrush/shBrushCss.js'>
</script>

		<script type='text/javascript' src='js/plugins.js'>
</script>
		
		<script type='text/javascript' src='js/zchart.js'>
</script>

		<script type='text/javascript' src='js/actions.js'>
</script>

		<script type="text/javascript" src="js/slider.js">
		</script>
		<script type='text/javascript' src='js/plugins/other/faq.js'>
</script>
     <script type='text/javascript' src='js/table.js'>
</script>

<script language="javascript" type="text/javascript"
	src="My97DatePicker/WdatePicker.js">
</script>
<script type="text/javascript" src="js/pam.js">
	
</script>
</body>
</html>