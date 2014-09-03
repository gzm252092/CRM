<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'frame.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  		<frameset frameborder="0" cols="250,*" id="fraContent">
            <frame  noresize scrolling="no" name="left" src="left.jsp" />
            <frameset  rows="150,*">
            	<frame name="top" scrolling="no" src="top.jsp"></frame>
            	<c:if test="${sessionScope.roleid=='8'}">   
            	<frame scrolling="no" style="padding-bottom:0px;overflow-y:auto;" name="bottom" src="hrm.jsp"></frame>
            	 </c:if>
            	 
            	<c:if test="${sessionScope.roleid=='1'||sessionScope.roleid=='3'||sessionScope.roleid=='5'}">   

            	<frame id="work" scrolling="auto"   style="padding-top:10px;padding-bottom:0px;height:auto;" name="bottom" src="clientlist.jsp" ></frame>

            	 </c:if>
            	<c:if test="${sessionScope.roleid=='2'||sessionScope.roleid=='4'||sessionScope.roleid=='6'}">   
            	<frame id="work" scrolling="auto"  style="padding-top:5px;padding-bottom:0px;height:auto;" name="bottom" src="clientlist.jsp" ></frame>

            	 </c:if>


<!-- 
            	 <c:if test="${sessionScope.roleid=='8'}">   
            	<frame scrolling="no" style="padding-bottom:10px;" name="bottom" src="hrm.jsp" style="overflow-y:auto"></frame>
            	 </c:if>
 -->
            </frameset>
        </frameset>
</html>

