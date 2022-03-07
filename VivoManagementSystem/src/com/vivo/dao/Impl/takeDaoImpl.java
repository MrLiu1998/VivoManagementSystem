package com.vivo.dao.Impl;

import com.vivo.dao.QueryRunnerDao;
import com.vivo.dao.takeDao;
import com.vivo.domain.vivo_take;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class takeDaoImpl extends QueryRunnerDao implements takeDao {
    @Override
    public List<vivo_take> getAllTake(String v_uid) throws SQLException {
        String sql = "select * from vivo_take where v_uid = ?";
        return qr.query(sql, new BeanListHandler<vivo_take>(vivo_take.class), v_uid);
    }

    @Override
    public int addTakeInformation(vivo_take take) throws SQLException {
        String sql = "insert into vivo_take values(null,?,?,?,?,?)";
        return  qr.update(sql,take.getV_consignee(),take.getV_phone(),take.getV_address(),take.getV_receivingArea(),take.getV_uid());
    }

    @Override
    public int editorTakeInformation(vivo_take take) throws SQLException {
        System.out.println("½øÀ´ÁË");
        System.out.println(take);
        String sql = "update vivo_take set v_consignee = ?,v_phone = ?,v_address = ?,v_receivingArea = ? where v_tid = ?";
        return qr.update(sql,take.getV_consignee(),take.getV_phone(),take.getV_address(),take.getV_receivingArea(),take.getV_tid());
    }

    @Override
    public int delTakeInformation(String v_uid, int v_tid ) throws SQLException {
        return qr.update("delete from vivo_take where v_uid=? and v_tid = ?",v_uid,v_tid);
    }

    public vivo_take getV_tidINfo(String v_uid, int parseInt) throws SQLException {
        String sql = "select * from vivo_take where v_uid=? and v_tid=?";
        return qr.query(sql,new BeanHandler<vivo_take>(vivo_take.class),v_uid,parseInt);
    }
}
