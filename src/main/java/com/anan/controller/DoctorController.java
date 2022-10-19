package com.anan.controller;

import com.anan.entity.Doctor;
import com.anan.service.DoctorService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class DoctorController {
    @Resource
    private DoctorService doctorService;
    //添加用户
    //处理查询，响应ajsx
    @RequestMapping("/queryDoctor.do")
    @ResponseBody
    public List<Doctor> queryDoctor(){
        //参数检查，简单的数据处理
        List<Doctor> doctor = doctorService.selectDoctor();
        return doctor;
    }


    @RequestMapping("/addDoctor.do")
    public String addDoctor(Doctor doctor) {
        //调用service处理user
        int nums = doctorService.addDoctor(doctor);
        if (nums > 0) {
            return "增加医生信息1";
        }
        return "增加医生信息";
    }

    @RequestMapping("/viewDoctor.do")
    public String viewDoctor(HttpSession session,Integer id){
        Doctor doctor = doctorService.viewDoctor(id);
        if(doctor==null){
            return "修改医生信息1";
        }
        session.setAttribute("doctor",doctor);
        return "修改医生信息ing";
    }
    //删除医生
    @RequestMapping("/deleteDoctor.do")
     public String deleteDoctor(Integer id){
        int num = doctorService.deleteDoctor(id);
        if(num!=0){
            return "删除医生信息成功页面";
        }
        return "删除医生1";
        }



    //修改医生
    @RequestMapping("/updateDoctor.do")
    public String updateDoctor(Doctor doctor,HttpSession session){
        if (doctor.getYishengxingming()==""){
            doctor.setYishengxingming(null);
        }
        if (doctor.getXingbie()==""){
            doctor.setXingbie(null);
        }
        if(doctor.getJianjie()==""){
            doctor.setJianjie(null);
        }
        if(doctor.getLianxidianhua()==""){
            doctor.setLianxidianhua(null);
        }
        if(doctor.getZhicheng()==""){
            doctor.setZhicheng(null);
        }
        if(doctor.getYouxiang()==""){
            doctor.setYouxiang(null);
        }
        if(doctor.getDizhi()==""){
            doctor.setDizhi(null);
        }
        //调用service处理user
        int nums = doctorService.updateDoctor(doctor);
        if(nums!=0){
            return "修改医生信息成功页面";
        }
        return "修改医生信息ing";
    }

}
