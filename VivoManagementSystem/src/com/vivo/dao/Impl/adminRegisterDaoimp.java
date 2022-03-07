package com.vivo.dao.Impl;

import com.vivo.dao.QueryRunnerDao;
import com.vivo.dao.adminRegisterDao;
import com.vivo.domain.*;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class adminRegisterDaoimp extends QueryRunnerDao implements adminRegisterDao {
    @Override
    public vivo_admin adminLogin(String admin, String password) throws SQLException {
        String sql = "SELECT * FROM vivo_admin where v_aname = ? and v_apassword = ?";
        return qr.query(sql, new BeanHandler<vivo_admin>(vivo_admin.class), admin, password);
    }
    @Override
    public List<vivo_goods> getAllGoods() throws SQLException {
        return qr.query("SELECT * FROM vivo_goods", new BeanListHandler<>(vivo_goods.class));
    }

    @Override
    public int delGoods(Integer v_gid) throws ServletException, IOException, SQLException {
        return qr.update("delete from vivo_goods where v_gid =?",v_gid);
    }

    @Override
    public int addGoods(vivo_goods vivo_goods) throws SQLException {
        /* 这里的status是状态  上架 下架的状态 */
        String sql = "insert into vivo_goods " +
                "(v_image,v_user,v_gparticulars,v_host,v_price,v_inventory,v_sid,v_status)\n" +
                "values(?,?,?,?,?,?,?,?);";
        return qr.update(sql,vivo_goods.getV_image(),vivo_goods.getV_user(),vivo_goods.getV_gparticulars(),vivo_goods.getV_host(),vivo_goods.getV_price(),vivo_goods.getV_inventory(),vivo_goods.getV_sid(),vivo_goods.getV_status());
    }

    @Override
    public int editorOrderStatus(vivo_myorder myorder) throws SQLException {
        String sql = "update vivo_myorder set v_status=? where v_myOrderNo = ?";
        return qr.update(sql,myorder.getV_status(),myorder.getV_myOrderNo());
    }


    // 7.分页多少条记录
    public Long getCount() throws SQLException {
        String sql = "select count(1) from vivo_goods";
        // long 是转换不了Integer类型的  包装类型
        return (Long) qr.query(sql, new ScalarHandler());
    }

    // 8.分页当前页商品
    public List<vivo_goods> getPageData(Integer index, Integer pageCount) throws SQLException {
        String sql = "SELECT * FROM vivo_goods order by v_gid desc LIMIT ?,?";
        return qr.query(sql, new BeanListHandler<vivo_goods>(vivo_goods.class), index, pageCount);
    }

    // 6.模糊查询
    public List<vivo_goods> getLikeGoods(String parameter, Integer index, Integer pageCount) throws SQLException {
        // 计算当前页查询的角标  当前页-1 * 一页展示多少条数据
        List<vivo_goods> query = qr.query("SELECT * FROM vivo_goods where v_user like '%"+parameter+"%' order by v_gid desc LIMIT ?,? ", new BeanListHandler<vivo_goods>(vivo_goods.class), index, pageCount);
        return query;
    }

    // 模糊查询  多少条记录
    public Long getCount2(String value) throws SQLException {
        String sql = "select count(1) from vivo_goods where  v_user like '%"+ value +"%' ";
        return (Long) qr.query(sql, new ScalarHandler());
    }
    // 根据id查询该商品的信息
    public vivo_goods EidtUIGoods(String id) throws SQLException {
        String sql = "select * from vivo_goods where v_gid = ?";
        return qr.query(sql,new BeanHandler<>(vivo_goods.class),Integer.parseInt(id));
    }

    public List<vivo_good_series> findCategory() throws SQLException {
        return qr.query("select * from vivo_good_series",new BeanListHandler<vivo_good_series>(vivo_good_series.class));
    }

    public int eidtGoods(vivo_goods vivo_goods) throws SQLException {
        String sql = "update vivo_goods set v_image = ?,v_user=?,\n" +
                "v_gparticulars=?, v_host=?,v_sid=?,v_price=?\n" +
                "where v_gid = ?";
        return qr.update(sql,vivo_goods.getV_image(),vivo_goods.getV_user(),vivo_goods.getV_gparticulars(),vivo_goods.getV_host(),vivo_goods.getV_sid(),vivo_goods.getV_price(),vivo_goods.getV_gid());
    }

    public Long getOrderCount() throws SQLException {
        String sql = "select count(1) from vivo_myorder  ";
        return (Long) qr.query(sql, new ScalarHandler());
    }

    public List<vivo_myorder_vivoOrder> getOrderPageDate(Integer index, Integer pageCount) throws SQLException {
        String sql = "SELECT v_myOrderNo,v_time,v_status,v_consignee as v_consignee,v_phone as v_phone,v_address,v_receivingArea,v_totlePrice FROM vivo_myorder m,vivo_take t where m.v_takeNo = t.v_tid  LIMIT ?,?";
        return qr.query(sql, new BeanListHandler<vivo_myorder_vivoOrder>(vivo_myorder_vivoOrder.class), index, pageCount);
    }

    public int Putaway(String v_gid) throws SQLException {
        String sql = "update vivo_goods set v_status = 5 where v_gid = ?";
        return qr.update(sql,v_gid);
    }

    public int soldOut(String v_gid) throws SQLException {
        String sql = "update vivo_goods set v_status = 4 where v_gid = ?";
        return qr.update(sql,v_gid);
    }
}
