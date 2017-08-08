package com.taxi.reservation.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.omg.PortableInterceptor.USER_EXCEPTION;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.taxi.reservation.model.ModelUser;
import com.taxi.reservation.service.IServiceUser;


/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	   @Autowired
	    @Qualifier("serviceuser")
	    IServiceUser usersvr;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);


		return "home";
	}

	@RequestMapping(value = "/user/checkuserid", method = RequestMethod.GET)
    @ResponseBody
    public int checkuserid(Model model
            , @RequestParam(value="user_id", defaultValue="")String userid) {
        logger.info("checkuserid : get");
        
        int result = usersvr.checkuserid(userid);
        
        
        return result;
        
    }
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(Model model
            , @ModelAttribute ModelUser user
            , HttpSession session) {
        logger.info("register : POST");

        if(user.getUser_carnum() == null){
        user.setUser_lv(1);
        }
        else{
        user.setUser_lv(2);
        }        
        
        
        usersvr.insertUser(user);

        return "home";
    }
	
	
}
