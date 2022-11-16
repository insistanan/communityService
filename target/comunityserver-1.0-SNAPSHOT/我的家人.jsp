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
    <script type="text/javascript">
        $(function(){
            //在当前页面dom对象加载后，执行loadStudentData（）
            chaxun();
        })

        function chaxun(){
            var dizhi = "${sessionScope.user.dizhi}";
            var xiaoqu = "${sessionScope.user.xiaoqu}";
            var danwei = "${sessionScope.user.danwei}";
            var menpaihao = "${sessionScope.user.menpaihao}";
            $.ajax({
                url:"queryUser.do",
                type:"get",
                dataType:"json",
                success:function(data){
                    //清除旧的数据
                    $("#info").html("");
                    //增加新的数据
                    $.each(data,function(i,n) {
                            if ((n.dizhi) == dizhi &&(n.xiaoqu) == xiaoqu &&(n.danwei) == danwei &&(n.menpaihao) == menpaihao) {
                                $("#info").append("<tr>")
                                    .append("<td>" + n.xingming + "</td>")
                                    .append("<td>" + n.xingbie + "</td>")
                                    .append("<td>" + n.minzu + "</td>")
                                    .append("<td>" + n.nianling + "</td>")
                                    .append("<td>" + n.xiaoqu + "</td>")
                                    .append("<td>" + n.danwei + "</td>")
                                    .append("<td>" + n.menpaihao + "</td>")
                                    .append("<td>" + n.yonghu + "</td>")
                                    .append("<td>" + n.dizhi + "</td>")
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

        <jsp:include page="我的家人左侧菜单栏.jsp" flush="true"></jsp:include>

    </div>
    <%--    功能显示区--%>
    <div class="funcarea">
        <div class="uk-card uk-card-default" id="chakandangan">
            <div class="uk-card-body">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我的家人</p>
                <table class="uk-table uk-table-middle uk-table-justify" >
                    <thead>
                    <tr align="left">
                        <th>姓名</th>
                        <th>性别</th>
                        <th>民族</th>
                        <th>年龄</th>
                        <th>小区</th>
                        <th>单位</th>
                        <th>门牌号</th>
                        <th>用户名</th>
                        <th>所在城市</th>
                    </tr>
                    </thead>
                    <tbody id="info"  align="right">
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
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