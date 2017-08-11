package com.taxi.reservation;

import com.taxi.reservation.controller.ReservationController;
import com.taxi.reservation.dao.DaoReservation;
import com.taxi.reservation.model.ModelReservation;
import com.taxi.reservation.service.ServiceReservation;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml")
public class TestServiceReservation {

    @Autowired
    DaoReservation daoReservation;
    @Autowired
    ServiceReservation serviceReservation;
    @Autowired
    ReservationController reservationController;

    @Test
    public void findReservation(){
        List<ModelReservation> modelReservation = serviceReservation.findReservation(2);
        assertEquals(modelReservation.size(), 4);

        for(ModelReservation model : modelReservation){
            System.out.println(model.getR_idx());
            System.out.println(model.getR_date());
            System.out.println(model.getR_time());
            System.out.println(model.getR_start_place());
            System.out.println(model.getR_arrival_place());
            System.out.println(model.getUser_no());
            System.out.println("=====================================");
        }
    }

}
