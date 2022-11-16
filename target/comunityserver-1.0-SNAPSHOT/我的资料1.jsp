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
                <p>我的资料</p>

            </div>
            <div class="uk-card-body">
                <form class="uk-form-stacked" action="updateUser1.do" method="post">

                    <div class="uk-margin">
                        <label class="uk-form-label" for="xingming">姓名</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="xingming" type="text"  value="${user.xingming}" name = "xingming">
                        </div>
                    </div>

                    <div class="uk-margin">
                        <label class="uk-form-label" for="xingbie">性别</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="xingbie" type="text"  name="xingbie" value="${user.xingbie}">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="minzu">民族</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="minzu" type="text"  name="minzu" value="${user.minzu}">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="nianling">年龄</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="nianling" type="text" value="${user.nianling}" name="nianling">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="dizhi">居住城市</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="dizhi" type="text" value="${user.dizhi}" name="dizhi">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="xiaoqu">小区</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="xiaoqu" type="text" value="${user.xiaoqu}" name="xiaoqu">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="danwei">单元</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="danwei" type="text" value="${user.danwei}" name="danwei">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="menpaihao">门牌号</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="menpaihao" type="text" name="menpaihao" value="${user.menpaihao}">
                        </div>
                    </div>
                    <input type="hidden" name="yonghu" value="${user.yonghu}">


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
