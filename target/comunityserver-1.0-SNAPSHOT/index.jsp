<%--
  Created by IntelliJ IDEA.
  User: yzn__
  Date: 2022/4/17
  Time: 19:59
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
    <title>社区健康档案管理平台首页</title>
    <base href="<%=basePath%>" />
    <link rel="stylesheet" href="static/css/body.css">
    <script src="static/js/highcharts.js"></script>
    <script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="static/css/uikit.min.css" />
    <link rel="stylesheet" href="static/css/uikit-rtl.min.css" />
    <script src="static/js/uikit.min.js"></script>
    <script src="static/js/uikit-icons.min.js"></script>

</head>
<body>
<%
    response.sendRedirect("login.jsp");
%>

</body>
</html>
