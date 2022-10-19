package com.anan.service;

import com.anan.entity.Healthy;

public interface HealthyService {
    void addHealthyinit(String yonghu);
    void delete(String yonghu);
    public Healthy viewHealthy(String yonghu);
    int updateHealthy(Healthy healthy);
}
