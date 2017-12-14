package com.tyut.shop.mybatis;

import com.tyut.shop.dao.AdminMapper;
//import com.neu.shop.dao.DepartmentMapper;
import com.tyut.shop.pojo.Admin;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by wwwglin@163.com on 2017/11/17.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class MapperTest {

    /*@Autowired(required = false)
    DepartmentMapper departmentMapper;*/

    @Autowired(required = false)
    AdminMapper adminMapper;

    /**
     * 测试DepartmentMapper
     */
    @Test
    public void testInsertSelective() {
        /*//创建SpringIOC容器
        ApplicationContext ioc = new ClassPathXmlApplicationContext("applicationContext.xml");
        //从容器中获取Mapper
        DepartmentMapper bean = ioc.getBean(DepartmentMapper.class);*/

        /*System.out.println(bean);*/

        /*System.out.println(departmentMapper);

        departmentMapper.insertSelective(new Department(null, "业务部"));
        departmentMapper.insertSelective(new Department(null, "销售部"));*/

        System.out.println(adminMapper.selectByName(new Admin(null,"root","root")));

    }

}
