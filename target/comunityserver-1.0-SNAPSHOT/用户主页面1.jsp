<%--
  Created by IntelliJ IDEA.
  User: yzn__
  Date: 2022/4/30
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>社区健康档案服务平台</title>
    <base href="<%=basePath%>"/>
    <link rel="stylesheet" href="static/css/uikit.min.css" />
    <link rel="stylesheet" href="static/css/uikit-rtl.min.css" />
    <link rel="stylesheet" href="static/css/下拉栏样式.css">
    <link rel="stylesheet" href="static/css/整体布局样式.css">
    <link rel="stylesheet" href="static/css/菜单卡片.css">


<%--    <script>--%>
<%--    function f1(){--%>
<%--        $(".funcarea").html("");--%>
<%--        //增加新的数据--%>
<%--        $(".funcarea").append("1234567846514564")--%>
<%--    }--%>

</head>
<body marginheight="0px" marginwidth="0px">
<%--容器--%>
<div class="container" >
<%--    导航栏--%>
    <div class="daohang">
        <jsp:include page="头部栏1.jsp" flush="true"></jsp:include>
    </div>
<%--    左侧菜单栏--%>
    <div class="menu">

        <jsp:include page="左侧菜单栏.jsp" flush="true"></jsp:include>

    </div>
<%--    功能显示区--%>
    <div class="funcarea">




    </div>




</div>
</body>
</html>
