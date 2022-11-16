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
    <link rel="stylesheet" href="static/css/下拉栏样式.css">
    <link rel="stylesheet" href="static/css/整体布局样式.css">
    <link rel="stylesheet" href="static/css/菜单卡片.css">
    <script src="static/js/highcharts.js"></script>
    <script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>

    <script type="text/javascript">
        $(function(){
            chaxun1();

        })

        function chaxun1(){
            var dizhi = "${sessionScope.user.dizhi}";
            var fuzexiaoqu = "${sessionScope.user.xiaoqu}";
            $.ajax({
                url:"queryFuzeren.do",
                type:"get",
                dataType:"json",
                success:function(data){
                    //清除旧的数据
                    $("#info").html("");
                    //增加新的数据
                    $.each(data,function(i,n) {
                            if ((n.dizhi) == dizhi || (n.fuzexiaoqu)==fuzexiaoqu) {
                                $("#info").append("<tr>")
                                    .append("<td>" + n.id + "</td>")
                                    .append("<td>" + n.name + "</td>")
                                    .append("<td>" + n.dizhi + "</td>")
                                    .append("<td>" + n.fuzexiaoqu + "</td>")
                                    .append("<td>" + n.dianhua + "</td>")
                                    .append("<td>" + n.youxiang + "</td>")
                                    .append("</tr>")
                            }
                        }
                    )

                }
            })
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

        <jsp:include page="联系负责人和医生左侧菜单栏.jsp" flush="true"></jsp:include>

    </div>
    <%--    功能显示区--%>
    <div class="funcarea">
        <div class="uk-card uk-card-default" id="xiaoqufuzeren">
            <div class="uk-card-body">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系小区负责人</p>
                <table class="uk-table uk-table-middle uk-table-justify" >
                    <thead>
                    <tr align="left">
                        <th>id</th>
                        <th>姓名</th>
                        <th>所在城市</th>
                        <th>负责小区</th>
                        <th>联系电话</th>
                        <th>邮箱</th>

                    </tr>
                    </thead>
                    <tbody id="info" align="right">
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>

                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>

                    </tr>

                    </tbody>

                </table>
            </div>

        </div>




    </div>


</div>
</body>
</html>