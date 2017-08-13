package com.taxi.reservation.controller;

import com.taxi.reservation.model.ModelReservation;
import com.taxi.reservation.model.ModelUser;
import com.taxi.reservation.service.ServiceReservation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@SessionAttributes("user")
public class ReservationController {

    @Autowired
    ServiceReservation serviceReservation;

    @Autowired
    KakaoController kakao;

    private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);

    @RequestMapping(value="/reservation", method = RequestMethod.POST)
    public String insertReservation(Model model, @ModelAttribute ModelReservation modelReservation,
                                    @ModelAttribute("user")ModelUser modelUser){

        modelReservation.setUser_no(modelUser.getUser_no());

        int result = serviceReservation.insertReservation(modelReservation);

        String msg = result > 0 ? "예약 완료!" : "예약 실패!";
        String url = "/";

        logger.info("alert : " + modelReservation.getR_date() + modelReservation.getR_time() + "에 예약");

        model.addAttribute("msg", msg);
        model.addAttribute("url", url);

        if(result > 0){
            String r_date = modelReservation.getR_date();
            System.out.println(r_date);
            String r_time = modelReservation.getR_time();
            kakao.sendSelfMessage(r_date, r_time);
        }

        return "msg/msg";

    }

    @RequestMapping(value="/reservationCheck", method = RequestMethod.POST)
    @ResponseBody
    public List<ModelReservation> findReservation(Model model, @ModelAttribute("user") ModelUser modelUser){

        logger.info("reservationCheck : " + "POST");

        List<ModelReservation> checkResult = serviceReservation.findReservation(modelUser.getUser_no());

        return checkResult;
    }

//    @RequestMapping(value="/kakaoLogin", method = {RequestMethod.POST, RequestMethod.GET})
//    public String kakaoLogin(@RequestParam("code")String code, Model model){
//        System.out.println("code: " + code);
//        return "home";
//    }

}
