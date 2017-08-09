package com.taxi.reservation.dao;

import com.taxi.reservation.model.ModelReservation;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("daoReservation")
public class DaoReservation implements IDaoReservation {

    @Autowired
    private SqlSession session;

    @Override
    public int insertReservation(ModelReservation modelReservation) {
        return session.insert("mapper.mapperReservation.insertReservation", modelReservation);
    }

}
