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
import org.springframework.web.bind.annotation.*;

import com.taxi.reservation.model.ModelUser;
import com.taxi.reservation.service.IServiceUser;
import org.springframework.web.bind.support.SessionStatus;

import static com.taxi.reservation.controller.KakaoController.access_token;


/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes("user")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	   @Autowired
	    @Qualifier("serviceuser")
	    IServiceUser usersvr;

	   @Autowired
	   KakaoController kakao;

    @ModelAttribute("user")
    public ModelUser mockUser(){
        ModelUser user = new ModelUser();
        return user;
    }

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
            , @ModelAttribute("user") ModelUser user
            , HttpSession session) {
        logger.info("register : POST");

        if(user.getUser_carnum() == null){
        user.setUser_lv(1);
        }
        else{
        user.setUser_lv(2);
        }

        if(user.getUser_check_kakao() == null || user.getUser_refresh_token() == null){
            user.setUser_check_kakao("off");
        }

        System.out.println("refresh_token : " + user.getUser_refresh_token());

        int result = usersvr.insertUser(user);
        String msg = result > 0 ? "회원 가입을 축하드립니다." : "회원 가입 실패!";
        String url = "/";
        model.addAttribute("msg", msg);
        model.addAttribute("url", url);

        return "msg/msg";
    }
    @RequestMapping(value = "/register")
    public String registerGet(Model model){
        return "home";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(Model model, @ModelAttribute ModelUser user){

        logger.info("Login : POST");

        ModelUser loginUser = new ModelUser();
        loginUser = usersvr.login(user.getUser_id(), user.getUser_pw());

        String msg = null;
        String url = null;

        // 로그인에 실패하였을 경우 해당 에러 메시지를 출력하고 다시 되돌아가기 위해 사용하는 템플릿
        // msg와 돌아갈 url 주소를 String 타입으로 모델에 등록하고 msg/msg.jsp 템플릿에 보내면
        // 해당 jsp는 알림을 띄운뒤 저장된 주소창으로 이동하는 역할만 담당함.
        if(loginUser == null){
            msg = "등록된 아이디나 비밀번호가 맞지 않습니다.";
            url = "/";
            model.addAttribute("msg", msg);
            model.addAttribute("url", url);
            return "msg/msg";
        } else {
            // 모델에 해당 attribute가 올라감과 동시에 @SessionAttributes에도 등록 됌
            // 이후 view 단에서는 user라는 객체가 해당 로그인 유저의 정보를 모두 가지고 있으며
            // 사용하기 위해서는 ${user.user_id} 와 같이 처음에 객체명을 써주고 사용하면 됌.
            model.addAttribute("user", loginUser);

            // 카카오 알림 서비스 가입시 토큰 업데이트를 통한 access_token 값 취득.
            if(loginUser.getUser_check_kakao().equals("on")){
                kakao.kakaoRefreshToken(loginUser);
            }

            return "home";
        }
    }

    @RequestMapping(value = "/login")
    public String loginGet(Model model){
        return "home";
    }

    @RequestMapping(value = "/logout")
    public String logout(Model model, SessionStatus status){

        logger.info("Logout : GET");

        status.setComplete(); // SessionAttributes에 있는 세션값들을 초기화 함 (HttpSession에서 session.invalidate()와 같음)

        String msg = "정상적으로 로그아웃 되었습니다.";
        String url = "/";

        model.addAttribute("msg", msg);
        model.addAttribute("url", url);

        return "msg/msg";
    }
}
