package com.tyut.shop.service;

import com.tyut.shop.pojo.ShopCart;
import com.tyut.shop.pojo.ShopCartExample;
import com.tyut.shop.pojo.ShopCartKey;

import java.util.List;

/**
 * Created by wwwglin@163.com on 2017/11/24.
 */
public interface ShopCartService {
    public void addShopCart(ShopCart shopCart);

    public List<ShopCart> selectByExample(ShopCartExample shopCartExample);

    public void deleteByKey(ShopCartKey shopCartKey);

    public void updateCartByKey(ShopCart shopCart);

    public ShopCart selectCartByKey(ShopCartKey shopCartKey);
}
