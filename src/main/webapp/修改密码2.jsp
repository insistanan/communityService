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
    <script>
        function test() {
            var nowmima =$("#nowmima").val();
            var adminmima = "${admin.mima}";
            var mima = $("#mima").val();


            if (mima =="" || mima ==null){
                alert("密码不能为空")
                return
            }
            if (nowmima == adminmima ){
                $("#for").submit();
            }
            else{
                alert("密码错误！")
            }

        }
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

            <%--        卡片head--%>
            <div class="uk-card uk-card-default" id="wodeziliao">

                <div class="uk-card-header">
                    <p>修改密码</p>

                </div>
                <%--            卡片head--%>

                <%--            卡片body--%>

                <div class="uk-card-body">
                    <form action="xiugaimima.do" id="for" method="post">
                        <div class="uk-margin">
                            <label class="uk-form-label" for="nowmima">输入现在的密码</label>
                            <div class="uk-form-controls">
                                <input class="uk-input uk-form-small uk-form-width-large" id="nowmima" type="password" >
                            </div>
                        </div>
                        <div class="uk-margin">
                            <label class="uk-form-label" for="mima">新密码</label>
                            <div class="uk-form-controls">
                                <input class="uk-input uk-form-small uk-form-width-large" id="mima" type="password"  name = "mima">
                            </div>
                        </div>
                        <%--卡片body--%>

                        <%--            卡片foot--%>
                        <div class="uk-card-footer">
                            <div class="uk-margin">
                                <input type="hidden" value="${admin.yonghu}" name="yonghu">

                            </div>
                            <button class="uk-button uk-button-primary"  type="button" onclick="test()">提交</button>
                        </div>

                    <%--            卡片foot--%>

                    </form>
                </div>
            </div>

        </div>


</div>

</body>

</html>