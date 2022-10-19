package com.anan.service.impl;

import com.anan.entity.Doctor;
import com.anan.mapper.DoctorMapper;
import com.anan.service.DoctorService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DoctorServiceImpl implements DoctorService {
    @Resource
    private DoctorMapper doctorMapper;
    @Override
    public int addDoctor(Doctor doctor) {
        int nums = doctorMapper.insertDoctor(doctor);
        return nums;
    }

    @Override
    public List<Doctor> selectDoctor() {
        return doctorMapper.selectDoctor();
    }
    @Override
    public int deleteDoctor(Integer id){
        return  doctorMapper.deleteDoctor(id);
    }
    @Override
    public int updateDoctor(Doctor doctor) {
        int nums = doctorMapper.updateDoctor(doctor);
        return nums;
    }
    @Override
    public Doctor viewDoctor(Integer id){
        return  doctorMapper.viewDoctor(id);
    }
}
