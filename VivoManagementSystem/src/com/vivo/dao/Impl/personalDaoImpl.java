package com.vivo.dao.Impl;

import com.vivo.dao.QueryRunnerDao;
import com.vivo.dao.personalDao;
import com.vivo.domain.vivo_myorder;
import com.vivo.domain.vivo_myorder_vivo_orderdetails;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class personalDaoImpl extends QueryRunnerDao implements personalDao {
    /* 查询订单详情的 */
    @Override
    public List<vivo_myorder_vivo_orderdetails> getMyorderGoods(String v_uid, Integer v_status) throws SQLException {
        /*String sql = "select m.v_myOrderNo,m.v_status,g.v_image,g.v_user,e.v_name as v_edName,gc.v_name as v_colorName \n" +
                ",s.v_quanity,s.v_cprice,m.v_totlePrice,m.v_time,t.*\n" +
                "from vivo_myorder m \n" +
                "INNER JOIN vivo_shoppingcart s ON m.v_uid = s.v_uid\n" +
                "INNER JOIN vivo_goods g ON g.v_gid = s.v_gid \n" +
                "INNER JOIN vivo_edition e ON e.v_editionNo = s.v_editionNo\n" +
                "INNER JOIN vivo_good_color gc ON s.v_colorNo = gc.v_colorNo\n" +
                "INNER JOIN vivo_take t ON t.v_uid=m.v_uid\n" +
                "where m.v_uid = ? ";*/
        /* 1 待付款 2待收货 3已完成 4已关闭
         */
        if (v_status == 0) {
            String sql = "select m.v_myOrderNo,m.v_time,m.v_status,m.v_uid,m.v_totlePrice,m.v_takeNo,o.v_goodid,o.v_count,o.v_price,\n" +
                    "g.v_image,g.v_user,e.v_name as v_edName,gc.v_name as v_colorName\n" +
                    "from vivo_myorder m \n" +
                    "INNER JOIN vivo_orderdetails o ON m.v_myOrderNo = o.v_myOrderNo\n" +
                    "INNER JOIN vivo_goods g ON o.v_goodId = g.v_gid\n" +
                    "INNER JOIN vivo_edition e ON e.v_editionNo = o.v_editionNo\n" +
                    "INNER JOIN vivo_good_color gc ON gc.v_colorNo = o.v_colorNo\n" +
                    "where  m.v_uid= ?  ORDER BY m.v_time desc;";
            return qr.query(sql, new BeanListHandler<vivo_myorder_vivo_orderdetails>(vivo_myorder_vivo_orderdetails.class), v_uid);
        }else{
            String sql = "select m.v_myOrderNo,m.v_time,m.v_status,m.v_uid,m.v_totlePrice,m.v_takeNo,o.v_goodid,o.v_count,o.v_price,\n" +
                    "g.v_image,g.v_user,e.v_name as v_edName,gc.v_name as v_colorName\n" +
                    "from vivo_myorder m \n" +
                    "INNER JOIN vivo_orderdetails o ON m.v_myOrderNo = o.v_myOrderNo\n" +
                    "INNER JOIN vivo_goods g ON o.v_goodId = g.v_gid\n" +
                    "INNER JOIN vivo_edition e ON e.v_editionNo = o.v_editionNo\n" +
                    "INNER JOIN vivo_good_color gc ON gc.v_colorNo = o.v_colorNo\n" +
                    "where  m.v_uid= ? and m.v_status = ?  ORDER BY m.v_time desc;";
            return qr.query(sql, new BeanListHandler<vivo_myorder_vivo_orderdetails>(vivo_myorder_vivo_orderdetails.class), v_uid, v_status);
        }
//        String sql = "SELECT * from vivo_myorder m ,vivo_orderdetails o,vivo_goods g where m.v_myOrderNo = o.v_myOrderNo and o.v_goodId = g.v_gid;";
    }

    /* 查询我的订单 */
    public List<vivo_myorder> getMyorder(String v_uid) throws SQLException {
        return qr.query("select * from vivo_myorder where v_uid=?", new BeanListHandler<vivo_myorder>(vivo_myorder.class), v_uid);
    }


    public List<vivo_myorder_vivo_orderdetails> obligations(String v_uid) throws SQLException {
        String sql = "select m.v_myOrderNo,m.v_time,m.v_status,m.v_uid,m.v_totlePrice,m.v_takeNo,o.v_goodid,o.v_count,o.v_price,\n" +
                "g.v_image,g.v_user,e.v_name as v_edName,gc.v_name as v_colorName\n" +
                "from vivo_myorder m \n" +
                "INNER JOIN vivo_orderdetails o ON m.v_myOrderNo = o.v_myOrderNo\n" +
                "INNER JOIN vivo_goods g ON o.v_goodId = g.v_gid\n" +
                "INNER JOIN vivo_edition e ON e.v_editionNo = o.v_editionNo\n" +
                "INNER JOIN vivo_good_color gc ON gc.v_colorNo = o.v_colorNo\n" +
                "where  m.v_uid= ?  ORDER BY v_time desc;";
//        String sql = "SELECT * from vivo_myorder m ,vivo_orderdetails o,vivo_goods g where m.v_myOrderNo = o.v_myOrderNo and o.v_goodId = g.v_gid;";
        return qr.query(sql, new BeanListHandler<vivo_myorder_vivo_orderdetails>(vivo_myorder_vivo_orderdetails.class), v_uid);
    }

    public int delOrder(String v_myOrderNo) throws SQLException {
        String sql = "delete from  vivo_myorder where v_myOrderNo = ?";
        return qr.update(sql,v_myOrderNo);
    }
}
