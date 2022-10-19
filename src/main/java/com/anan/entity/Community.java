package com.anan.entity;

public class Community {
    private Integer shequid;
    private String dizhi;
    private String xiaoqu;
    private String shequfuzeren;

    public Integer getShequid() {
        return shequid;
    }

    public void setShequid(Integer shequid) {
        this.shequid = shequid;
    }

    public String getDizhi() {
        return dizhi;
    }

    public void setDizhi(String dizhi) {
        this.dizhi = dizhi;
    }

    public String getXiaoqu() {
        return xiaoqu;
    }

    public void setXiaoqu(String xiaoqu) {
        this.xiaoqu = xiaoqu;
    }

    public String getShequfuzeren() {
        return shequfuzeren;
    }

    public void setShequfuzeren(String shequfuzeren) {
        this.shequfuzeren = shequfuzeren;
    }

    @Override
    public String toString() {
        return "Community{}";
    }
}
