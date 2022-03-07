package com.vivo.dao.Impl;

import com.vivo.dao.QueryRunnerDao;
import com.vivo.dao.registerDao;
import com.vivo.domain.vivo_user;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class registerDaoImpl extends QueryRunnerDao implements registerDao {

    @Override
    public int addUser(vivo_user u) throws SQLException {
        String sql = "insert into  vivo_user  (v_uid,v_user,v_Phone,v_password,v_Email,v_headPortrait,v_sex,v_birthday, v_address)values(?,?,?,?,?,?,?,?,?)";
        return QueryRunnerDao.qr.update(sql, u.getV_uid(), u.getV_user(), u.getV_phone(), u.getV_password(), u.getV_Email(), u.getV_headPortrait(), u.getV_sex(), u.getV_birthday(), u.getV_address());
    }

    @Override
    public vivo_user registerLogin(String v_phone, String password) throws SQLException {


        //select * from vivo_user where v_password = 'q123456' and (v_phone ='0' or v_Email ='169aaa2700664@qq.com' or v_user = "ÑîË§" );
        String sql = "SELECT * FROM vivo_user where  v_password=? and (v_phone=? or v_email=? or v_user=? )  ";
        return QueryRunnerDao.qr.query(sql, new BeanHandler<vivo_user>(vivo_user.class), password, v_phone, v_phone, v_phone);
    }

    @Override
    public vivo_user registerPhone(String v_phone) throws SQLException {
        String sql = "select * from vivo_user where v_phone=?";
        return QueryRunnerDao.qr.query(sql, new BeanHandler<vivo_user>(vivo_user.class), v_phone);
    }

    @Override
    public int updatePassword(String v_phone, String v_password) throws SQLException {
        String sql = "update vivo_user set  v_password = ? where v_phone=?";
        return QueryRunnerDao.qr.update(sql, v_password, v_phone);
    }

    public int editorUserInfo(vivo_user vivo_user) throws SQLException {
        String sql = "update vivo_user set v_sex=?,v_birthday=?,v_address=? where v_uid = ?";
        return qr.update(sql, vivo_user.getV_sex(), vivo_user.getV_birthday(), vivo_user.getV_address(), vivo_user.getV_uid());
    }

    public vivo_user getUserInfo(String v_uid) throws SQLException {

        String sql = "select * from vivo_user where v_uid = ?";

        return qr.query(sql,new BeanHandler<vivo_user>(vivo_user.class),v_uid);
    }

    public int editorPassword(String v_uid, String v_password) throws SQLException {
        String sql = "update vivo_user set  v_password = ? where v_uid=?";
        return qr.update(sql, v_password, v_uid);
    }
}
