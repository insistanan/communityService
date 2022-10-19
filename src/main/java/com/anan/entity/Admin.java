package com.anan.entity;

public class Admin {


    private Integer id;
    private String yonghu;
    private String mima;
    private Integer guanliyuan;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getYonghu() {
        return yonghu;
    }

    public void setYonghu(String yonghu) {
        this.yonghu = yonghu;
    }

    public String getMima() {
        return mima;
    }

    public void setMima(String mima) {
        this.mima = mima;
    }

    public Integer getGuanliyuan() {
        return guanliyuan;
    }

    public void setGuanliyuan(Integer guanliyuan) {
        this.guanliyuan = guanliyuan;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", yonghu='" + yonghu + '\'' +
                ", mima='" + mima + '\'' +
                ", guanliyuan=" + guanliyuan +
                '}';
    }
}
