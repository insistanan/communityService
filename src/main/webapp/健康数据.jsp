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
                <p>健康数据</p>

            </div>
            <div class="uk-card-body">
                <form class="uk-form-stacked" action="updateHealthy.do" method="post">

                    <div class="uk-margin">
                        <label class="uk-form-label" for="shengao">身高（cm）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="shengao" type="text"  value="${healthy.shengao}" name = "shengao">
                        </div>
                    </div>

                    <div class="uk-margin">
                        <label class="uk-form-label" for="tizhong">体重（kg）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="tizhong" type="text"  name="tizhong" value="${healthy.tizhong}">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="feihuoliang">肺活量（VC）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="feihuoliang" type="text"  name="feihuoliang" value="${healthy.feihuoliang}">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="xueya">血压（mmHg）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="xueya" type="text" value="${healthy.xueya}" name="xueya">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="maibo">脉搏（bpm）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="maibo" type="text" value="${healthy.maibo}" name="maibo">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="tangniaobing">有无糖尿病（有/无）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="tangniaobing" type="text" value="${healthy.tangniaobing}" name="tangniaobing">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="xinzangbing">有无心脏病（有/无）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="xinzangbing" type="text" value="${healthy.xinzangbing}" name="xinzangbing">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="qitajibing">其他疾病</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="qitajibing" type="text" name="qitajibing" value="${healthy.qitajibing}">
                        </div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label" for="sheru">食物摄入量（今天/大卡）</label>
                        <div class="uk-form-controls">
                            <input class="uk-input uk-form-small uk-form-width-large" id="sheru" type="text"  value="${healthy.sheru}" readonly="readonly">
                        </div>
                    </div>
                    <input type="hidden" name="yonghu" value="${healthy.yonghu}">


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
