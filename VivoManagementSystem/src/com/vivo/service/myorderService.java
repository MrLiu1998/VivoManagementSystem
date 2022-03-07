package com.vivo.service;

import com.vivo.dao.Impl.myorderDaoImpl;
import com.vivo.domain.vivo_myorder;
import com.vivo.domain.vivo_myorder_vivo_shoppingcart;
import com.vivo.domain.vivo_orderdetails;

import java.sql.SQLException;
import java.util.List;

public class myorderService {
    myorderDaoImpl m = new myorderDaoImpl();
    public int addMyorderInfo(vivo_myorder myON) throws SQLException {
        return   m.addMyorderInfo(myON);
    }

    public List<vivo_myorder_vivo_shoppingcart> getMyorderGoods(String myOn, Integer v_tid) throws SQLException {
        return m.getMyorderGoods(myOn,v_tid);
    }


    public int addOrderdetails(vivo_orderdetails vivo_orderdetails) throws SQLException {
        return m.addOrderdetails(vivo_orderdetails);
    }

    public int delAllOrder(String v_uid) throws SQLException {

        return m.delAllOrder(v_uid);
    }
}
