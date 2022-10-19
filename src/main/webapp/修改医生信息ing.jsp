<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>社区健康档案服务平台后台管理</title>
    <base href="<%=basePath%>"/>
    <link rel="stylesheet" href="static/css/uikit.min.css"/>
    <link rel="stylesheet" href="static/css/uikit-rtl.min.css"/>
    <link rel="stylesheet" href="static/css/下拉栏样式1.css">
    <link rel="stylesheet" href="static/css/整体布局样式1.css">
    <link rel="stylesheet" href="static/css/菜单卡片.css">
    <script src="static/js/highcharts.js"></script>
    <script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
    <%--    <script>--%>
    <%--    function f1(){--%>
    <%--        $(".funcarea").html("");--%>
    <%--        //增加新的数据--%>
    <%--        $(".funcarea").append("1234567846514564")--%>
    <%--    }--%>

</head>
<body marginheight="0px" marginwidth="0px">
<%--容器--%>
<div class="container">
    <%--    导航栏--%>
    <div class="daohang">
        <jsp:include page="后台管理头部栏.jsp" flush="true"></jsp:include>
    </div>
    <%--    左侧菜单栏--%>
    <div class="menu">

        <jsp:include page="医生信息左侧菜单栏.jsp" flush="true"></jsp:include>

    </div>
    <%--    功能显示区--%>
    <div class="funcarea">
        <div class="uk-card uk-card-default" id="xiugaiyishengxinxi">
            <%--    header--%>
            <div class="uk-card-header">
                <p>修改医生信息</p>

            </div>
            <%--header--%>

            <%--    body--%>
            <div class="uk-card-body">
                <form action="updateDoctor.do">
                <div class="uk-margin">
                    <label class="uk-form-label" for="yishengxingming">医生姓名</label>
                    <div class="uk-form-controls">
                        <input class="uk-input uk-form-small uk-form-width-large" id="yishengxingming" type="text"  value="${doctor.yishengxingming}" name = "yishengxingming">
                    </div>
                </div>

                <div class="uk-margin">
                    <label class="uk-form-label" for="xingbie">性别</label>
                    <div class="uk-form-controls">
                        <input class="uk-input uk-form-small uk-form-width-large" id="xingbie" type="text"  name="xingbie" value="${doctor.xingbie}">
                    </div>
                </div>
                <div class="uk-margin">
                    <label class="uk-form-label" for="zhicheng">职称</label>
                    <div class="uk-form-controls">
                        <input class="uk-input uk-form-small uk-form-width-large" id="zhicheng" type="text"  name="zhicheng" value="${doctor.zhicheng}">
                    </div>
                </div>
                <div class="uk-margin">
                    <label class="uk-form-label" for="lianxidianhua">联系电话</label>
                    <div class="uk-form-controls">
                        <input class="uk-input uk-form-small uk-form-width-large" id="lianxidianhua" type="text" value="${doctor.lianxidianhua}" name="lianxidianhua">
                    </div>
                </div>
                <div class="uk-margin">
                    <label class="uk-form-label" for="jianjie">简介</label>
                    <div class="uk-form-controls">
                        <input class="uk-input uk-form-small " size="200" id="jianjie" type="text"  value="${doctor.jianjie}" name="jianjie">
                    </div>
                </div>
                <div class="uk-margin">
                    <label class="uk-form-label" for="dizhi">所在城市</label>
                    <div class="uk-form-controls">
                        <input class="uk-input uk-form-small uk-form-width-large" id="dizhi" type="text" value="${doctor.dizhi}" name="dizhi">
                    </div>
                </div>
                <div class="uk-margin">
                    <label class="uk-form-label" for="youxiang">邮箱</label>
                    <div class="uk-form-controls">
                        <input class="uk-input uk-form-small uk-form-width-large" id="youxiang" type="text" value="${doctor.youxiang}" name="youxiang">
                    </div>
                </div>

                <input type="hidden" name="id" value="${doctor.id}">


                <%--        footer--%>
                <div class="uk-card-footer">
                    <div class="uk-margin">
                        <button class="uk-button uk-button-primary">提交</button>
                    </div>
                </div>
                <%--        footer--%>
                </form>
            </div>
            <%--    body--%>
        </div>




    </div>


</div>
</body>
</html>