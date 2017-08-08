package com.taxi.reservation.dao;

import java.util.List;

import com.taxi.reservation.model.ModelUser;

public interface IDaoUser {

   int insertUser(ModelUser user);
   
   ModelUser login(String id, String pw );
   
   int checkuserid(String userid );
   
}
