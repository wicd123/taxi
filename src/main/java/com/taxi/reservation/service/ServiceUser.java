package com.taxi.reservation.service;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.taxi.reservation.dao.IDaoUser;
import com.taxi.reservation.model.ModelUser;

@Service("serviceuser")
public class ServiceUser implements IServiceUser {
    
    // SLF4J Logging
    private static Logger logger = LoggerFactory.getLogger(ServiceUser.class);

    @Autowired
    @Qualifier("daouser")
    private IDaoUser daouser;

    public ServiceUser() {
        super();
    }

    @Override
    public int insertUser(ModelUser user) {
        int result = -1;
        try {
            result = daouser.insertUser(user);
        } catch (Exception e) {
            logger.error("insertUser " + e.getMessage() );
        }
        return result;
    }

    @Override
    public ModelUser login(String id, String pw) {
        ModelUser result = null;
        try {
            result = daouser.login(id, pw);
        } catch (Exception e) {
            logger.error("login " + e.getMessage() );
        }
        return result;
    }

    @Override
    public int checkuserid(String userid) {
        int result = -1;
        try {
            result = daouser.checkuserid(userid);
        } catch (Exception e) {
            logger.error("checkuserid " + e.getMessage() );
        }
        return result;
    }

    @Override
    public int refreshToken(ModelUser user) {
        int result = -1;
        try {
            result = daouser.refreshToken(user);
        } catch (Exception e) {
            logger.error("refreshToken " + e.getMessage() );
        }
        return result;
    }

    @Override
    public int userUpdate(HashMap<String, String> userUpdate) {
        int result = -1;
        try {
            result = daouser.userUpdate(userUpdate);
        } catch (Exception e) {
            logger.error("userUpdate " + e.getMessage() );
        }
        return result;
    }

    @Override
    public int deleteUser(String id, String password) {
        int result = -1;
        try {
            result = daouser.deleteUser(id, password);
        } catch (Exception e) {
            logger.error("deleteUser " + e.getMessage() );
        }
        return result;
    }
}
