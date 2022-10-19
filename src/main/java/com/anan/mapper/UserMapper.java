package com.anan.mapper;

import com.anan.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    //注册用户
    void insertUser(String yonghu);
    //管理员浏览档案
    List<User> selectUsers();
    //查看个人用户信息（档案）
    public User selectUser(@Param("yonghu") String yonghu);
    //查看个人用户信息（档案）
    public User selectUser2(@Param("id") Integer id);
    //管理员删除用户档案
    int delete(String yonghu);
    //更新用户信息（档案）
    int updateUser(User user);

}
