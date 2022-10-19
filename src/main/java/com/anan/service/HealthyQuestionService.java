package com.anan.service;

import com.anan.entity.HealthyQuestion;

public interface HealthyQuestionService {
    void addHealthyQuestioninit(String yonghu);
    void delete(String yonghu);
    public HealthyQuestion viewHealthyQuestion(String yonghu);
    int updateHealthyQuestion(HealthyQuestion healthyQuestion);
}
