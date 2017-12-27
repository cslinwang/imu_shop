package com.imu.shop.service;

import com.imu.shop.pojo.Goods;
import com.imu.shop.pojo.GoodsExample;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

/**
 * GoodsServiceImpl Tester.
 *
 * @author <Authors name>
 * @version 1.0
 * @since <pre>11, 27, 2017</pre>
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class GoodsServiceImplTest {

    @Autowired(required = false)
    GoodsService goodsService;

    @Before
    public void before() throws Exception {
    }

    @After
    public void after() throws Exception {
    }

    /**
     * Method: addGoods(Goods goods)
     */
    @Test
    public void testAddGoods() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: addImagePath(ImagePath imagePath)
     */
    @Test
    public void testAddImagePath() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: selectByExample(GoodsExample example)
     */
    @Test
    public void testSelectByExample() throws Exception {
        List<Goods> goodsList = goodsService.selectByExample(new GoodsExample());
        //System.out.println(goodsList.get(0));
        assertNotNull(goodsList);
    }


    /**
     * Method: deleteGoodsById(Integer goodsid)
     */
    @Test
    public void testDeleteGoodsById() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: updateGoodsById(Goods goods)
     */
    @Test
    public void testUpdateGoodsById() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: findImagePath(Integer goodsid)
     */
    @Test
    public void testFindImagePath() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: selectById(Integer goodsid)
     */
    @Test
    public void testSelectById() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: selectByExampleLimit(GoodsExample digGoodsExample)
     */
    @Test
    public void testSelectByExampleLimit() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: addFavorite(Favorite favorite)
     */
    @Test
    public void testAddFavorite() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: selectFavByKey(FavoriteKey favoriteKey)
     */
    @Test
    public void testSelectFavByKey() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: deleteFavByKey(FavoriteKey favoriteKey)
     */
    @Test
    public void testDeleteFavByKey() throws Exception {
//TODO: Test goes here... 
    }

    /**
     * Method: selectFavByExample(FavoriteExample favoriteExample)
     */
    @Test
    public void testSelectFavByExample() throws Exception {
//TODO: Test goes here... 
    }


} 
