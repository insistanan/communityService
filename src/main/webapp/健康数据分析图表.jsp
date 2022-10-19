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
    <style>
        #tubiao1{
            width: 44%;
            height: 38%;
            float: left;
        }
        #tubiao2{
            width: 44%;
            height: 38%;
            float: left;
        }
        #tubiao3{
            width: 44%;
            height: 38%;
            float: left;
        }
        #tubiao4{
            width: 44%;
            height: 38%;
            float: left;
        }
    </style>
    <script src="static/js/highcharts.js"></script>
    <script src="https://code.highcharts.com/highcharts-more.js"></script>


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

        <jsp:include page="健康数据分析左侧菜单栏.jsp" flush="true"></jsp:include>

    </div>
    <%--    功能显示区--%>
    <div class="funcarea">
        <div class="uk-card uk-card-default" id="wodeziliao">
            <%--    header--%>
            <div class="uk-card-header">
                <p>${sessionScope.user.xingming}的健康数据分析</p>

            </div>
            <%--header--%>

            <%--    body--%>
            <div class="uk-card-body" id="infofenxi" >

                <%--     图表--%>
                <div id="tubiao">

                    <div id="tubiao1"></div>
                    <script >
                            var bmi = ${sessionScope.healthy.bmi};   //BMI
                            var chart = Highcharts.chart('tubiao1', {
                                chart: {
                                    type: 'columnrange',
                                    inverted: false
                                },
                                title: {
                                    text: 'BMI'
                                },
                                xAxis: {
                                    categories: ['标准BMI', '我的BMI']
                                },

                                tooltip: {
                                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                                        '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
                                    footerFormat: '</table>',
                                    shared: true,
                                    useHTML: true
                                },
                                plotOptions: {
                                    columnrange: {
                                        dataLabels: {
                                            enabled: true,
                                            formatter: function () {
                                                return this.y;
                                            }
                                        }
                                    }
                                },
                                credits: {
                                    enabled: false
                                },

                                series: [{
                                    name: 'bmi',
                                    data: [
                                        [18.5, 24],
                                        [bmi - 0.5, bmi + 0.5]
                                    ]
                                }]
                            }
                            )

                    </script>
                    <div id="tubiao2"></div>
                    <script >
                        var sheru = ${sessionScope.healthy.sheru};   //摄入
                        var chart = Highcharts.chart('tubiao2', {
                                chart: {
                                    type: 'columnrange',
                                    inverted: false
                                },
                                title: {
                                    text: '热量摄入'
                                },
                                xAxis: {
                                    categories: ['成年男', '成年女','老年男', '老年女','我的摄入']
                                },

                                tooltip: {
                                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                                        '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
                                    footerFormat: '</table>',
                                    shared: true,
                                    useHTML: true
                                },
                                plotOptions: {
                                    columnrange: {
                                        dataLabels: {
                                            enabled: true,
                                            formatter: function () {
                                                return this.y+'卡';
                                            }
                                        }
                                    }
                                },
                                credits: {
                                    enabled: false
                                },

                                series: [{
                                    name: '热量摄入',
                                    data: [
                                        [2400, 3500],
                                        [2100, 3200],
                                        [2000, 2500],
                                        [1700, 1800],
                                        [sheru-50, sheru+50]
                                    ],
                                    color:'orange'
                                }]
                            }
                        )

                    </script>
                    <div id="tubiao3"></div>
                    <script >
                        var feihuoliang = ${sessionScope.healthy.feihuoliang};   //肺活量
                        var chart = Highcharts.chart('tubiao3', {
                                chart: {
                                    type: 'columnrange',
                                    inverted: false
                                },
                                title: {
                                    text: '肺活量'
                                },
                                xAxis: {
                                    categories: ['成年男肺活量', '成年女肺活量','我的肺活量']
                                },

                                tooltip: {
                                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                                        '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
                                    footerFormat: '</table>',
                                    shared: true,
                                    useHTML: true
                                },
                                plotOptions: {
                                    columnrange: {
                                        dataLabels: {
                                            enabled: true,
                                            formatter: function () {
                                                return this.y;
                                            }
                                        }
                                    }
                                },
                                credits: {
                                    enabled: false
                                },

                                series: [{
                                    name: '肺活量',
                                    data: [
                                        [3500, 4000],
                                        [2500,3000],
                                        [feihuoliang-100, feihuoliang+100]
                                    ],
                                    color:'pink'
                                }]
                            }
                        )

                    </script>
                    <div id="tubiao4"></div>
                    <script >
                        var maibo = ${sessionScope.healthy.maibo};    //脉搏
                        var chart = Highcharts.chart('tubiao4', {
                                chart: {
                                    type: 'columnrange',
                                    inverted: false
                                },
                                title: {
                                    text: '脉搏'
                                },
                                xAxis: {
                                    categories: ['标准脉搏', '我的脉搏']
                                },

                                tooltip: {
                                    headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                                    pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                                        '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
                                    footerFormat: '</table>',
                                    shared: true,
                                    useHTML: true
                                },
                                plotOptions: {
                                    columnrange: {
                                        dataLabels: {
                                            enabled: true,
                                            formatter: function () {
                                                return this.y+ '/min';
                                            }
                                        }
                                    }
                                },
                                credits: {
                                    enabled: false
                                },

                                series: [{
                                    name: '脉搏',
                                    data: [
                                        [80, 60],
                                        [maibo-1, maibo+1]
                                    ],
                                    color:'red'
                                }]
                            }
                        )

                    </script>
                </div>
                <%--        footer--%>

            </div>
            <%--    body--%>
        </div>

    </div>


</div>
</body>
</html>