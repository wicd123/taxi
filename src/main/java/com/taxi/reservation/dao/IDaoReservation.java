package com.taxi.reservation.dao;

import com.taxi.reservation.model.ModelReservation;

import java.util.List;

public interface IDaoReservation {

    int insertReservation(ModelReservation modelReservation);

    List<ModelReservation> findReservation(int user_no);

}
