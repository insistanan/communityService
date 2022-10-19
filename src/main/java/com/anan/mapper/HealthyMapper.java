package com.anan.mapper;

import com.anan.entity.Healthy;
import org.apache.ibatis.annotations.Param;

public interface HealthyMapper {
    //注册自动添加
    void insertHealthy(String yonghu);
    //删除
    int delete(String yonghu);
    //查看个人用户信息（档案）
    public Healthy selectHealthy(@Param("yonghu") String yonghu);

    //更新健康信息
    int updateHealthy(Healthy healthy);
}
