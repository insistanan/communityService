package com.anan.service.impl;

import com.anan.mapper.FoodMapper;
import com.anan.service.FoodService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class FoodServiceImpl implements FoodService {
    @Resource
    FoodMapper foodMapper;
    @Override
    public String kaluli(String shipinming) {
        return foodMapper.kaluli(shipinming);
    }
}
