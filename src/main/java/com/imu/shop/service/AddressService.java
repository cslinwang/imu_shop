package com.imu.shop.service;

import com.imu.shop.pojo.Address;
import com.imu.shop.pojo.AddressExample;

import java.util.List;

/**
 * Created by WangLin on 2017/11/25.
 */
public interface AddressService {
    public List<Address> getAllAddressByExample(AddressExample addressExample);

    public void updateByPrimaryKeySelective(Address address);

    public void deleteByPrimaryKey(Integer addressid);

    public void insert(Address address);

    public void  insertSelective(Address address);

    public Address selectByPrimaryKey(Integer addressid);
}
