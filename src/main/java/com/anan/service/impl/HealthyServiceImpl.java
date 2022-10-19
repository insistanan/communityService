package com.anan.service.impl;

import com.anan.entity.Healthy;
import com.anan.mapper.HealthyMapper;
import com.anan.service.HealthyService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class HealthyServiceImpl implements HealthyService {
    @Resource
    private HealthyMapper healthyMapper;
    @Override
    public void addHealthyinit(String yonghu) {
        healthyMapper.insertHealthy(yonghu);
    }
    @Override
    public void delete(String yonghu){ healthyMapper.delete(yonghu); }
    //查看用户信息
    @Override
    public Healthy viewHealthy(String yonghu) {
        Healthy healthy = healthyMapper.selectHealthy(yonghu);
        return healthy;
    }
    //更新健康数据
    @Override
    public int updateHealthy(Healthy healthy) {
        int nums = healthyMapper.updateHealthy(healthy);
        return nums;
    }
}
