package com.anan.entity;

public class User {
    private  Integer id ;
    private String xingming;
    private String xingbie;
    private String minzu;
    private String xiaoqu;
    private String  danwei;
    private String  menpaihao;
    private String yonghu;
    private String nianling;
    private String dizhi;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getXingming() {
        return xingming;
    }

    public void setXingming(String xingming) {
        this.xingming = xingming;
    }

    public String getXingbie() {
        return xingbie;
    }

    public void setXingbie(String xingbie) {
        this.xingbie = xingbie;
    }

    public String getMinzu() {
        return minzu;
    }

    public void setMinzu(String minzu) {
        this.minzu = minzu;
    }

    public String getXiaoqu() {
        return xiaoqu;
    }

    public void setXiaoqu(String xiaoqu) {
        this.xiaoqu = xiaoqu;
    }

    public String getDanwei() {
        return danwei;
    }

    public void setDanwei(String danwei) {
        this.danwei = danwei;
    }

    public String getMenpaihao() {
        return menpaihao;
    }

    public void setMenpaihao(String menpaihao) {
        this.menpaihao = menpaihao;
    }

    public String getYonghu() {
        return yonghu;
    }

    public void setYonghu(String yonghu) {
        this.yonghu = yonghu;
    }

    public String getNianling() {
        return nianling;
    }

    public void setNianling(String nianling) {
        this.nianling = nianling;
    }

    public String getDizhi() {
        return dizhi;
    }

    public void setDizhi(String dizhi) {
        this.dizhi = dizhi;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", xingming='" + xingming + '\'' +
                ", xingbie='" + xingbie + '\'' +
                ", minzu='" + minzu + '\'' +
                ", xiaoqu='" + xiaoqu + '\'' +
                ", danwei='" + danwei + '\'' +
                ", menpaihao='" + menpaihao + '\'' +
                ", yonghu='" + yonghu + '\'' +
                ", nianling='" + nianling + '\'' +
                ", dizhi='" + dizhi + '\'' +
                '}';
    }
}
