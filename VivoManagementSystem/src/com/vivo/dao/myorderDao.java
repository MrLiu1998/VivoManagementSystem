package com.vivo.dao;

import com.vivo.domain.vivo_myorder;
import com.vivo.domain.vivo_myorder_vivo_shoppingcart;

import java.sql.SQLException;
import java.util.List;

public interface myorderDao {
    /* ����ҵĶ��� */
    public int addMyorderInfo(vivo_myorder myON) throws SQLException;

    /* �����ҵĶ����Ų�ѯ�ö�����Ӧ���ﳵ�µ�������Ʒ  �ڴ���һ���ջ���ַid*/
    public List<vivo_myorder_vivo_shoppingcart> getMyorderGoods(String myOn,Integer v_tid) throws  SQLException;
}
