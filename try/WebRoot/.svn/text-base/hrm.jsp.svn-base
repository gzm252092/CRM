<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
  <head>  
    <title>My JSP 'index.jsp' starting page</title>
    <link href="css/stylesheets.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body style="padding-left:100px;padding-top:40px;padding-right:100px;" >
  <div id="loader">
			<img src="img/loader.gif" />
		</div>
		
		<div class="page-header">
                    <div class="icon">
                        <span class="ico-chart-2"></span>
                    </div>
                    <h1>人员管理 <small>CUSTOMER RELATIONSHIP MANAGEMENT</small></h1>
                </div>
  
   <!-- 新增对话框 -->
        <div id="aModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            
           
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel">新增人员</h3>
            </div>        
            <div class="row-fluid">
                <div class="block-fluid">
                	
                    <div class="row-form">
                        <div class="span12">
                            <span class="top title">角色:</span>
                            <select id="roleselect">
							</select>     
							 <span  class="bottom">*必填</span>             
                        </div>
                        
                    </div>
                    <div id="newclient" class="row-form">
                        <div class="span12">
                           <span class="top title">待处理客户:</span>
                            <select id="cnameselect">
							</select> 
							 <span  class="bottom">*必填</span>  
                        </div>
                    </div>
                    
                    <div id="ac" class="row-form">
                        <div class="span12">
                            <span class="top title">账号:</span>
                            <input type="text" id="nm" name="nm" value=""/>
                            <span id="nmhint" class="bottom">*必填</span>
                        </div>
                    </div>                
                    <div class="row-form">
                        <div class="span12">
                            <span class="top title">密码:</span>
                            <input type="text" id="pwd" name="pwd" value=""/>
                            <span id="pwdhint" class="bottom">*必填</span>
                        </div>
                    </div>   
                    
                </div>
            </div>                   
            <div class="modal-footer">
                <button class="btn" id="addsure" onclick="click_add()"  data-dismiss="modal"   aria-hidden="true">新增</button> 
                <button  data-dismiss="modal" class="btn" aria-hidden="true">取消</button>            
            </div>
        
        </div>      
  
  
  <!-- 删除对话框 -->
   <div id="dModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel">删除人员</h3>
            </div>
            <div class="modal-body">
                <p>确定永久删除吗（不能恢复）.</p>
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
                <h3 id="myModalLabel" >编辑人员</h3>
            </div>        
            <div class="row-fluid">
                <div class="block-fluid">
                	<div class="row-form">
                        <div class="span12">
                            <span style="padding-top:8px" class="top title">编号  <span id="account1" style="font-size:30px;padding-left:10px;">   </span> </span>
                             
							             
                        </div>
                        
                    </div>
                	
                    <div class="row-form">
                        <div class="span12">
                            <span class="top title">角色:</span>
                            <select id="roleselect1">
							</select>     
							 <span  class="bottom">*必填</span>             
                        </div>
                        
                    </div>
                    
                    <div class="row-form">
                        <div class="span12">
                            <span class="top title">账号:</span>
                            <input type="text" id="nm1" name="nm" value=""/>
                            <span id="nmhint1" class="bottom">*必填</span>
                        </div>
                    </div>                
                    <div class="row-form">
                        <div class="span12">
                            <span class="top title">密码:</span>
                            <input type="text" id="pwd1" name="pwd" value=""/>
                            <span id="pwdhint1" class="bottom">*必填</span>
                        </div>
                    </div>   
                    
                </div>
            </div>                   
            <div class="modal-footer">
                <button class="btn" id="editsure" onclick="click_edit()"  data-dismiss="modal"   aria-hidden="true">保存</button> 
                <button  data-dismiss="modal" class="btn" aria-hidden="true">取消</button>            
            </div>
        
        </div>      
					
					 <div class="block" ">             
                            <div class="data-fluid">
                             
							<div class="row-form" style="float:left">  
                            <a href="#aModal" role="button" class="btn" data-toggle="modal">新建</a>
                            <a id="editbtn" onclick="clickeditbtn()" href="#eModal" role="button" class="btn" data-toggle="modal">编辑</a>
                             <a id="delbtn" href="#dModal" role="button" class="btn" data-toggle="modal">删除</a>
                              	</div>
                              	<div class="row-form" style="float:right">          
                                   
                                     <div class="span2"><input type="text" id="keywords" placeholder="关键字"/></div>
                                     <a id="srhbtn"  onclick="clicksrhbtn()" role="button" class="btn">查询</a> 
                                     <a id="allbtn"  onclick="clickallbtn()" role="button" class="btn">显示全部</a>
                                    	<span style="padding-left:10px;">每页显示:</span>
                                    	<select id='pagenumselect' onchange='pagenumselect()' style="width:65px;display:inline;" >
                                    		<option value="5">5条</option>
                                            <option value="6">6条</option>
                                            <option selected='selected' value="7">7条</option>
                                            <option value="8">8条</option>
                                            <option value="9">9条</option>
                                            <option value="10">10条</option>
                                    	</select>
                                     </div> 		
                             
                               
                              	<table cellpadding="0" cellspacing="0" width="100%" class="table">
                                    <thead>
                                        <tr style="background-color:#aeaeae;">	
                                        	<th width="10%">序号</th>
											<th width="10%" style="padding-left:4px;"><input id="total" type="checkbox"  onclick="clickTotal()"/></th>
											<th width="20%">编号</th>
											<th width="20%">账号</th>
											<th width="20%">密码</th>
											<th width="20%">角色</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tablebody">      
                                    </tbody>
                                </table>
                                
                                <div>
									<a id="first" style="margin-left:10px" href="javascript:firstPage()">第一页</a>
									<a id="last">上一页</a>
									<span id="current" >第<span id="cValue"></span>页</span>
									<span id="total">共<span id="tValue"></span>页</span>
									<a id="next" href="javascript:nextPage()">下一页</a>
									<a id="final" href="javascript:finalPage()">最终页</a>
									<span style="margin-left:250px;">当前显示第<span id="cNotes"></span>条记录，共<span id="tNotes"></span>条记录</span>
								</div>
                            </div>                
                        </div>            
  </body>
  
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
  <script type="text/javascript" src="js/hrm.js">
  	
  </script>
</html>
