package com.vivo.dao;

import com.vivo.domain.vivo_shoppingCart;

import java.sql.SQLException;
import java.util.List;

public interface shoppingCartDao {
    /**
     * 根据用户id  获取该用户所有的商品
     *
     * @return
     * @throws SQLException
     */
    public List<vivo_shoppingCart> getUserShoppingCar(String uid) throws SQLException;

    /**
     * 添加购物车表
     *
     * @return
     * @throws SQLException
     */
    public int addUserShoppingCar(vivo_shoppingCart shoppingCart) throws SQLException;


    /**
     * 更新商品数量
     * @return
     * @throws SQLException
     */
    public int editorGoodCount(Integer totalCount,Integer v_cprice,Integer v_cid) throws SQLException;
}
