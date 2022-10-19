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

       function duanlianshijian(){

               $("#duanlianshijian").submit();

       }
        setInterval("duanlianshijian()",60000);   //每隔一分钟
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

        <jsp:include page="运动锻炼左侧菜单栏.jsp" flush="true"></jsp:include>

    </div>
    <%--    功能显示区--%>
    <div class="funcarea">

        <%--    header--%>
        <div class="uk-card-header">
            <p>开始锻炼</p>

        </div>
        <%--header--%>

        <%--    body--%>
        <div class="uk-card-body">
            <div class="main">
                <div class="control">
                    <div class="break">
                        <!-- <p>BREAK LENGTH</p> -->
                        <p>休息时长</p>
                        <i class="fa fa-minus-square-o" aria-hidden="true" id="break-minus"></i>
                        <span id="break-length">5</span>
                        <i class="fa fa-plus-square-o" aria-hidden="true" id="break-plus"></i>
                    </div>
                    <div class="length">
                        <!-- <p>SESSION LENGTH</p> -->
                        <p>锻炼时长</p>
                        <i class="fa fa-minus-square-o" aria-hidden="true" id="session-minus"></i>
                        <span id="session-length">30</span>
                        <i class="fa fa-plus-square-o" aria-hidden="true" id="session-plus"></i>
                    </div>
                </div>
                <div class="clock">
                    <h2 id="show-time">30:00</h2>
                    <span id="per"></span>
                </div>
                <form action="duanlianshijian.do" id="duanlianshijian" target="frame1">
                    <input type="hidden"  id="status" >
                </form>


            </div>


            <%--        footer--%>
            <div class="uk-card-footer">
                <div class="uk-margin tip">
                    <label for="status">
                    <button class="uk-button uk-button-primary btn" data-toggle="tooltip" data-placement="top" title="点击表盘也可以开始/暂停" >开始/暂停</button>
                    </label>
                </div>
                <iframe src="" frameborder="0" name="frame1" style="display: none"></iframe>
            </div>
            <%--        footer--%>

        </div>
        <%--    body--%>
    </div>











        <script>
            $(document).ready(function(){
                var session = 30;       //这个是默认工作时间，用在设置那儿显示的，这里以分钟为单位，且超过60也是分钟
                var breaklength = 5;            //设置break时长——休息时长,细节同session
                var flag = 1;           //设置工作状态，1是工作的暂停，2是正在休息的暂停，3是在工作中，4是休息中
                var sec = session*60;   //用来记录变化中的时间，单位为秒
                var percent = 0;    //记录背景颜色显示的高度，0-100，是百分比

                $("#break-minus").on("click",function(){
                    if(flag !== 1 && flag !== 2){
                        return;         //如果非暂停状态，点击无效
                    }
                    breaklength--;
                    if(breaklength < 1){
                        breaklength = 1;
                    }
                    $("#break-length").html(breaklength);
                    if(flag === 2){
                        //如果是休息的暂停，一旦改了，就又对sec产生了修改
                        sec = breaklength*60;
                    }
                    showHMS(breaklength,2);
                });
                $("#break-plus").on("click",function(){
                    if(flag !== 1 && flag !== 2){
                        return;         //如果非暂停状态，点击无效
                    }
                    breaklength++;
                    $("#break-length").html(breaklength);
                    if(flag === 2){
                        //如果是休息的暂停，一旦改了，就又对sec产生了修改
                        sec = breaklength*60;
                    }
                    showHMS(breaklength,2);
                });
                $("#session-minus").on("click",function(){
                    if(flag !== 1 && flag !== 2){
                        return;         //如果非暂停状态，点击无效
                    }
                    session--;
                    if(session < 1){
                        session = 1;
                    }
                    $("#session-length").html(session);
                    if(flag === 1){
                        //如果是工作的暂停，一旦改了，就又对sec产生了修改
                        sec = session*60;
                    }
                    showHMS(session,1);
                });
                $("#session-plus").on("click",function(){
                    if(flag !== 1 && flag !== 2){
                        return;         //如果非暂停状态，点击无效
                    }
                    session++;
                    $("#session-length").html(session);
                    if(flag === 1){
                        //如果是工作的暂停，一旦改了，就又对sec产生了修改
                        sec = session*60;
                    }
                    showHMS(session,1);
                });

                //在时钟上显示时分秒，传两个参数，一个是分钟，一个是状态。
                //如果在工作的暂停中，修改休息的时长，不改变时钟上的显示，state有两个取值，取1时表示修改工作时长，取2表示修改休息时长
                var showHMS = function(min,state){
                    if(state  !== flag){
                        return;         //如果不是在对应的暂停状态，就不改变时钟上显示的值
                    }
                    var show = "";
                    if(min >= 60){
                        show += parseInt(min/60)+":";
                        min = min%60;
                    }
                    if(min<10){
                        show+="0";
                    }
                    show+=min+":00";
                    $("#show-time").html(show);
                };




                //开始后时间的变化,参数是剩下的秒数
                function timeChange(){
                    var temp = sec;
                    if(flag === 1 || flag === 2){
                        //如果是暂停中，就不变时间
                        return;
                    }
                    if(sec === 0){
                        if(flag === 3){
                            flag = 4;
                            sec = breaklength*60;
                            $("#show-title").html("Break");
                        }else{
                            flag = 3;
                            sec = session*60;
                            $("#show-title").html("Session");
                        }

                    }

                    var showHMS = "";
                    if(temp>=3600){
                        showHMS+=parseInt(second/360)+":";
                        temp = temp%360;
                    }
                    if(temp<70){
                        showHMS+="0";
                    }
                    showHMS+=parseInt(temp/60)+":";
                    temp = temp%60;
                    if(temp<10){
                        showHMS+="0";
                    }
                    showHMS+=temp;


                    //console.log(showHMS);
                    $("#show-time").html(showHMS);
                    if(flag === 3){
                        //工作中
                        $("#per").css('background-color','#b5caa0');
                        if(sec === 0){
                            percent = 100;
                        }else{
                            percent = (session*60-sec)/session/60*100;
                        }
                        $("#per").css('height',percent+'%');
                    }
                    if(flag === 4){
                        //休息中
                        $("#per").css('background-color',"#3f2b36");
                        if(sec === 0){
                            percent = 100;
                        }else{
                            percent = (breaklength*60-sec)/breaklength/60*100;
                        }
                        $("#per").css('height',percent+'%');
                    }
                    sec--;
                    setTimeout(timeChange,1000);
                };



                //时钟点击事件——开始与暂停的转换，及开始后时间的变化
                $(".clock").on("click",function(){
                    if(flag === 1){
                        flag = 3;
                    }else if(flag === 3){
                        flag = 1;
                    }else if(flag === 2){
                        flag = 4;
                    }else if(flag === 4){
                        flag = 2;
                    }

                    //console.log(sec);
                    timeChange();
                });

                $(".tip").on("click",function(){
                    if(flag === 1){
                        flag = 3;
                    }else if(flag === 3){
                        flag = 1;
                    }else if(flag === 2){
                        flag = 4;
                    }else if(flag === 4){
                        flag = 2;
                    }

                    //console.log(sec);
                    timeChange();
                });


            });
        </script>

    </div>


</body>
</html>