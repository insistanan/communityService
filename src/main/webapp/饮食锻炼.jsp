<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<html>
<head>
    <title>我的资料</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/uikit.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/uikit-rtl.min.css" />
    <link rel="stylesheet" href="static/css/下拉栏样式.css">
    <link rel="stylesheet" href="static/css/整体布局样式.css">
    <link rel="stylesheet" href="static/css/菜单卡片.css">
    <script src="${pageContext.request.contextPath}/static/js/highcharts.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.js"></script>



</head>
<body marginheight="0px" marginwidth="0px">
<%--容器--%>
<div class="container" >
    <%--    导航栏--%>
    <div class="daohang">
        <jsp:include page="头部栏.jsp" flush="true"></jsp:include>
    </div>
    <%--    左侧菜单栏--%>
    <div class="menu">

        <jsp:include page="完善资料左侧菜单栏.jsp" flush="true"></jsp:include>

    </div>
    <%--    功能显示区--%>
    <div class="funcarea">
        <div class="uk-card uk-card-default" id="wodeziliao">

            <div class="uk-card-header">
                <p>饮食锻炼</p>

            </div>
            <div class="uk-card-body">
                <form class="uk-form-stacked" action="updateHealthyQuestion.do" method="post">

                    <div class="uk-margin">
                        <label class="uk-form-label" for="shifouchangchishucai">是否常吃蔬菜（是/否）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="shifouchangchishucai" type="text"  value="${healthyQuestion.shifouchangchishucai}" name = "shifouchangchishucai">
                        </div>
                    </div>

                    <div class="uk-margin">
                        <label class="uk-form-label" for="shuimianshijian">睡眠时间（夜间/小时）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="shuimianshijian" type="number"  name="shuimianshijian" value="${healthyQuestion.shuimianshijian}">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="shuiwujiaoma">睡午觉吗（是/否）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="shuiwujiaoma" type="text"  name="shuiwujiaoma" value="${healthyQuestion.shuiwujiaoma}">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="yundongcishu">运动次数（每七天）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="yundongcishu" type="text" value="${healthyQuestion.yundongcishu}" name="yundongcishu" readonly="readonly">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="yundongshichang">运动时长（分钟/每七天）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="yundongshichang" type="text" value="${healthyQuestion.yundongshichang}" name="yundongshichang" readonly="readonly">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="fengxiandiqu">14天是否经过风险地区（有/无）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="fengxiandiqu" type="text" value="${healthyQuestion.fengxiandiqu}" name="fengxiandiqu">
                        </div>
                    </div>

                    <input type="hidden" name="yonghu" value="${healthyQuestion.yonghu}">


            <div class="uk-card-footer">
                <div class="uk-margin">
                    <button class="uk-button uk-button-primary">保存</button>
                </div>
            </div>
                </form>
        </div>
    </div>
</div>
</body>
</html>
