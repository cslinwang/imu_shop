package com.imu.shop.service.impl;

import com.imu.shop.dao.ImagePathMapper;
import com.imu.shop.pojo.Goods;
import com.imu.shop.pojo.GoodsExample;
import com.imu.shop.pojo.ImagePath;
import com.imu.shop.pojo.ImagePathExample;
import com.imu.shop.service.GoodsService;
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

    @Autowired(required = false)
    ImagePathMapper imagePathMapper;

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
        //新增商品
        Goods goods = new Goods();
        goods = goodsService.selectAllGoods().get(0);
        goods.setGoodsid(1);
        //goods.setImagePaths();
        goodsService.addGoods(goods);
        assertEquals(goodsService.selectById(1).getGoodsname(), goods.getGoodsname());
        goodsService.deleteGoodsById(goods.getGoodsid());
    }

    /**
     * Method: addImagePath(ImagePath imagePath)
     */
    @Test
    public void testAddImagePath() throws Exception {
        //添加路径
        /*Goods goods = goodsService.selectAllGoods().get(0);
        ImagePathExample imagePathExample = new ImagePathExample();
        imagePathExample.or().andGoodidEqualTo(goods.getGoodsid());
        List<ImagePath> imagePathList = imagePathMapper.selectByExample(imagePathExample);
        ImagePath imagePath = imagePathList.get(0);
        ImagePath imagePathTest = imagePath;
        imagePathTest.setPath("aaaa");
        goodsService.addImagePath(imagePathTest);
        //测试
        assertEquals(((goodsService.selectAllGoods().get(0).getImagePaths()).get(0).getPath()), imagePathTest.getPath());
        //改回去
        goodsService.addImagePath(imagePath);*/
    }

    /**
     * Method: selectByExample(GoodsExample example)
     */
    @Test
    public void testSelectByExample() throws Exception {
        //查询所有
        GoodsExample goodsExample = new GoodsExample();
        List<Goods> goodsList = goodsService.selectByExample(goodsExample);
        //System.out.println(goodsList.get(0));
        assertNotNull(goodsList);
        //查询关键字
        String keyWord = "%衣%";
        goodsExample.or().andGoodsnameLike(keyWord);
        goodsList = goodsService.selectByExample(goodsExample);
        //System.out.println(goodsList.size());
        assertNotNull(goodsList);
    }


    /**
     * Method: deleteGoodsById(Integer goodsid)
     */
    @Test
    public void testDeleteGoodsById() throws Exception {

        Goods goods = new Goods();
        goods = goodsService.selectAllGoods().get(0);
        goods.setGoodsid(1);
        //goods.setImagePaths();
        goodsService.addGoods(goods);
        assertEquals(goodsService.selectById(1).getGoodsname(), goods.getGoodsname());
        goodsService.deleteGoodsById(goods.getGoodsid());
        //查询是否删除
        assertNull(goodsService.selectById(goods.getGoodsid()));


    }

    /**
     * Method: updateGoodsById(Goods goods)
     */
    @Test
    public void testUpdateGoodsById() throws Exception {

        int primaryNum;
        //对商品的第一个进行修改
        Goods goods = new Goods();
        goods = (Goods) goodsService.selectAllGoods().get(0);
        primaryNum = goods.getNum();
        goods.setNum(10000);
        goodsService.updateGoodsById(goods);

        //查询是否修改
        assertEquals(((Goods) goodsService.selectById(goods.getGoodsid())).getNum(), goods.getNum());

        //改回去
        goods.setNum(3000);
        goodsService.updateGoodsById(goods);
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

    /**
     * Method: selectAllGoods();
     */
    @Test
    public void testSelectAllGoods() throws Exception {
        List<Goods> goodsList = goodsService.selectAllGoods();
        System.out.println(goodsList.size());
        assertNotNull(goodsList);
    }

} 
