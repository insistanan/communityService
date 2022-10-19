package com.anan.mapper;

import com.anan.entity.Admin;
import com.anan.entity.Fuzeren;
import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
    //登录
    public Admin login(@Param("yonghu")String yonghu,@Param("mima") String mima, @Param("guanliyuan")Integer guanliyuan);
    //注册
    int register(Admin admin);
    //添加管理员
    public void addAdmin(Admin admin);
    //取消管理员
    void deleteAdmin(Admin admin);
    //删除用户
    int delete(String yonghu);
    //找到密码用于修改
    public Admin selectAdmin(@Param("yonghu") String yonghu);
    void xiugaimima(@Param("yonghu") String yonghu,@Param("mima") String mima);
    //小区负责人变更
    int updateFuzeren(Fuzeren fuzeren);
    //浏览档案
    Admin selectAdmini(Integer id);
}
