package com.anan.service.impl;

import com.anan.entity.Admin;
import com.anan.mapper.AdminMapper;
import com.anan.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminServiceimpl implements AdminService {
    @Resource
    private AdminMapper adminMapper;
    @Override
    public Admin login(String yonghu,String mima,Integer guanliyuan) {
        Admin admin = adminMapper.login(yonghu,mima,guanliyuan);
        return admin;
    }
    @Override
    public int register(Admin admin) {
        int nums = adminMapper.register(admin);
        return nums;
    }
    @Override
    public void addAdmin(Admin admin){
        adminMapper.addAdmin(admin);
    }
    @Override
    public void deleteAdmin(Admin admin){
        adminMapper.deleteAdmin(admin);
    }
    @Override
    public void delete(String yonghu){ adminMapper.delete(yonghu); }

    @Override
    public Admin viewAdmin(String yonghu) {
        Admin admin = adminMapper.selectAdmin(yonghu);
        return admin;
    }
    @Override
    public  void xiugaimima(String yonghu,String mima){
        adminMapper.xiugaimima(yonghu, mima);
    }
    @Override
    public Admin selectAdmini(Integer id) {
        return adminMapper.selectAdmini(id);
    }
}
