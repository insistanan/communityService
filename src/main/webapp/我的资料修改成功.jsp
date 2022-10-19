<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>title</title>
    <base href="<%=basePath%>"/>
    <link rel="stylesheet" href="static/css/body.css">
    <link rel="stylesheet" href="static/css/uikit.min.css" />
    <link rel="stylesheet" href="static/css/uikit-rtl.min.css" />
    <style>
        #jieguo{
            background-color: pink;
        }
    </style>
</head>
<body>
<div align="center">
    <div class="uk-card uk-card-default uk-card-body uk-width-1-2@m" id="jieguo">
        <h3 class="uk-card-title" align="center">资料修改成功</h3>
        <form action="updateUserRetun.do">
            <input type="hidden" name="yonghu" value="${user.yonghu}">
            <div class="uk-margin">
                <button class="uk-button uk-button-secondary">返回</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
