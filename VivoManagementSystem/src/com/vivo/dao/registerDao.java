package com.vivo.dao;

import com.vivo.domain.vivo_user;

import java.sql.SQLException;

/***
 * ע��ӿ�
 */
public interface registerDao {
    /***
     * ����û�
     * @param u
     */
    public int addUser(vivo_user u) throws SQLException;

    /**
     * ��¼��ѯ���û��Ƿ����
     * @param v_user
     * @param password
     * @return
     * @throws SQLException
     */
    public vivo_user registerLogin(String v_user, String password) throws SQLException;

    /**
     * Ajax��ѯ���û��Ƿ�ע���
     * @param v_phone
     * @return
     * @throws SQLException
     */
    public vivo_user registerPhone(String v_phone)throws SQLException;

    /**
     * �޸�����  �����ֻ���
     * @param v_phone
     * @return
     */
    public int updatePassword(String v_phone, String v_password) throws SQLException;
}
