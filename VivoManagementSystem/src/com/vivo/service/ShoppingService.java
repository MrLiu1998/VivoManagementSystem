package com.vivo.service;

import com.vivo.dao.Impl.ShoppingDaoImpl;
import com.vivo.domain.vivo_edition;
import com.vivo.domain.vivo_good_color;
import com.vivo.domain.vivo_goods;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;
/* 商品商城业务层 */
public class ShoppingService {
    ShoppingDaoImpl shoppingDao = new ShoppingDaoImpl();

    public List<vivo_goods> getHostGoods(Integer v_host,Integer v_status) throws SQLException {
        return  shoppingDao.getHostGoods(v_host,v_status);
    }

    public vivo_goods getByIdGoods(Integer gid) throws SQLException {
        return  shoppingDao.getByIdGoods(gid);
    }

    public List<vivo_edition> getEdition() throws SQLException {
        return shoppingDao.getEdition();
    }

    public List<vivo_good_color> getGoodColor() throws SQLException {
        return shoppingDao.getGoodColor();
    }

    public vivo_goods accessories(int parseInt) throws SQLException {
        return shoppingDao.accessories(parseInt);
    }
}
