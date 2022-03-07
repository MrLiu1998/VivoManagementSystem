package com.vivo.service;

import com.vivo.dao.Impl.vivoGoodSeriesDaoImpl;
import com.vivo.domain.vivo_d_o;
import com.vivo.domain.vivo_divisionGoods;
import com.vivo.domain.vivo_good_series;
import com.vivo.domain.vivo_goods;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class vivoGoodSeriesService {
    vivoGoodSeriesDaoImpl vivoGoodSeriesDaoImpl = new vivoGoodSeriesDaoImpl();

    public List<vivo_good_series> GoodSeriesAll() throws SQLException {
        return vivoGoodSeriesDaoImpl.GoodSeriesAll();
    }
    public List<Map<String, Object>> GoodSeriesAlls() throws SQLException {
        return vivoGoodSeriesDaoImpl.GoodSeriesAlls();
    }

    public List<vivo_goods> getGoodsName(String s) throws SQLException {
        return vivoGoodSeriesDaoImpl.getGoodsName(s);
    }

    public List<vivo_d_o> getIQOO(String d) throws SQLException {

        return vivoGoodSeriesDaoImpl.getIQOO(d);
    }
}
