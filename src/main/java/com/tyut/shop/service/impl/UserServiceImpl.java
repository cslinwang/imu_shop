package com.tyut.shop.service.impl;

import com.tyut.shop.dao.UserMapper;
import com.tyut.shop.pojo.User;
import com.tyut.shop.pojo.UserExample;
import com.tyut.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wwwglin@163.com on 2017/11/22.
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired(required = false)
    private UserMapper userMapper;

    @Override
    public User selectByPrimaryKey(int userId) {
        return  userMapper.selectByPrimaryKey(userId);
    }

    @Override
    public List<User> selectByExample(UserExample userExample) {
        return userMapper.selectByExample(userExample);
    }

    @Override
    public void insertSelective(User user) {
        userMapper.insertSelective(user);
    }

    @Override
    public void deleteUserById(Integer userid) {
        userMapper.deleteByPrimaryKey(userid);
    }

    @Override
    public void updateByPrimaryKeySelective(User user) {
        userMapper.updateByPrimaryKeySelective(user);
    }


   /* @Override
    public User selectByPrimaryKeyAndPassword(int userId,String password){return userMapper.selectByPrimaryKeyAndPassword();}*/
}
