package com.imu.shop.service.impl;

import com.imu.shop.dao.CategoryMapper;
import com.imu.shop.service.CateService;
import com.imu.shop.pojo.Category;
import com.imu.shop.pojo.CategoryExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by WangLin on 2017/11/23.
 */
@Service("cateService")
public class CateServiceImpl implements CateService {

    @Autowired(required = false)
    CategoryMapper categoryMapper;

    @Override
    public List<Category> selectByExample(CategoryExample example) {
        return categoryMapper.selectByExample(example);
    }

    @Override
    public void insertSelective(Category category) {
        categoryMapper.insertSelective(category);
    }

    @Override
    public List<Category> selectByExampleLimit(CategoryExample digCategoryExample) {
        return categoryMapper.selectByExampleLimit(digCategoryExample);
    }

    @Override
    public Category selectById(Integer category) {
        return categoryMapper.selectByPrimaryKey(category);
    }

    @Override
    public void updateByPrimaryKeySelective(Category category) {
        categoryMapper.updateByPrimaryKeySelective(category);
    }

    @Override
    public void deleteByPrimaryKey(Integer cateid) {
        categoryMapper.deleteByPrimaryKey(cateid);
    }
}
