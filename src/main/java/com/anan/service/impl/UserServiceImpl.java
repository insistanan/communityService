package com.anan.service.impl;

import com.anan.entity.User;
import com.anan.mapper.UserMapper;
import com.anan.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;
    //注册用户
    @Override
    public void addUser(String yonghu) {
        userMapper.insertUser(yonghu);
    }
    //查询用户
    @Override
    public List<User> selectUsers() {
        return userMapper.selectUsers();
    }
    //更新用户
    @Override
    public int updateUser(User user) {
        int nums = userMapper.updateUser(user);
        return nums;
    }
    //删除用户
    @Override
    public void delete(String yonghu){ userMapper.delete(yonghu); }
    //查看用户信息
    @Override
    public User viewUser(String yonghu) {
        User user = userMapper.selectUser(yonghu);
        return user;
    }
    //查看用户信息
    @Override
    public User viewUser2(Integer id) {
        User user = userMapper.selectUser2(id);
        return user;
    }

}
