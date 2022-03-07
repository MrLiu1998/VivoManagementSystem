package com.vivo.dao.Impl;

import com.vivo.dao.QueryRunnerDao;
import com.vivo.dao.vivoGoodSeriesDao;
import com.vivo.domain.vivo_d_o;
import com.vivo.domain.vivo_divisionGoods;
import com.vivo.domain.vivo_good_series;
import com.vivo.domain.vivo_goods;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class vivoGoodSeriesDaoImpl extends QueryRunnerDao implements vivoGoodSeriesDao {

    @Override
    public List<Map<String, Object>> GoodSeriesAlls() throws SQLException {
        String sql = "SELECT *,vs.v_name,ve.v_name,vc.v_name,vgs.v_gsName FROM \n" +
                "vivo_goods vg,vivo_good_series vs,vivo_edition ve,vivo_good_color vc ,vivo_GoodsState vgs\n" +
                "where vg.v_sid = vs.v_sid\n" +
                "and vg.v_editionNo = ve.v_editionNo\n" +
                "and vg.v_colorNo = vc.v_colorNo\n" +
                "and vg.v_status = vgs.v_gsid";

        return QueryRunnerDao.qr.query(sql, new MapListHandler());
    }

    @Override
    public List<vivo_goods> getGoodsName(String s) throws SQLException {
        String sql = "select * from vivo_goods v1,vivo_good_series v2 " +
                "where v1.v_sid = v2.v_sid and v2.v_name = ?";

        return  QueryRunnerDao.qr.query(sql, new BeanListHandler<vivo_goods>(vivo_goods.class),s);
    }

    @Override
    public List<vivo_good_series> GoodSeriesAll() throws SQLException {
        String sql = "select * from vivo_good_series";
        return  QueryRunnerDao.qr.query(sql, new BeanListHandler<vivo_good_series>(vivo_good_series.class));
    }

    public List<vivo_d_o> getIQOO(String d) throws SQLException {
        String sql = "SELECT v1.v_did,v1.v_image,v2.v_oid,v2.v_oName FROM vivo_divisiongoods v1 ,vivo_outerwear v2 where v1.v_oid = v2.v_oid and v2.v_oName = ?";
        return QueryRunnerDao.qr.query(sql, new BeanListHandler<vivo_d_o>(vivo_d_o.class),d);
    }
}
