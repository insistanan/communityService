package com.anan.service;

import com.anan.entity.User;

import java.util.List;


public interface UserService {
    List<User> selectUsers();
    void delete(String yonghu);
    int updateUser(User user);
    void addUser(String yonghu);
    public User viewUser(String yonghu);
    public User viewUser2(Integer id);
}
