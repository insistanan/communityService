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
    <style>
        #infofenxi{
            width: 80%;
        }
        .renwutu{
            width: 20%;
            height: 80%;
            float: left;
        }
        .xinxi{
            width: 80%;
            height: 80%;
            float: right;
        }

    </style>
<script>
    //healthy的数据
    var tizhong = "${sessionScope.healthy.tizhong}";   //体重
    var tizhongr;
    var shengao = "${sessionScope.healthy.shengao}";    //身高
    var shengaor;
    var feihuoliang = "${sessionScope.healthy.feihuoliang}";   //肺活量
    var feihuoliangr;
    var xueya = "${sessionScope.healthy.xueya}";    //血压
    var xueyar;
    var maibo = "${sessionScope.healthy.maibo}";    //脉搏
    var maibor;
    var tangniaobing = "${sessionScope.healthy.tangniaobing}";   //糖尿病
    var tangniaobingr;
    var xinzangbing = "${sessionScope.healthy.xinzangbing}";  //心脏病
    var xinzangbingr;
    var qitajibing = "${sessionScope.healthy.qitajibing}";   //其他疾病
    var qitajibingr;
    var sherur;
    var sheru = "${sessionScope.healthy.sheru}";   //摄入
    var bmir;
    var bmi = "${sessionScope.healthy.bmi}";   //BMI

    //healthyQuestion的数据
    var shifouchangchishucai = "${sessionScope.healthyQuestion.shifouchangchishucai}";  //是否常吃蔬菜
    var shucair;
    var shuimianshijian = "${sessionScope.healthyQuestion.shuimianshijian}";   //睡眠时间
    var shuimianr;
    var shuiwujiaoma = "${sessionScope.healthyQuestion.shuiwujiaoma}";//睡午觉吗
    var wujiaor;
    var yundongcishu = "${sessionScope.healthyQuestion.yundongcishu}";//一周运动次数
    var yundongcishur;
    var yundongshichang = "${sessionScope.healthyQuestion.yundongshichang}";//一周运动时长（分钟）
    var yundongshichangr;
    var yundongpingjia;
    var fengxiandiqu = "${sessionScope.healthyQuestion.fengxiandiqu}";//14天是否经过风险地区
    var fengxiandiqur;

    //user的数据
    var xingbie = "${sessionScope.user.xingbie}";  //性别
    var nianling = "${sessionScope.user.nianling}";//年龄


    if(parseFloat(bmi)<18.5){
        bmir = "过轻！";
    }
    if(parseFloat(bmi)>=18.5 && parseFloat(bmi)<23.9){
        bmir = "正常！";
    }
    if(parseFloat(bmi)<27&&parseFloat(bmi)>=24){
        bmir = "过重！";
    }
    if(parseFloat(bmi)<32&&parseFloat(bmi)>=28){
        bmir = "肥胖！";
    }
    if(parseFloat(bmi)>=32){
        bmir = "非常肥胖！";
    }
    if(shifouchangchishucai=="否"){
        shucair ="蔬菜包含很多人体必须的维生素，有助于身体健康，应该多注意蔬菜的摄入";
    }
    if(shifouchangchishucai=="是"){
        shucair ="你的饮食非常健康！多吃蔬菜身体好！";
    }
    if(xingbie=="男") {
        if(parseInt(nianling)>=18 &&parseInt(nianling)<60){
            if (parseFloat(sheru)<=2400) {
                sherur="食物获得的卡路里较低";
            }
            if (parseFloat(sheru)>=3500) {
                sherur="食物获得的卡路里太多了！保温杯里泡枸杞！";
            }
        }
        if(parseInt(nianling)>=60 &&parseInt(nianling)<80){
            if (parseFloat(sheru)<=2000) {
                sherur="食物获得的卡路里较低";
            }
            if (parseFloat(sheru)>=2500) {
                sherur="食物获得的卡路里太多了！保温杯里泡枸杞！";
            }
        }
    }
    if(xingbie=="女") {
        if(parseInt(nianling)>=18 &&parseInt(nianling)<60){
            if (parseFloat(sheru)<=2100) {
                sherur="食物获得的卡路里较低";
            }
            if (parseFloat(sheru)>=3200) {
                sherur="食物获得的卡路里太多了！保温杯里泡枸杞！";
            }
        }
        if(parseInt(nianling)>=60 &&parseInt(nianling)<80){
            if (parseFloat(sheru)<=1700) {
                sherur="食物获得的卡路里较低";
            }
            if (parseFloat(sheru)>=1800) {
                sherur="食物获得的卡路里太多了！保温杯里泡枸杞！";
            }
        }
    }

    if(xingbie ="男"){
        if(parseInt(feihuoliang)<3500){
            feihuoliangr ="肺活量稍微有点低，成年男子的肺活量一般是3500-4000毫升";
        }
        else{
            feihuoliangr = "肺活量达标！";
        }
    }
    if(xingbie="女"){
        if(parseInt(feihuoliang)<2500){
            feihuoliangr ="肺活量稍微有点低，成年女子的肺活量一般是2500-3000毫升";
        }
        else{
            feihuoliangr = "肺活量达标！";
        }
    }

    if(parseInt(xueya)>140){
        xueyar="高血压！1.注意控制饮食！   2.适当运动 3.注意心理平衡"
    }
    if(parseInt(xueya)<60){
        xueyar="低血压！1.注意控制饮食！   2.适当锻炼有助于提升心肺功能。"
    }
    if(parseInt(xueya)>=60 && parseInt(xueya)<=140){
        xueyar="血压正常。"
    }

    if(parseInt(maibo)<60){
        maibor = "脉搏过低，注意检查！";
    }
    if(parseInt(maibo)>100){
        maibor = "脉搏过高，注意检查！";
    }
    if(parseInt(maibo)<=100&&parseInt(maibo)>=60){
        maibor = "脉搏正常";
    }

    if(parseInt(shuimianshijian)>8){
        shuimianr = "睡太长时间也不好，多起来活动活动吧！";
    }
    if(parseInt(shuimianshijian)<8){
        shuimianr = "最佳睡眠时间为八个小时，注意休息！";
    }
    if(parseInt(shuimianshijian)==8){
        shuimianr = "最佳睡眠时间，真健康！";
    }

    if(shuiwujiaoma=="否"){
        wujiaor = "建议睡午觉。午睡最佳时间15分钟到半小时。\n" +
            "午睡的时间应该在下午1点左右，一般在午饭后半小时入睡，时间15分钟到半小时，最长不应该超过1小时，否则会有更加疲乏的表现。";
    }
    if(parseInt(yundongcishu)>=3 &&parseInt(yundongshichang)>90){
        yundongpingjia ="您七天运动状态非常好！继续保持吧";
    }
    if(parseInt(yundongcishu)<3 || parseInt(yundongshichang)<90){
        yundongpingjia ="建议每周进行150分钟中等强度的有氧锻炼\n" +
            "每天工作时还要保证每1个小时就主动站起来运动几分钟。\n" +
            "\n" +
            "一般要求每周至少3次,每次30分钟以上";
    }
    if(fengxiandiqu =="无"){
        fengxiandiqur = "14天内没有经过风险地区，你的行程很安全！但也要注意带好口罩，避免多去人群密集的地方，多洗手，留意最近疫情危险区";
    }
    if(fengxiandiqu =="有"){
        fengxiandiqur = "14天内经过风险地区!请及时做核酸检测！注意自我隔离，带好口罩！";
    }
    if(tangniaobing=="有"){
        tangniaobingr= "糖尿病患者如果想控制好血糖，一定要注意掌握好糖尿病的五驾马车：\n" +
            "第一、糖尿病教育，通过糖尿病教育使糖尿病患者了解糖尿病及糖尿病并发症，了解如何控制好血糖。\n" +
            "第二、饮食，饮食控制至关重要，高糖分和含油脂高的食物避免食用，主食要适量，粗细搭配，蔬菜可以多吃，但要少油、少盐。\n" +
            "第三、运动，运动可以降低血糖，还可以增加心肺功能。\n" +
            "第四、降糖药物，当饮食和运动不能控制好血糖的时候，可以辅助于降糖药物。\n" +
            "第五、自我血糖监测，通过自我血糖监测，了解血糖控制的情况，才能够进一步指导饮食、运动和药物治疗。\n" +
            "所以，如果糖尿病患者掌握好糖尿病的五驾马车，就能够把血糖控制好，就能够避免并发症的发生。";
    }
    if(tangniaobing=="无"){
        tangniaobingr= "无";
    }
    if(xinzangbing == "有"){
        xinzangbingr= "1、饮食方面要注意，心脏病患者大多数都建议低盐低脂，低糖饮食，尽量少吃动物内脏动物油、奶油、海鲜。可以适量吃一点禽肉，瘦肉以及鱼肉，少量吃一些植物油。多吃蔬菜水果，戒酒戒烟，可以少量喝点红酒。\n" +
            "\n" +
            "2、坚持运动，每周至少五次运动，每次一般四十分钟到一个小时左右。\n" +
            "\n" +
            "3、要注意坚持用药，定期复诊，服药一定要规范，如果需要减量或者停药，一定要经过专科医生的同意。";
    }
    if(xinzangbing == "无"){
        xinzangbingr= "无";
    }
    if(qitajibing!="有"){
        qitajibingr = "注意听从医生嘱托，按时服药。";
    }
    if(qitajibing!="无"){
        qitajibingr = "无";
    }



    $(function(){
        //在当前页面dom对象加载后，执行loadStudentData（）
        fenxi();
    })

    function fenxi(){

        $(".renwutu").html("");
        //增加新的数据
        if ("${sessionScope.user.xingbie}" == "男"){
        $(".renwutu").append("<img src='static/images/男.jpg'>");
        }
            else{
            $(".renwutu").append("<img src='static/images/女.jpg'>");
            }


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
<%--                人物图--%>
                <div class="renwutu">


                </div>


                <%--        信息/图表--%>
                <div class="xinxi">
                    <p class="uk-text-muted" id="bmir">${bmir}</p>
                    <p class="uk-text-muted " id="sherue">${sherur}</p>
                    <p class="uk-text-muted uk-text-warning" id="feihuoliangr">${feihuoliangr}</p>
                    <p class="uk-text-muted uk-text-warning" id="xueyar">${xueyar}</p>
                    <p class="uk-text-muted uk-text-warning" id="maibor">${maibor}</p>
                    <p class="uk-text-muted uk-text-danger" id="tangniaobingr">${tangniaobingr}</p>
                    <p class="uk-text-muted uk-text-danger" id="xinzangbingr">${xinzangbingr}</p>
                    <p class="uk-text-muted uk-text-danger" id="qitajibingr">${qitajibingr}</p>


                    <p class="uk-text-primary " id="shucair">${shucair}</p>  <%--蔬菜--%>
                    <p class="uk-text-primary " id="shuimianr">${shuimianr}</p>  <%--睡眠--%>
                    <p class="uk-text-primary " id="wujiaor">${wujiaor}</p>    <%--午觉--%>
                    <p class="uk-text-primary " id="yundongpingjia">${yundongpingjia}</p>   <%--运动--%>
                    <p class="uk-text-primary" id="fengxiandiqur">${fengxiandiqur}</p>   <%--风险地区--%>

                    <script>
                        document.getElementById('bmir').innerHTML = "BMI:  "+bmir;
                        document.getElementById('sherue').innerHTML = "卡路里摄入:  "+sherur;
                        document.getElementById('feihuoliangr').innerHTML = "肺活量:  "+feihuoliangr;
                        document.getElementById('xueyar').innerHTML = "血压:  "+xueyar;
                        document.getElementById('maibor').innerHTML = "脉搏:  "+maibor;
                        document.getElementById('shucair').innerHTML = "常吃蔬菜？  "+shucair;
                        document.getElementById('shuimianr').innerHTML = "晚上休息？   "+shuimianr;
                        document.getElementById('wujiaor').innerHTML = "睡午觉？  "+wujiaor;
                        document.getElementById('yundongpingjia').innerHTML = "每周运动？   "+yundongpingjia;
                        document.getElementById('fengxiandiqur').innerHTML = "经过风险地区？   "+fengxiandiqur;

                        document.getElementById('tangniaobingr').innerHTML = "糖尿病？  "+tangniaobingr;
                        document.getElementById('xinzangbingr').innerHTML = "心脏病？   "+xinzangbingr;
                        document.getElementById('qitajibingr').innerHTML = "其他疾病？   "+qitajibingr;
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