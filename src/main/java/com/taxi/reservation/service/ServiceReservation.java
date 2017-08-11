package com.taxi.reservation.service;

import com.taxi.reservation.dao.DaoReservation;
import com.taxi.reservation.model.ModelReservation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("serviceReservation")
public class ServiceReservation implements IServiceReservation {

    @Autowired
    DaoReservation daoReservation;

    public ServiceReservation() { super(); }

    // SLF4J Logging
    private static Logger logger = LoggerFactory.getLogger(ServiceReservation.class);

    @Override
    public int insertReservation(ModelReservation modelReservation) {
        int result = -1;

        try {
            result = daoReservation.insertReservation(modelReservation);
        } catch (Exception e) {
            logger.error("insertReservation " + e.getMessage() );
        }

        return result;
    }

    @Override
    public List<ModelReservation> findReservation(int user_no) {

        List<ModelReservation> result = null;

        try{
            result = daoReservation.findReservation(user_no);
        }catch (Exception e){
            logger.error("findReservation " + e.getMessage());
        }

        return result;
    }
}
