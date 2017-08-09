package com.taxi.reservation.controller;

import com.taxi.reservation.model.ModelReservation;
import com.taxi.reservation.model.ModelUser;
import com.taxi.reservation.service.ServiceReservation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("user")
public class ReservationController {

    @Autowired
    ServiceReservation serviceReservation;

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

        return "msg/msg";

    }

}
