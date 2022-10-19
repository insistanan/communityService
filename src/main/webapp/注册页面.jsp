<%--
  Created by IntelliJ IDEA.
  User: yzn__
  Date: 2022/4/23
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>注册</title>
    <base href="<%=basePath%>" />
    <link rel="stylesheet" href="static/css/body.css">
    <script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="static/css/uikit.min.css" />
    <link rel="stylesheet" href="static/css/uikit-rtl.min.css" />
    <script src="static/js/uikit.min.js"></script>
    <script src="static/js/uikit-icons.min.js"></script>
    <style>
        .errorinfo{
            color: red;
        }
    </style>
    <script>
        function login() {
            window.location.href = "login.jsp"
        }
    </script>
</head>
<body>
<div align="center">

    <div uk-height-viewport class="uk-section uk-section-small uk-flex uk-flex-middle uk-text-center" style="max-height: calc((100vh - 80px) - 0px);">
        <div class="uk-width-1-1">
            <div class="uk-container" style="max-width: 330px;">
                <p><svg width="90" height="83" viewBox="0 0 168 155" xmlns="http://www.w3.org/2000/svg" style="color: rgb(30,135,240);" class=" uk-svg" data-svg="/skin/ukv3/images/uikit-logo-large.svg">
                    <path fill="#fff" d="M117.4 33.3L93.3 47.9l27.8 15.8v41.5L83.8 126l-36.7-20.8V73L23 60.7v58.9l59.9 35.2 62.1-35.2V49.2l-27.6-15.9zM106.2 27.5L82.9 14 58.6 29.1l23.6 13z"></path>
                </svg></p>
                <p class="uk-text-lead">注册</p>
                <form action="register.do" method="post">
                    <div class="uk-margin">
                        <div class="uk-inline uk-width-1-1">
                            <span class="uk-form-icon" uk-icon="icon: user"></span>
                            <input class="uk-input" type="text" placeholder="用户名" name="yonghu" >
                        </div>
                    </div>
                    <div class="uk-margin">
                        <div class="uk-inline uk-width-1-1">
                            <span class="uk-form-icon" uk-icon="icon: lock"></span>
                            <input class="uk-input" type="password" placeholder="密码" name="mima" >
                        </div>
                    </div>
                    <button class="uk-button uk-button-primary uk-width-1-1" id="zhuce">注册</button>
                </form>
                <button class="uk-button uk-button-default uk-width-1-1" id="login" onclick="login()">登录</button>
                <div class="errorinfo">${error}</div>

                <p class="uk-margin-medium-top	"><a href="index.jsp">社区健康档案服务平台</a> &copy; 2021-2022</p>


            </div>
        </div>

    </div>
</div>
</body>
</html>
