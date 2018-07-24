package com.hd.service;

import com.hd.pojo.User;

import java.util.List;

/**
 * Created by 赵传昊 on 2018/7/18.
 */
public interface UserService {
    List<User> getAllUser();
    User getUserByName(String user_name);
    void addUser(User user);
    void updateUser(User user);
}
