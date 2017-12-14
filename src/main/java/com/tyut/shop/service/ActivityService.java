package com.tyut.shop.service;

import com.tyut.shop.pojo.Activity;
import com.tyut.shop.pojo.ActivityExample;

import java.util.List;

/**
 * Created by wwwglin@163.com on 2017/11/27.
 */
public interface ActivityService {
    List<Activity> getAllActivity(ActivityExample activityExample);

    void insertActivitySelective(Activity activity);

    Activity selectByKey(Integer activityid);

    void deleteByActivityId(Integer activityid);

//    void updateGoodsActSelective(Goods goods);
}
