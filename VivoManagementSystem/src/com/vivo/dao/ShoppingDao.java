package com.vivo.dao;

import com.vivo.domain.vivo_edition;
import com.vivo.domain.vivo_good_color;
import com.vivo.domain.vivo_goods;

import java.sql.SQLException;
import java.util.List;

/* �̳�Dao */
public interface ShoppingDao {
    /**
     * ��ȡ������Ʒ
     * @return
     * @throws SQLException
     */
    public List<vivo_goods> getHostGoods(Integer v_host,Integer v_status) throws SQLException;

    /**
     * ����ID��ȡ��Ӧ����Ʒ������Ϣ
     * @return
     * @throws SQLException
     */
    public vivo_goods getByIdGoods(Integer gid) throws SQLException;

    /**
     * �ֻ��汾 ����G�ڴ�ɶ��
     * @return
     * @throws SQLException
     */
    public List<vivo_edition> getEdition()  throws SQLException;

    /**
     * �ֻ���ɫ
     * @return
     * @throws SQLException
     */
    public List<vivo_good_color> getGoodColor()  throws SQLException;
}
