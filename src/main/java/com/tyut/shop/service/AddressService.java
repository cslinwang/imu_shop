package com.tyut.shop.service;

import com.tyut.shop.pojo.Address;
import com.tyut.shop.pojo.AddressExample;

import java.util.List;

/**
 * Created by wwwglin@163.com on 2017/11/25.
 */
public interface AddressService {
    public List<Address> getAllAddressByExample(AddressExample addressExample);

    public void updateByPrimaryKeySelective(Address address);

    public void deleteByPrimaryKey(Integer addressid);

    public void insert(Address address);

    public void  insertSelective(Address address);

    public Address selectByPrimaryKey(Integer addressid);
}
