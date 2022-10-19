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
    <script type="text/javascript">
        $(document).ready(function(){
            alert("添加成功！");
        })
    </script>
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

        <jsp:include page="小区负责人信息左侧菜单栏.jsp" flush="true"></jsp:include>

    </div>
    <%--    功能显示区--%>
    <div class="funcarea">
        <div class="uk-card uk-card-default" id="zengjiafuzeren">
            <%--    header--%>
            <div class="uk-card-header">
                <p>增加小区负责人</p>

            </div>
            <%--header--%>

            <%--    body--%>
            <div class="uk-card-body">
                <form action="addFuzeren.do">
                    <div class="uk-margin">
                        <label class="uk-form-label" for="name">姓名</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="name" type="text"   name = "name">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="dianhua">联系电话</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="dianhua" type="text"   name = "dianhua">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="fuzexiaoqu">负责小区</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="fuzexiaoqu" type="text"   name = "fuzexiaoqu">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="youxiang">邮箱</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="youxiang" type="text"   name = "youxiang">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="dizhi">所在城市</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="dizhi" type="text"   name = "dizhi">
                        </div>
                        <br/>


                    <%--        footer--%>
                    <div class="uk-card-footer">
                        <div class="uk-margin">
                            <button class="uk-button uk-button-primary">添加</button>
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