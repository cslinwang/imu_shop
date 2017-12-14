package com.tyut.shop.service;

import com.tyut.shop.pojo.Category;
import com.tyut.shop.pojo.CategoryExample;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wwwglin@163.com on 2017/11/23.
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
