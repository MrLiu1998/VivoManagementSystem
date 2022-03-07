package com.vivo.service;

import com.vivo.dao.Impl.registerDaoImpl;
import com.vivo.domain.vivo_user;

import java.sql.SQLException;

/**
 * ×¢²áÒµÎñ²ã
 */
public class registerService {
    private registerDaoImpl registerDao = new registerDaoImpl();

    public int add(vivo_user vivo_user) throws SQLException {
        return registerDao.addUser(vivo_user);
    }

    public vivo_user registerLogin(String v_phone, String password) throws SQLException {
        return registerDao.registerLogin(v_phone, password);
    }


    public vivo_user registerPhone(String v_phone) throws SQLException {
        return registerDao.registerPhone(v_phone);
    }

    public int editorUserInfo(vivo_user vivo_user) throws SQLException {
        return registerDao.editorUserInfo(vivo_user);
    }

    public vivo_user getUserInfo(String v_uid) throws SQLException {
        return registerDao.getUserInfo(v_uid);
    }

    public int updatePassword(String v_phone, String v_password) throws SQLException {
       return registerDao.updatePassword(v_phone,v_password);
    }

    public int editorPassword(String v_uid, String v_password) throws SQLException {
        return registerDao.editorPassword(v_uid,v_password);
    }

}
