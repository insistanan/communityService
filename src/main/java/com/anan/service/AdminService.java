package com.anan.service;

import com.anan.entity.Admin;

public interface AdminService {
    Admin login(String yonghu,String mima,Integer guanliyuan);
    int register(Admin admin);
    void addAdmin(Admin admin);
    void deleteAdmin(Admin admin);
    void delete(String yonghu);
    public Admin viewAdmin(String yonghu);
    void xiugaimima(String yonghu , String mima);
    Admin selectAdmini(Integer id);
}
