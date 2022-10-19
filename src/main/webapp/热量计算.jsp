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
    <link rel="stylesheet" href="static/css/uikit.min.css"/>
    <link rel="stylesheet" href="static/css/uikit-rtl.min.css"/>
    <link rel="stylesheet" href="static/css/下拉栏样式.css">
    <link rel="stylesheet" href="static/css/整体布局样式.css">
    <link rel="stylesheet" href="static/css/菜单卡片.css">
    <script src="static/js/highcharts.js"></script>
    <script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
    <%--    <script>--%>
    <%--    function f1(){--%>
    <%--        $(".funcarea").html("");--%>
    <%--        //增加新的数据--%>
    <%--        $(".funcarea").append("1234567846514564")--%>
    <%--    }--%>
<script>
    function  jisuan() {
        $("#jisuan").submit();
    }
</script>
</head>
<body marginheight="0px" marginwidth="0px">
<%--容器--%>
<div class="container">
    <%--    导航栏--%>
    <div class="daohang">
        <jsp:include page="头部栏.jsp" flush="true"></jsp:include>
    </div>
    <%--    左侧菜单栏--%>
    <div class="menu">

        <jsp:include page="我的健康左侧菜单栏.jsp" flush="true"></jsp:include>

    </div>
    <%--    功能显示区--%>
        <div class="funcarea">
        <div class="uk-card uk-card-default" id="reliangjisuan">
            <%--    header--%>
            <div class="uk-card-header">
                <p>热量计算</p>

            </div>
            <%--header--%>

            <%--    body--%>

            <div class="uk-card-body">
                <form class="uk-grid-small" action="kaluli.do" id="jisuan">
                <div class="uk-width-1-2@s">
                    食品：
                    <input class="uk-input" type="text" value="${food.shipinming}" name="shipinming" >
                </div>
                <div class="uk-width-1-4@s">
                    重量（克）：
                    <input class="uk-input" type="text" value="${food.zhongliang}" name="zhongliang">
                </div>
                <div class="uk-width-1-4@s">
                    热量：
                    <input class="uk-input" type="text" value="${food.kaluli}" name="kaluli" readonly="readonly">
                </div>
                </form>

                <%--        footer--%>
                <div class="uk-card-footer">

                    <div class="uk-margin">
                        <button class="uk-button uk-button-primary" type="button" onclick="jisuan()">计算</button>
                        <button class="uk-button uk-button-primary" type="button" onclick="window.location.href='static/html/常见食品的热量表.html'">常见食品的热量表</button>
                    </div>

                </div>
                <%--        footer--%>

            </div>
            <%--    body--%>
        </div>


</div>
</body>
</html>