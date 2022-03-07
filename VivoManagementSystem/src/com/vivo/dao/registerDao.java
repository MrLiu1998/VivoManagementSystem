package com.vivo.dao;

import com.vivo.domain.vivo_user;

import java.sql.SQLException;

/***
 * 注册接口
 */
public interface registerDao {
    /***
     * 添加用户
     * @param u
     */
    public int addUser(vivo_user u) throws SQLException;

    /**
     * 登录查询该用户是否存在
     * @param v_user
     * @param password
     * @return
     * @throws SQLException
     */
    public vivo_user registerLogin(String v_user, String password) throws SQLException;

    /**
     * Ajax查询该用户是否注册过
     * @param v_phone
     * @return
     * @throws SQLException
     */
    public vivo_user registerPhone(String v_phone)throws SQLException;

    /**
     * 修改密码  根据手机号
     * @param v_phone
     * @return
     */
    public int updatePassword(String v_phone, String v_password) throws SQLException;
}
