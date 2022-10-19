package com.anan.controller;

import com.anan.entity.Admin;
import com.anan.entity.User;
import com.anan.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class AdminController {
    @Resource
    private AdminService adminService;


    //添加管理员权限
    @RequestMapping("/addAdmin.do")
        public String addAdmin(Admin admin){
            //调用service处理user
        admin.setGuanliyuan(1);
        adminService.addAdmin(admin);

        return "增删管理员1";
    }
    //删除管理员权限
    @RequestMapping("/deleteAdmin.do")
    public String deleteAdmin(Admin admin){
        //调用service处理user
        if(admin.getYonghu()=="anan"){
            return "增删管理员2";
        }
        admin.setGuanliyuan(0);
        adminService.deleteAdmin(admin);
        return "增删管理员1";
    }
    //退出登录
    @RequestMapping("/logout.do")
    public String logout(HttpServletRequest request,HttpSession session){
        session.removeAttribute("admin");
        session.removeAttribute("user");
        session.removeAttribute("healthyQuestion");
        session.removeAttribute("healthy");
        return "退出登录成功页面";
    }
    @RequestMapping("/goxiugaimima1.do")
    public String goxiugaimima1(HttpSession session){
        User user = (User) session.getAttribute("user");
        String yonghu = user.getYonghu();
        Admin admin = adminService.viewAdmin(yonghu);
        session.setAttribute("admin",admin);
        return "修改密码1";
    }
    @RequestMapping("/goxiugaimima2.do")
    public String goxiugaimima2(HttpSession session){
        return "修改密码2";
    }
    @RequestMapping("/xiugaimima.do")
    public String xiugaimima(String yonghu,String mima,HttpSession session){
        adminService.xiugaimima(yonghu,mima);
        return "修改密码成功页面";
    }
    @RequestMapping("/queryAdmin.do")
    @ResponseBody
    public Admin queryAdmin(Integer id){
        //参数检查，简单的数据处理
        Admin admin = adminService.selectAdmini(id);
        return admin;
    }


}
