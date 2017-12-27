package com.imu.shop.service;

import com.imu.shop.pojo.*;
import com.imu.shop.pojo.*;

import java.util.List;

/**
 * Created by WangLin on 2017/11/25.
 */
public interface OrderService {
    public void insertOrder(Order order);

    public void deleteById(Integer orderid);


    public List<Order> selectOrderByExample(OrderExample orderExample);

    public List<OrderItem> getOrderItemByExample(OrderItemExample orderItemExample);

    public Address getAddressByKey(Integer addressid);

    public void updateOrderByKey(Order order);

    public Order selectByPrimaryKey(Integer orderid);

    void insertOrderItem(OrderItem orderItem);
}
