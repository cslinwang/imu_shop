package com.imu.shop.service;

import com.imu.shop.pojo.ActivityExample;
import com.imu.shop.pojo.Activity;

import java.util.List;

/**
 * Created by WangLin on 2017/11/27.
 */
public interface ActivityService {
    List<Activity> getAllActivity(ActivityExample activityExample);

    void insertActivitySelective(Activity activity);

    Activity selectByKey(Integer activityid);

    void deleteByActivityId(Integer activityid);

//    void updateGoodsActSelective(Goods goods);
}
