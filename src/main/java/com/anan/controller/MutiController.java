package com.anan.controller;

import com.anan.entity.*;
import com.anan.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class MutiController {
    @Resource
    private AdminService adminService;
    @Resource
    private UserService userService;
    @Resource
    private HealthyQuestionService healthyQuestionService;
    @Resource
    private HealthyService healthyService;
    @Resource
    private FoodService foodService;
    @Resource
    private FuzerenService fuzerenService;


    //用户注册   信息也添加yonghu
    @RequestMapping("/register.do")
    public String registerAdmin(Admin admin, Map<String, Object> map, HttpSession session){
        String tips = "注册成功";

        if (admin.getYonghu() == null || "".equals(admin.getYonghu())) {
            map.put("error","用户名为空！");
            return "注册页面";
        }
        if (admin.getMima() == null || "".equals(admin.getMima())) {
            map.put("error","密码为空！");
            return "注册页面";
        }
        User user = userService.viewUser(admin.getYonghu());
        if (user !=null ){
            map.put("error","用户名"+user.getYonghu()+"已注册！");
            return "注册页面";
        }

        adminService.register(admin);
        String yonghu = admin.getYonghu();
        userService.addUser(yonghu);
        healthyQuestionService.addHealthyQuestioninit(yonghu);
        healthyService.addHealthyinit(yonghu);
        //添加数据
        session.setAttribute("tips", tips);
        return "注册成功页面";
    }
    //用户登录

    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    public String login(String yonghu, String mima, Integer guanliyuan, ModelMap modelMap, HttpSession session){

        if (yonghu == null || "".equals(yonghu)) {
            modelMap.put("error","用户名为空");
            return "login";
        }
        if (mima == null || "".equals(mima)) {
            modelMap.put("error","密码为空");
            return "login";
        }
        Admin admin = adminService.login(yonghu,mima,guanliyuan);
        if (admin == null){
            modelMap.put("error", "用户名或密码错误");
            return "login";
        }

        if(admin.getGuanliyuan() == 1){
            //管理员登录
            //登录成功  将admin存储到session
            session.setAttribute("admin", admin);
            return "后台管理1";
        }
        User user = userService.viewUser(admin.getYonghu());
        Healthy healthy = healthyService.viewHealthy(admin.getYonghu());
        HealthyQuestion healthyQuestion = healthyQuestionService.viewHealthyQuestion(admin.getYonghu());
                //登录成功
                //将admin存储到session
                //将user存储到session
                //将healthy存储到session
                //将healthyQuestion存储到session
        session.setAttribute("admin", admin);
        session.setAttribute("user", user);
        session.setAttribute("healthy", healthy);
        session.setAttribute("healthyQuestion", healthyQuestion);
        return "用户主页面1";

    }
    //删除用户
    @RequestMapping("/deleteUser.do")
    public String delete(Integer id){
        User user = userService.viewUser2(id);
        String yonghu = user.getYonghu();
        userService.delete(yonghu);
        adminService.delete(yonghu);
        healthyService.delete(yonghu);
        healthyQuestionService.delete(yonghu);
        return "删除用户1";
    }


    @RequestMapping("/updateHealthy.do")
    public String updateHealthy(Healthy healthy ) {
        if (healthy.getTangniaobing()==""){
            healthy.setTangniaobing(null);
        }
        if (healthy.getXinzangbing()==""){
            healthy.setXinzangbing(null);
        }
        if (healthy.getQitajibing()==""){
            healthy.setQitajibing(null);
        }
        if (healthy.getYonghu()==""){
            healthy.setYonghu(null);
        }
        Float shengao = healthy.getShengao();
        Float tizhong = healthy.getTizhong();
        Float bmi = tizhong/((shengao/100)*(shengao/100));
        //调用service处理
        healthy.setBmi(bmi);
        int nums = healthyService.updateHealthy(healthy);
        if(nums>0){
            //成功
            return "健康数据修改成功";
        }
        //指定结果页面
        return "健康数据";
    }
    @RequestMapping("/updateHealthyRetun.do")
    public String updateHealthyRetun( String yonghu, HttpSession session){
        Healthy healthy = healthyService.viewHealthy(yonghu);
        session.setAttribute("healthy", healthy);
        return "健康数据";
    }

    @RequestMapping("/updateHealthyQuestion.do")
    public String updateHealthyQuestion(HealthyQuestion healthyQuestion ) {
        if (healthyQuestion.getShifouchangchishucai()==""){
            healthyQuestion.setShifouchangchishucai(null);
        }
        //调用service处理
        int nums = healthyQuestionService.updateHealthyQuestion(healthyQuestion);
        if(nums>0){
            //成功
            return "饮食锻炼修改成功";
        }
        //指定结果页面
        return "饮食锻炼";
    }
    @RequestMapping("/updateHealthyQuestionRetun.do")
    public String updateHealthyQuestionRetun( String yonghu, HttpSession session){
        HealthyQuestion healthyQuestion = healthyQuestionService.viewHealthyQuestion(yonghu);
        session.setAttribute("healthyQuestion", healthyQuestion);
        return "饮食锻炼";
    }

    @RequestMapping("/kaluli.do")
    public  String kaluli(String zhongliang,String shipinming,HttpSession session){
        String kaluli = foodService.kaluli(shipinming);
        String str = kaluli;
        str = str.trim();
        StringBuffer str2 = new StringBuffer();  // 此处可以也使用StringBuffer
        if(str != null && !"".equals(str)) {
            for (int i = 0; i<4; i++) {
                if (str.charAt(i) >= 48 && str.charAt(i) <= 57) {
                    String s = String.valueOf(str.charAt(i));
                    str2.append(s);
                }
            }
        }
        String str3= str2.toString();
        float kaluli1 = Float.parseFloat(str3);
        float zhongliang1 = Float.parseFloat(zhongliang);
        Float reliang = kaluli1/100*zhongliang1;     //用户摄入
        String kaluli3 = String.valueOf(reliang);

        Healthy healthy = (Healthy) session.getAttribute("healthy");
        float sheru = healthy.getSheru();
        reliang += sheru;
        healthy.setSheru(reliang);
        healthyService.updateHealthy(healthy);
        session.setAttribute("healthy",healthy);

        Food food =new Food();
        food.setKaluli(kaluli3);
        food.setShipinming(shipinming);
        food.setZhongliang(zhongliang);
        session.setAttribute("food",food);
        return "热量计算";

    }
    @RequestMapping("/kaluli1.do")
    public  String kaluli1(String zhongliang,String shipinming,HttpSession session){
        String kaluli = foodService.kaluli(shipinming);
        String str = kaluli;
        str = str.trim();
        StringBuffer str2 = new StringBuffer();  // 此处可以也使用StringBuffer
        if(str != null && !"".equals(str)) {
            for (int i = 0; i<4; i++) {
                if (str.charAt(i) >= 48 && str.charAt(i) <= 57) {
                    String s = String.valueOf(str.charAt(i));
                    str2.append(s);
                }
            }
        }
        String str3= str2.toString();
        float kaluli1 = Float.parseFloat(str3);
        float zhongliang1 = Float.parseFloat(zhongliang);
        Float reliang = kaluli1/100*zhongliang1;     //用户摄入
        String kaluli3 = String.valueOf(reliang);


        Food food =new Food();
        food.setKaluli(kaluli3);
        food.setShipinming(shipinming);
        food.setZhongliang(zhongliang);
        session.setAttribute("food",food);
        return "热量计算1";

    }
    @RequestMapping("/duanlianshijian.do")
    public  void duanlian(HttpSession session){
        HealthyQuestion healthyQuestion = (HealthyQuestion) session.getAttribute("healthyQuestion");
        int status = healthyQuestion.getStatus();
        if(status == 0){
            int cishu = healthyQuestion.getYundongcishu() +1;
            status =+1;
            healthyQuestion.setStatus(status);
            healthyQuestion.setYundongcishu(cishu);
            session.setAttribute("healthyQuestion",healthyQuestion);
        }
        int yundongshichang = healthyQuestion.getYundongshichang();
            yundongshichang +=1;
            healthyQuestion.setYundongshichang(yundongshichang);
            session.setAttribute("healthyQuestion",healthyQuestion);

        healthyQuestionService.updateHealthyQuestion(healthyQuestion);
    }









}
