package com.vivo.dao;

import com.vivo.domain.vivo_myorder_vivo_orderdetails;
import com.vivo.domain.vivo_myorder_vivo_shoppingcart;

import java.sql.SQLException;
import java.util.List;

public interface personalDao {

    public List<vivo_myorder_vivo_orderdetails> getMyorderGoods(String v_uid,Integer v_status) throws SQLException;
}
