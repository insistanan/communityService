package com.anan.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Past;
import java.util.Date;

public class HealthyQuestion {
    private Integer id;
    private String shifouchangchishucai;
    private Integer shuimianshijian;
    private String shuiwujiaoma;

    private Integer yundongcishu;
    private Integer yundongshichang;
    private String fengxiandiqu;
    @Past
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date addtime;
    private String yonghu;
    private  Integer status;

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getShifouchangchishucai() {
        return shifouchangchishucai;
    }

    public void setShifouchangchishucai(String shifouchangchishucai) {
        this.shifouchangchishucai = shifouchangchishucai;
    }

    public Integer getShuimianshijian() {
        return shuimianshijian;
    }

    public void setShuimianshijian(Integer shuimianshijian) {
        this.shuimianshijian = shuimianshijian;
    }

    public String getShuiwujiaoma() {
        return shuiwujiaoma;
    }

    public void setShuiwujiaoma(String shuiwujiaoma) {
        this.shuiwujiaoma = shuiwujiaoma;
    }

    public Integer getYundongcishu() {
        return yundongcishu;
    }

    public void setYundongcishu(Integer yundongcishu) {
        this.yundongcishu = yundongcishu;
    }

    public Integer getYundongshichang() {
        return yundongshichang;
    }

    public void setYundongshichang(Integer yundongshichang) {
        this.yundongshichang = yundongshichang;
    }

    public String getFengxiandiqu() {
        return fengxiandiqu;
    }

    public void setFengxiandiqu(String fengxiandiqu) {
        this.fengxiandiqu = fengxiandiqu;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    public String getYonghu() {
        return yonghu;
    }

    public void setYonghu(String yonghu) {
        this.yonghu = yonghu;
    }
}
