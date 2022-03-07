package com.vivo.dao.Impl;

import com.vivo.dao.QueryRunnerDao;
import com.vivo.dao.ShoppingDao;
import com.vivo.domain.vivo_edition;
import com.vivo.domain.vivo_good_color;
import com.vivo.domain.vivo_goods;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ShoppingDaoImpl extends QueryRunnerDao implements ShoppingDao {
    @Override
    public List<vivo_goods> getHostGoods(Integer v_host,Integer v_status) throws SQLException {
        return qr.query("select * from vivo_goods where v_host = ? and v_status = ?", new BeanListHandler<vivo_goods>(vivo_goods.class),v_host,v_status);
    }

    @Override
    public vivo_goods getByIdGoods(Integer gid) throws SQLException {
        return qr.query("select * from vivo_goods v1,vivo_good_series v2 where v1.v_sid = v2.v_sid and  v_gid = ?",new BeanHandler<vivo_goods>(vivo_goods.class),gid);
    }

    @Override
    public List<vivo_edition> getEdition() throws SQLException {
        return qr.query("select * from vivo_edition",new BeanListHandler<vivo_edition>(vivo_edition.class));
    }

    @Override
    public List<vivo_good_color> getGoodColor() throws SQLException {
        return qr.query("select * from vivo_good_color",new BeanListHandler<vivo_good_color>(vivo_good_color.class));
    }

    public vivo_goods accessories(int parseInt) throws SQLException {
    return qr.query("select * from vivo_goods v1 where  v_gid = ?",new BeanHandler<vivo_goods>(vivo_goods.class),parseInt);
    }
}
