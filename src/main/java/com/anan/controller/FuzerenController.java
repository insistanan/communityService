package com.anan.controller;

import com.anan.entity.Fuzeren;
import com.anan.service.FuzerenService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class FuzerenController {
    @Resource
    private FuzerenService fuzerenService;
    @RequestMapping("/queryFuzeren.do")
    @ResponseBody
    public List<Fuzeren> queryFuzeren(){
        List<Fuzeren> fuzerens= fuzerenService.selectFuzerens();
        return fuzerens;
    }

    @RequestMapping("/addFuzeren.do")
    public String addFuzeren(Fuzeren fuzeren){
        fuzerenService.addFuzeren(fuzeren);
        return "增加负责人1";
    }

    @RequestMapping("/viewFuzeren.do")
    public String viewFuzeren(HttpSession session,Integer id){
        Fuzeren fuzeren = fuzerenService.viewFuzeren(id);
        if(fuzeren==null){
            return "修改负责人信息1";
        }
        session.setAttribute("fuzeren",fuzeren);
        return "修改负责人信息ing";
    }


    //修改负责人
    @RequestMapping("/updateFuzeren.do")
    public String updateFuzeren(Fuzeren fuzeren, HttpSession session){
        if (fuzeren.getName()==""){
            fuzeren.setName(null);
        }
        if (fuzeren.getDianhua()==""){
            fuzeren.setDianhua(null);
        }
        if (fuzeren.getDizhi()==""){
            fuzeren.setDizhi(null);
        }
        if (fuzeren.getYouxiang()==""){
            fuzeren.setYouxiang(null);
        }
        if (fuzeren.getFuzexiaoqu()==""){
            fuzeren.setFuzexiaoqu(null);
        }

        //调用service处理user
        int nums = fuzerenService.updateFuzeren(fuzeren);
        if(nums!=0){
            return "修改负责人信息成功页面";
        }
        return "修改负责人信息ing";
    }
    //删除负责人
    @RequestMapping("/deleteFuzeren.do")
    public String deleteFuzeren(Integer id){
        int num = fuzerenService.deleteFuzeren(id);
        if(num!=0){
            return "删除负责人信息成功页面";
        }
        return "删除负责人1";
    }




}
