package com.vivo.dao;

import com.vivo.domain.vivo_admin;
import com.vivo.domain.vivo_goods;
import com.vivo.domain.vivo_myorder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/*��̨����Ա�û���¼*/
public interface adminRegisterDao {
    /* ��¼ */
    public vivo_admin adminLogin(String admin, String password) throws SQLException;

    /* ��ȡȫ����Ʒ */
    public List<vivo_goods> getAllGoods() throws SQLException;

    /* 2.ɾ��ָ����Ʒ delGoods */
    public int delGoods(Integer v_gid) throws ServletException, IOException, SQLException;

    /* 3.���ĳ����Ʒ */
    public int addGoods(vivo_goods vivo_goods) throws SQLException;

    /* 4.�޸Ķ�����״̬ */
    public int editorOrderStatus(vivo_myorder myorder) throws SQLException;
}
