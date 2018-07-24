package com.hd.dao;

import com.hd.pojo.User;

import java.util.List;

/**
 * Created by 赵传昊 on 2018/7/18.
 */
public interface UserMapper {
    List<User> getAllUser();
    User getUserByName(String user_name);
//    User getUserById(Integer user_id);
    void deleteUserByName(String user_name);
    void addUser(User user);
    void updateUser(User user);
}
