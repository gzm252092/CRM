<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>Fullscreen Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        
        <link rel="stylesheet" href="login/css/reset.css">
        <link rel="stylesheet" href="login/css/supersized.css">
        <link rel="stylesheet" href="login/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->


    </head>

    <body>

        <div align="center" style="margin-top:20px"><img style="width:450px;height:300px" src="login/img/logo.png"></img></div>
        <div class="page-container" style="margin-top:10px" >
            <h1>Rose&you</h1>
            <form action="person_login" method="post">
                <input type="text" name="pvo.name" class="username" placeholder="Username">
                <input type="password" name="pvo.pwd" class="password" placeholder="Password">
                <button type="submit">登录</button>
                <div class="error"><span>+</span></div>
            </form>
            <div class="connect">
                <p> connect us:</p>
                <p>
                                                新浪微博
                    <a style="color:white;position:relative;margin-right:40px;" class="" href="http://weibo.com" >rose&you</a>
                </p>
            </div>
        </div>
       

        <!-- Javascript -->
        <script src="login/js/jquery-1.8.2.min.js"></script>
        <script src="login/js/supersized.3.2.7.min.js"></script>
        <script src="login/js/supersized-init.js"></script>
        <script src="login/js/scripts.js"></script>

    </body>

</html>
