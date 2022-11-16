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

        <script type="text/javascript">
            $(function(){
                //在当前页面dom对象加载后，执行loadStudentData（）
                chakandangan();

                $("#suoyoudangan").click(function(){
                    chakandangan();

                })
            })

            function chakandangan(){
                $.ajax({
                    url:"queryUser.do",
                    type:"get",
                    dataType:"json",
                    success:function(data){
                        //清除旧的数据
                        $("#info").html("");
                        //增加新的数据
                        $.each(data,function(i,n) {
                            var uid = (n.id);
                            $.ajax({
                                url:"queryAdmin.do",
                                type:"get",
                                data:{
                                    id:uid
                                },
                                dataType:"json",
                                success:function(data1){
                                    if(data1.guanliyuan == 0){
                                    $("#info").append("<tr>")
                                        .append("<td>" + n.id + "</td>")
                                        .append("<td>" + n.xingming + "</td>")
                                        .append("<td>" + n.yonghu + "</td>")
                                        .append("<td>" + n.xingbie + "</td>")
                                        .append("<td>" + n.minzu + "</td>")
                                        .append("<td>" + n.nianling + "</td>")
                                        .append("<td>" + n.xiaoqu + "</td>")
                                        .append("<td>" + n.danwei + "</td>")
                                        .append("<td>" + n.menpaihao + "</td>")
                                        .append("<td>" + n.dizhi + "</td>")
                                        .append("</tr>")
                                     }
                                }
                            })

                            }

                        )

                    }
                })
            }
        </script>

    <script type="text/javascript">
        $(function(){

            $("#chaxun").click(function(){
                chaxun();

            })
        })

        function chaxun(){
            var id = $("#id").val();
            $.ajax({
                url:"queryUser.do",
                type:"get",
                dataType:"json",
                success:function(data){
                    //清除旧的数据
                    $("#info").html("");
                    //增加新的数据

                    $.each(data,function(i,n) {
                            var uid = (n.id);
                            $.ajax({
                                url:"queryAdmin.do",
                                type:"get",
                                data:{
                                    id:uid
                                },
                                dataType:"json",
                                success:function(data1){
                                    if(data1.guanliyuan == 0) {
                                        if ((n.id) == id) {
                                            $("#info").append("<tr>")
                                                .append("<td>" + n.id + "</td>")
                                                .append("<td>" + n.xingming + "</td>")
                                                .append("<td>" + n.yonghu + "</td>")
                                                .append("<td>" + n.xingbie + "</td>")
                                                .append("<td>" + n.minzu + "</td>")
                                                .append("<td>" + n.nianling + "</td>")
                                                .append("<td>" + n.xiaoqu + "</td>")
                                                .append("<td>" + n.danwei + "</td>")
                                                .append("<td>" + n.menpaihao + "</td>")
                                                .append("<td>" + n.dizhi + "</td>")
                                                .append("</tr>")
                                        }
                                    }
                                }
                            })

                        }

                    )

                }
            })
        }
    </script>


    <%--    <script type="text/javascript">--%>
    <%--        $(function(){--%>
    <%--            //在当前页面dom对象加载后，执行loadStudentData（）--%>
    <%--            chakandangan();--%>

    <%--            $("#suoyoudangan").click(function(){--%>
    <%--                chakandangan();--%>

    <%--            })--%>
    <%--        })--%>

    <%--        function chakandangan(){--%>
    <%--            $.ajax({--%>
    <%--                url:"queryUser.do",--%>
    <%--                type:"get",--%>
    <%--                dataType:"json",--%>
    <%--                success:function(data){--%>
    <%--                    //清除旧的数据--%>
    <%--                    $("#info").html("");--%>
    <%--                    //增加新的数据--%>
    <%--                    $.each(data,function(i,n) {--%>
    <%--                            $("#info").append("<tr>")--%>
    <%--                                .append("<td>" + n.id + "</td>")--%>
    <%--                                .append("<td>" + n.xingming + "</td>")--%>
    <%--                                .append("<td>" + n.yonghu + "</td>")--%>
    <%--                                .append("<td>" + n.xingbie + "</td>")--%>
    <%--                                .append("<td>" + n.minzu + "</td>")--%>
    <%--                                .append("<td>" + n.nianling + "</td>")--%>
    <%--                                .append("<td>" + n.xiaoqu + "</td>")--%>
    <%--                                .append("<td>" + n.danwei + "</td>")--%>
    <%--                                .append("<td>" + n.menpaihao + "</td>")--%>
    <%--                                .append("<td>" + n.dizhi + "</td>")--%>
    <%--                                .append("</tr>")--%>
    <%--                        }--%>

    <%--                    )--%>

    <%--                }--%>
    <%--            })--%>
    <%--        }--%>
    <%--    </script>--%>

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

        <div class="uk-card uk-card-default" id="wodeziliao">
            <div class="uk-card-body">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;查看档案</p>
                <table class="uk-table uk-table-middle uk-table-justify" >
                    <thead>
                    <tr align="left">
                        <th>id</th>
                        <th>姓名</th>
                        <th>用户名</th>
                        <th>性别</th>
                        <th>民族</th>
                        <th>年龄</th>
                        <th>小区</th>
                        <th>单位</th>
                        <th>门牌号</th>
                        <th>所在城市</th>
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
                    <td></td>
                </tr>
                </tbody>
                    <div class="uk-card-footer">
                        <div class="uk-margin">

                            ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="根据id查询" id="id" class="uk-input uk-form-small uk-form-width-large"><br/>
                            <br/>
                            <button class="uk-button uk-button-primary"  type="button" id="chaxun">查询</button>
                            <button class="uk-button uk-button-primary"  type="button" id="suoyoudangan">所有档案</button>

                        </div>
                    </div>
                </table>
            </div>

        </div>

    </div>


</div>
</body>
</html>