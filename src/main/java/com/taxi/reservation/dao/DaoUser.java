package com.taxi.reservation.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.taxi.reservation.model.ModelUser;

@Repository("daouser")
public class DaoUser implements IDaoUser {

    @Autowired
    @Qualifier("sqlSession")
    private SqlSession session;
    
    @Override
    public int insertUser(ModelUser user) {
        return session.insert("mapper.mapperUser.insertUser", user);   
    }
    @Override
    public int checkuserid(String userid) {
        return session.selectOne("mapper.mapperUser.checkuserid", userid);
    }

    @Override
    public ModelUser login(String id, String pw ) {

        ModelUser user = new ModelUser(id, pw);
        return session.selectOne("mapper.mapperUser.login", user);
    }

    @Override
    public int refreshToken(ModelUser user) {
        return session.insert("mapper.mapperUser.refreshToken", user);
    }
}
