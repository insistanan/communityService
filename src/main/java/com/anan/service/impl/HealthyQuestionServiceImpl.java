package com.anan.service.impl;

import com.anan.entity.HealthyQuestion;
import com.anan.mapper.HealthyQuestionMapper;
import com.anan.service.HealthyQuestionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class HealthyQuestionServiceImpl implements HealthyQuestionService {
    @Resource
    private HealthyQuestionMapper healthyQuestionMapper;
    @Override
    public void addHealthyQuestioninit(String yonghu) {
        healthyQuestionMapper.insertHealthyQuestion(yonghu);
    }
    @Override
    public void delete(String yonghu){ healthyQuestionMapper.delete(yonghu); }
    //查看用户信息
    @Override
    public HealthyQuestion viewHealthyQuestion(String yonghu) {
        HealthyQuestion healthyQuestion = healthyQuestionMapper.selectHealthyQuestion(yonghu);
        return healthyQuestion;
    }
    //更新健康数据
    @Override
    public int updateHealthyQuestion(HealthyQuestion healthyQuestion) {
        int nums = healthyQuestionMapper.updateHealthyQuestion(healthyQuestion);
        return nums;
    }
}
