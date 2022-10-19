package com.anan.service;

import com.anan.entity.Fuzeren;

import java.util.List;

public interface FuzerenService {
    List<Fuzeren> selectFuzerens();
    int addFuzeren(Fuzeren fuzeren);
    int deleteFuzeren(Integer id);
    int updateFuzeren(Fuzeren fuzeren);
    Fuzeren viewFuzeren(Integer id);
}
