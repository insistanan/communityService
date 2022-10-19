package com.anan.service;

import com.anan.entity.Doctor;

import java.util.List;

public interface DoctorService {
    int addDoctor(Doctor doctor);
    List<Doctor> selectDoctor();
    int deleteDoctor(Integer id);
    int updateDoctor(Doctor doctor);
    Doctor viewDoctor(Integer id);
}
