package com.tyut.shop.service.impl;

import com.tyut.shop.dao.ShopCartMapper;
import com.tyut.shop.pojo.ShopCart;
import com.tyut.shop.pojo.ShopCartExample;
import com.tyut.shop.pojo.ShopCartKey;
import com.tyut.shop.service.ShopCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wwwglin@163.com on 2017/11/24.
 */
@Service("addShopCart")
public class ShopCartServiceImpl implements ShopCartService {

    @Autowired(required = false)
    ShopCartMapper shopCartMapper;

    @Override
    public void addShopCart(ShopCart shopCart) {
        shopCartMapper.insertSelective(shopCart);
    }

    @Override
    public List<ShopCart> selectByExample(ShopCartExample shopCartExample) {

        return shopCartMapper.selectByExample(shopCartExample);
    }

    @Override
    public void deleteByKey(ShopCartKey shopCartKey) {
        shopCartMapper.deleteByPrimaryKey(shopCartKey);
    }

    @Override
    public void updateCartByKey(ShopCart shopCart) {
        shopCartMapper.updateByPrimaryKeySelective(shopCart);
    }

    @Override
    public ShopCart selectCartByKey(ShopCartKey shopCartKey) {
        return shopCartMapper.selectByPrimaryKey(shopCartKey);
    }
}
