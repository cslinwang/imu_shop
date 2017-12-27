package com.imu.shop.service;

import com.imu.shop.pojo.Category;
import com.imu.shop.pojo.CategoryExample;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by WangLin on 2017/11/23.
 */
@Service("CateService")
public interface CateService {
    public List<Category> selectByExample(CategoryExample example);

    public void insertSelective(Category category);

    public List<Category> selectByExampleLimit(CategoryExample digCategoryExample);

    public Category selectById(Integer category);

    public void updateByPrimaryKeySelective(Category category);

    public void deleteByPrimaryKey(Integer cateid);
}
