package com.hd.service.impl;

import com.hd.dao.UserMapper;
import com.hd.pojo.User;
import com.hd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 赵传昊 on 2018/7/18.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> getAllUser() {
        List<User> users=userMapper.getAllUser();
        for (User u:users) {
            System.out.println("==========");
            System.out.println(u.getUser_name());
            System.out.println("==========");
        }
        return users;
    }

    @Override
    public User getUserByName(String user_name) {
        return userMapper.getUserByName(user_name);
    }

    @Override
    public void addUser(User user) {
        userMapper.addUser(user);
    }
    @Override
    public void updateUser(User user){
        userMapper.updateUser(user);
    }
}
