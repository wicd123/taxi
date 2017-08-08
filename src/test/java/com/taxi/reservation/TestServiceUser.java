package com.taxi.reservation;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.taxi.reservation.model.ModelUser;
import com.taxi.reservation.service.IServiceUser;

//Sorts by method name
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class TestServiceUser {
    
    //private static SqlSession session = null;
    private static ApplicationContext context = null;
    private static IServiceUser service = null;

    Date from = new Date();
    SimpleDateFormat tf = new SimpleDateFormat("yyMMddhhmmss");
    String dtm = tf.format(from);

    String userid = "MISS A" + dtm;
    
    
    @BeforeClass
    public static void setUpBeforeClass() throws Exception {
        context = new ClassPathXmlApplicationContext("file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml");
        service = context.getBean("serviceuser", IServiceUser.class);
    }
    
    @AfterClass
    public static void tearDownAfterClass() throws Exception {
        //((ClassPathXmlApplicationContext)context).close();
    }
    

    @Test
    public void testInsertUser() {
        ModelUser user = new ModelUser();
        user.setUser_id("test2");
        user.setUser_pw("1234");
        user.setUser_phone("010-3214-6879");
        user.setUser_email("wicd123@naver.com");
        user.setUser_gender("남");
        user.setUser_carnum("miss1234");
        user.setUser_lv(1);
        
        int result = service.insertUser(user);
        
        assertEquals(result, 1);
    }

    @Test
    public void testLogin() {
        ModelUser result = service.login(this.userid, "miss1234");
        
        /*assertNotNull(result);
        assertEquals(result.getUserid(), this.userid );*/
    }

    @Test
    public void testLogout() {
    }
    
}
