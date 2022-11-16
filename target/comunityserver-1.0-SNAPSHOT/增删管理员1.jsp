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
            alert("操作成功！");
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

        <jsp:include page="后台管理左侧菜单栏.jsp" flush="true"></jsp:include>

    </div>
    <%--    功能显示区--%>
        <div class="funcarea">
            <div class="uk-card uk-card-default" >

                <div class="uk-card-header">
                    <p>增删管理员</p>

                </div>
                <div class="uk-card-body" >

                    <form action="addAdmin.do">
                        用户名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="用户名" class="uk-input uk-form-small uk-form-width-large" name="yonghu">
                        <div class="uk-margin">
                            <button class="uk-button uk-button-primary">设为管理员</button>
                        </div>
                    </form>
                    <div>
                        <form action="deleteAdmin.do">
                            用户名:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="用户名" class="uk-input uk-form-small uk-form-width-large" name="yonghu">
                            <div class="uk-margin">
                                <button class="uk-button uk-button-primary">取消管理员</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>







        </div>


</div>
</body>
</html>