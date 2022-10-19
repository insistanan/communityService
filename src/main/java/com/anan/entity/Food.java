package com.anan.entity;

public class Food {
    private Integer foodid;
    private String shipinfenlei;
    private String shipinming;
    private String kaluli;
    private String zhongliang;

    public Integer getFoodid() {
        return foodid;
    }

    public void setFoodid(Integer foodid) {
        this.foodid = foodid;
    }

    public String getShipinfenlei() {
        return shipinfenlei;
    }

    public void setShipinfenlei(String shipinfenlei) {
        this.shipinfenlei = shipinfenlei;
    }

    public String getShipinming() {
        return shipinming;
    }

    public void setShipinming(String shipinming) {
        this.shipinming = shipinming;
    }

    public String getKaluli() {
        return kaluli;
    }

    public void setKaluli(String kaluli) {
        this.kaluli = kaluli;
    }

    public String getZhongliang() {
        return zhongliang;
    }

    public void setZhongliang(String zhongliang) {
        this.zhongliang = zhongliang;
    }

    @Override
    public String toString() {
        return "Food{" +
                "foodid=" + foodid +
                ", shipinfenlei='" + shipinfenlei + '\'' +
                ", shipinming='" + shipinming + '\'' +
                ", kaluli='" + kaluli + '\'' +
                '}';
    }
}
