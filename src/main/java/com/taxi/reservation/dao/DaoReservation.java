package com.taxi.reservation.dao;

import com.taxi.reservation.model.ModelReservation;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("daoReservation")
// @Alias("daoReservation") 가 생략되어 잇다. mybatis에서는 daoReservation이란 이름의 빈으로 등록되어 진다.
public class DaoReservation implements IDaoReservation {

    @Autowired
    private SqlSession session;

    @Override
    public int insertReservation(ModelReservation modelReservation) {
        return session.insert("mapper.mapperReservation.insertReservation", modelReservation);
    }

    @Override
    public List<ModelReservation> findReservation(int user_no) {
        return session.selectList("mapper.mapperReservation.findReservation", user_no);
    }
}
