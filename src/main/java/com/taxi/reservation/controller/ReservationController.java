package com.taxi.reservation.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.taxi.reservation.model.ModelReservation;
import com.taxi.reservation.model.ModelUser;
import com.taxi.reservation.service.ServiceReservation;

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
    
    @RequestMapping(value = "/reservationdelete", method = RequestMethod.POST)
    public String reservationdelete( Model model 
            , @RequestParam(value="user_no",  defaultValue="" )  Integer user_no
            , @RequestParam(value="r_idx", defaultValue="")  Integer r_idx ) {
        logger.info("/reservationdelete : POST");
        
        
      ModelReservation reservation = new ModelReservation();
      reservation.setUser_no(user_no);
      /*reservation.setR_idx(r_idx);*/
      int result = serviceReservation.deleteReservation(reservation);
        
      /*String msg = result > 0 ? "예약 삭제 완료!" : "예약 삭제 실패!";
      String url = "/";

      model.addAttribute("msg", msg);
      model.addAttribute("url", url);*/
      
      
      return "/";
    } 

//    @RequestMapping(value="/kakaoLogin", method = {RequestMethod.POST, RequestMethod.GET})
//    public String kakaoLogin(@RequestParam("code")String code, Model model){
//        System.out.println("code: " + code);
//        return "home";
//    }

}
