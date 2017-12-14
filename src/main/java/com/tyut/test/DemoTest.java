package com.tyut.test;

import com.tyut.shop.pojo.Admin;
import com.tyut.shop.service.AdminService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import static junit.framework.TestCase.assertNotNull;

/**
 * @author wwwglin@163.com
 * @Description:
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class DemoTest extends AbstractJUnit4SpringContextTests {

    @Resource
    AdminService adminService;

    @Test
    public void selectNew() {
        Admin admin = new Admin();
        admin.setAdminname("root");
        assertNotNull( adminService.selectByName(admin));
    }
}
