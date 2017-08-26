package com.taxi.reservation.dao;

import java.util.HashMap;
import java.util.List;

import com.taxi.reservation.model.ModelReservation;
import com.taxi.reservation.model.ModelUser;

public interface IDaoReservation {

    int insertReservation(ModelReservation modelReservation);

    List<ModelReservation> findReservation(int user_no);
    
    public abstract int deleteReservation(ModelReservation modelReservation);

    List<ModelReservation> d_findReservation(ModelReservation modelReservation);
    
    int receive(ModelReservation ModelReservation);

    List<HashMap<String,String>> d_findMyReservation(int d_user_no);

    int d_receiveCancel(int r_idx);

    List<ModelReservation>  d_reservationPositionSearch(String searchPlace, String reservationPositon);
}
