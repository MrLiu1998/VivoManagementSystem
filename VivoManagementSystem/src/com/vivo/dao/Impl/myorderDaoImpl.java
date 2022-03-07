package com.vivo.dao.Impl;

import com.vivo.dao.QueryRunnerDao;
import com.vivo.dao.myorderDao;
import com.vivo.domain.*;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class myorderDaoImpl extends QueryRunnerDao implements myorderDao {

    @Override
    public int addMyorderInfo(vivo_myorder myON) throws SQLException {
        String sql = "insert into vivo_myorder VALUES('" + myON.getV_myOrderNo() + "',?,1,?,?,?);";
        return qr.update(sql, myON.getV_time(), myON.getV_uid(), myON.getV_totlePrice(), myON.getV_takeNo());
    }

    @Override
    public List<vivo_myorder_vivo_shoppingcart> getMyorderGoods(String myOn, Integer v_tid) throws SQLException {
        String sql = "select m.v_myOrderNo,m.v_status,g.v_image,g.v_user,e.v_name as v_edName,gc.v_name as v_colorName \n" +
                ",s.v_quanity,s.v_cprice,m.v_totlePrice,m.v_time,t.*\n" +
                "from vivo_myorder m \n" +
                "INNER JOIN vivo_shoppingcart s ON m.v_uid = s.v_uid\n" +
                "INNER JOIN vivo_goods g ON g.v_gid = s.v_gid \n" +
                "INNER JOIN vivo_edition e ON e.v_editionNo = s.v_editionNo\n" +
                "INNER JOIN vivo_good_color gc ON s.v_colorNo = gc.v_colorNo\n" +
                "INNER JOIN vivo_take t ON t.v_uid=m.v_uid\n" +
                "where  m.v_myOrderNo = ? and t.v_tid = ?";
        return qr.query(sql, new BeanListHandler<vivo_myorder_vivo_shoppingcart>(vivo_myorder_vivo_shoppingcart.class), myOn, v_tid);
    }


    public int addOrderdetails(vivo_orderdetails vivo_orderdetails) throws SQLException {
        String sql = "insert into vivo_orderdetails (v_myOrderNo,v_goodId,v_count,v_price,v_editionNo,v_colorNo)values(?,?,?,?,?,?);";
        return qr.update(sql,vivo_orderdetails.getV_myOrderNo(),vivo_orderdetails.getV_goodId(),vivo_orderdetails.getV_count(),vivo_orderdetails.getV_price(),vivo_orderdetails.getV_editionNo(),vivo_orderdetails.getV_colorNo());
    }

    public int delAllOrder(String v_uid) throws SQLException {
        String sql = "DELETE FROM vivo_shoppingcart where v_uid = ?";
        return qr.update(sql,v_uid);
    }
}
