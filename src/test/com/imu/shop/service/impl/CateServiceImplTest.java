package com.imu.shop.service.impl;

import com.imu.shop.pojo.Category;
import com.imu.shop.pojo.CategoryExample;
import com.imu.shop.service.CateService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.assertNotNull;

/**
 * CateServiceImpl Tester.
 *
 * @author <Authors name>
 * @version 1.0
 * @since <pre>ʮ���� 27, 2017</pre>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class CateServiceImplTest {

    @Autowired(required = false)
    CateService cateService;

    @Before
    public void before() throws Exception {
    }

    @After
    public void after() throws Exception {
    }

    /**
     * Method: selectByExample(CategoryExample example)
     */
    @Test
    public void testSelectByExample() throws Exception {
        List<Category> categoryList = cateService.selectByExample(new CategoryExample());
        System.out.println(categoryList.size());
        assertNotNull(categoryList);
    }

    /**
     * Method: insertSelective(Category category)
     */
    @Test
    public void testInsertSelective() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: selectByExampleLimit(CategoryExample digCategoryExample)
     */
    @Test
    public void testSelectByExampleLimit() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: selectById(Integer category)
     */
    @Test
    public void testSelectById() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: updateByPrimaryKeySelective(Category category)
     */
    @Test
    public void testUpdateByPrimaryKeySelective() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: deleteByPrimaryKey(Integer cateid)
     */
    @Test
    public void testDeleteByPrimaryKey() throws Exception {
//TODO: Test goes here... 
    }


} 
