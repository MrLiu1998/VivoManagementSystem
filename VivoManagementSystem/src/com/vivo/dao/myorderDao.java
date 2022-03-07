package com.vivo.dao;

import com.vivo.domain.vivo_myorder;
import com.vivo.domain.vivo_myorder_vivo_shoppingcart;

import java.sql.SQLException;
import java.util.List;

public interface myorderDao {
    /* 添加我的订单 */
    public int addMyorderInfo(vivo_myorder myON) throws SQLException;

    /* 根据我的订单号查询该订单对应购物车下的所有商品  在传入一个收货地址id*/
    public List<vivo_myorder_vivo_shoppingcart> getMyorderGoods(String myOn,Integer v_tid) throws  SQLException;
}
