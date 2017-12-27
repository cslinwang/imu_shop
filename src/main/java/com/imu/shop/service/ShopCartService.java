package com.imu.shop.service;

import com.imu.shop.pojo.ShopCart;
import com.imu.shop.pojo.ShopCartExample;
import com.imu.shop.pojo.ShopCartKey;

import java.util.List;

/**
 * Created by WangLin on 2017/11/24.
 */
public interface ShopCartService {
    public void addShopCart(ShopCart shopCart);

    public List<ShopCart> selectByExample(ShopCartExample shopCartExample);

    public void deleteByKey(ShopCartKey shopCartKey);

    public void updateCartByKey(ShopCart shopCart);

    public ShopCart selectCartByKey(ShopCartKey shopCartKey);
}
