package com.vivo.dao;

import com.vivo.domain.vivo_shoppingCart;

import java.sql.SQLException;
import java.util.List;

public interface shoppingCartDao {
    /**
     * �����û�id  ��ȡ���û����е���Ʒ
     *
     * @return
     * @throws SQLException
     */
    public List<vivo_shoppingCart> getUserShoppingCar(String uid) throws SQLException;

    /**
     * ��ӹ��ﳵ��
     *
     * @return
     * @throws SQLException
     */
    public int addUserShoppingCar(vivo_shoppingCart shoppingCart) throws SQLException;


    /**
     * ������Ʒ����
     * @return
     * @throws SQLException
     */
    public int editorGoodCount(Integer totalCount,Integer v_cprice,Integer v_cid) throws SQLException;
}
