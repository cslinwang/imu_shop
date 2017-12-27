package com.imu.shop.service;

import com.imu.shop.pojo.Admin;
import com.imu.shop.dao.AdminMapper;
import com.imu.shop.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by WangLin on 2017/11/19.
 */
@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired(required = false)
    private AdminMapper adminMapper;

    @Override
    public Admin selectByName(Admin admin) {
        return adminMapper.selectByName(admin);
    }
}
