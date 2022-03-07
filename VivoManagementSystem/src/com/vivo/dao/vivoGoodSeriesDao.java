package com.vivo.dao;

import com.vivo.domain.vivo_good_series;
import com.vivo.domain.vivo_goods;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * ��Ʒϵ��
 */
public interface vivoGoodSeriesDao {
    /**
     * ��ȡ�ֻ���Ʒϵ��
     * @return List<vivo_good_series>
     */
    public List<vivo_good_series> GoodSeriesAll() throws SQLException;

    public List<Map<String, Object>> GoodSeriesAlls() throws SQLException;

    public List<vivo_goods> getGoodsName(String s) throws SQLException;
}
