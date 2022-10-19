package com.anan.service.impl;

import com.anan.entity.Fuzeren;
import com.anan.mapper.FuzerenMapper;
import com.anan.service.FuzerenService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FuzerenServiceImpl implements FuzerenService {
    @Resource
    private FuzerenMapper fuzerenMapper;
    @Override
    public List<Fuzeren> selectFuzerens() {
        return fuzerenMapper.selectFuzerens();
    }

    @Override
    public int addFuzeren(Fuzeren fuzeren) {
        return fuzerenMapper.addFuzeren(fuzeren);
    }

    @Override
    public int deleteFuzeren(Integer id) {
        return fuzerenMapper.deleteFuzeren(id);
    }

    @Override
    public int updateFuzeren(Fuzeren fuzeren) {
        return fuzerenMapper.updateFuzeren(fuzeren);
    }
    @Override
    public Fuzeren viewFuzeren(Integer id){
        return fuzerenMapper.viewFuzeren(id);
    }
}
