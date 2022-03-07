package com.vivo.service;

import com.vivo.dao.Impl.personalDaoImpl;
import com.vivo.domain.vivo_myorder;
import com.vivo.domain.vivo_myorder_vivo_orderdetails;

import java.sql.SQLException;
import java.util.List;

public class personalService {
    personalDaoImpl personalDao = new personalDaoImpl();

    public List<vivo_myorder_vivo_orderdetails> getMyorderGoods(String v_uid,Integer v_status) throws SQLException {
        return  personalDao.getMyorderGoods(v_uid,v_status);
    }
    /* 查询我的订单 */
    public List<vivo_myorder> getMyorder(String v_uid) throws SQLException {
        return personalDao.getMyorder(v_uid);
    }


    public int delOrder(String v_myOrderNo) throws SQLException {
        try {
            return personalDao.delOrder(v_myOrderNo);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }
}
