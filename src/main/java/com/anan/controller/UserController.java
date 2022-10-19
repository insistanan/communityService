package com.anan.controller;

import com.anan.entity.User;
import com.anan.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {


    @Resource
    private UserService userService;


    //处理查询，响应ajsx
    @RequestMapping("/queryUser.do")
    @ResponseBody
    public List<User> queryUser(){
        //参数检查，简单的数据处理
        List<User> users = userService.selectUsers();
        return users;
    }

    //修改用户
    @RequestMapping("/updateUser1.do")
    public String updateUser1(User user ) {
        if (user.getXingming()==""){
            user.setXingming(null);
        }
        if (user.getXingbie()==""){
            user.setXingbie(null);
        }
        if (user.getMinzu()==""){
            user.setMinzu(null);
        }
        if (user.getXiaoqu()==""){
            user.setXiaoqu(null);
        }
        if (user.getDanwei()==""){
            user.setDanwei(null);
        }
        if (user.getNianling()==""){
            user.setNianling(null);
        }
        if (user.getMenpaihao()==""){
            user.setMenpaihao(null);
        }
        if (user.getDizhi()==""){
            user.setDizhi(null);
        }
        if (user.getYonghu()==""){
            user.setYonghu(null);
        }
        //调用service处理user
        int nums = userService.updateUser(user);
        if(nums>0){
            //成功
            return "我的资料修改成功";
        }
        //指定结果页面
        return "我的资料";
    }
    //修改档案
    @RequestMapping("/updateUser2.do")
    public String updateUser2(Integer id,HttpSession session) {
       User user = userService.viewUser2(id);
        session.setAttribute("user",user);
        //指定结果页面
        return "修改档案提交";
    }
    //修改用户档案
    @RequestMapping("/updateUser3.do")
    public String updateUser3(User user ) {
        if (user.getXingming()==""){
            user.setXingming(null);
        }
        if (user.getXingbie()==""){
            user.setXingbie(null);
        }
        if (user.getMinzu()==""){
            user.setMinzu(null);
        }
        if (user.getXiaoqu()==""){
            user.setXiaoqu(null);
        }
        if (user.getDanwei()==""){
            user.setDanwei(null);
        }
        if (user.getNianling()==""){
            user.setNianling(null);
        }
        if (user.getMenpaihao()==""){
            user.setMenpaihao(null);
        }
        if (user.getDizhi()==""){
            user.setDizhi(null);
        }
        if (user.getYonghu()==""){
            user.setYonghu(null);
        }
        //调用service处理user
        int nums = userService.updateUser(user);
        if(nums>0){
            //成功
            return "修改档案1";
        }
        //指定结果页面
        return "修改档案提交";
    }
    @RequestMapping("/updateUserRetun.do")
    public String updateUserRetun( String yonghu, HttpSession session){
        User user = userService.viewUser(yonghu);
        session.setAttribute("user", user);
        return "我的资料";
    }

}
