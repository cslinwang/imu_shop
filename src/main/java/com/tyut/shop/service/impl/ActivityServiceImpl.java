package com.tyut.shop.service.impl;

import com.tyut.shop.dao.ActivityMapper;
import com.tyut.shop.pojo.Activity;
import com.tyut.shop.pojo.ActivityExample;
import com.tyut.shop.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wwwglin@163.com on 2017/11/27.
 */
@Service("activityService")
public class ActivityServiceImpl implements ActivityService {

    @Autowired(required = false)
    ActivityMapper activityMapper;

    public List<Activity> getAllActivity(ActivityExample activityExample) {
        return activityMapper.selectByExample(activityExample);
    }

    @Override
    public void insertActivitySelective(Activity activity) {
        activityMapper.insertSelective(activity);
    }

    @Override
    public Activity selectByKey(Integer activityid) {
        return activityMapper.selectByPrimaryKey(activityid);
    }

    @Override
    public void deleteByActivityId(Integer activityid) {
        activityMapper.deleteByPrimaryKey(activityid);
    }

    /*@Override
    public void updateGoodsActSelective(Goods goods) {

    }*/
}
