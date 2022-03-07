package com.vivo.dao;

import com.vivo.domain.vivo_edition;
import com.vivo.domain.vivo_good_color;
import com.vivo.domain.vivo_goods;

import java.sql.SQLException;
import java.util.List;

/* 商城Dao */
public interface ShoppingDao {
    /**
     * 获取热门商品
     * @return
     * @throws SQLException
     */
    public List<vivo_goods> getHostGoods(Integer v_host,Integer v_status) throws SQLException;

    /**
     * 根据ID获取对应的商品所有信息
     * @return
     * @throws SQLException
     */
    public vivo_goods getByIdGoods(Integer gid) throws SQLException;

    /**
     * 手机版本 多少G内存啥的
     * @return
     * @throws SQLException
     */
    public List<vivo_edition> getEdition()  throws SQLException;

    /**
     * 手机颜色
     * @return
     * @throws SQLException
     */
    public List<vivo_good_color> getGoodColor()  throws SQLException;
}
