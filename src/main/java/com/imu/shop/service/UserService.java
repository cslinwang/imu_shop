package com.imu.shop.service;

import com.imu.shop.pojo.User;
import com.imu.shop.pojo.UserExample;

import java.util.List;

/**
 * Created by WangLin on 2017/11/20.
 */
public interface UserService {
    public User selectByPrimaryKey(int userId);
    /*public User selectByPrimaryKeyAndPassword(int userId,String password);*/
    public List<User> selectByExample(UserExample userExample);

    public void insertSelective(User user);

    public void deleteUserById(Integer userid);

    public void updateByPrimaryKeySelective(User user);

}
