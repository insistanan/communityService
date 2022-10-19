package com.anan.mapper;

import com.anan.entity.HealthyQuestion;
import org.apache.ibatis.annotations.Param;

public interface HealthyQuestionMapper {
    //注册自动添加
    void insertHealthyQuestion(String yonghu);
    //删除
    int delete(String yonghu);
    //查看个人用户信息（档案）
    public HealthyQuestion selectHealthyQuestion(@Param("yonghu") String yonghu);

    //更新健康信息
    int updateHealthyQuestion(HealthyQuestion healthyQuestion);
}
