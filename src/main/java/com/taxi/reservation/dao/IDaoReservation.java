package com.taxi.reservation.dao;

import java.util.List;

import com.taxi.reservation.model.ModelReservation;

public interface IDaoReservation {

    int insertReservation(ModelReservation modelReservation);

    List<ModelReservation> findReservation(int user_no);
    
    public abstract int deleteReservation(ModelReservation modelReservation);
    
    
}
