package com.anan.mapper;

import com.anan.entity.Doctor;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DoctorMapper {
    int insertDoctor(Doctor doctor);
    List<Doctor> selectDoctor();
    int deleteDoctor(@Param("id")Integer id);
    int updateDoctor(Doctor doctor);
    Doctor viewDoctor(Integer id);
}
