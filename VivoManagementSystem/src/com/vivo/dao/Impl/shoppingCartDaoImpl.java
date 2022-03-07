package com.vivo.dao.Impl;

import com.vivo.dao.QueryRunnerDao;
import com.vivo.dao.shoppingCartDao;
import com.vivo.domain.vivo_shoppingCart;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class shoppingCartDaoImpl extends QueryRunnerDao implements shoppingCartDao {

    @Override
    public List<vivo_shoppingCart> getUserShoppingCar(String uid) throws SQLException {
        String sql = "select \n" +
                "sc.v_cid,sc.v_uid,gs.v_image,gs.v_user,gs.v_gparticulars,gs.v_price,gs.v_gid,sc.v_cprice,sc.v_setMeal,sc.v_quanity\n" +
                ",ed.v_name as v_edName,gc.v_name as v_colorName,gc.v_colorNo,ed.v_editionNo\n" +
                " from vivo_shoppingcart sc,\n" +
                "vivo_goods gs,\n" +
                "vivo_edition ed,\n" +
                "vivo_good_color gc\n" +
                "where sc.v_gid = gs.v_gid and sc.v_editionNo = ed.v_editionNo and sc.v_colorNo = gc.v_colorNo and  v_uid = ? ";
        return qr.query(sql, new BeanListHandler<vivo_shoppingCart>(vivo_shoppingCart.class), uid);
    }

    @Override
    public int addUserShoppingCar(vivo_shoppingCart shoppingCart) throws SQLException {
        String sql = "insert into vivo_shoppingcart \n" +
                "(v_uid,\n" +
                "v_cprice,\n" +
                "v_setMeal,\n" +
                "v_quanity,\n" +
                "v_gid,\n" +
                "v_editionNo,\n" +
                "v_colorNo)\n" +
                "values(?,?,DEFAULT,?,?,?,?);\n";
        return qr.update(sql, shoppingCart.getV_uid(),shoppingCart.getV_cprice(),shoppingCart.getV_quanity(),shoppingCart.getV_gid(),shoppingCart.getV_editionNo(),shoppingCart.getV_colorNo());
    }

    @Override
    public int editorGoodCount(Integer totalCount,Integer v_cprice,Integer v_cid) throws SQLException {
        String sql = "update vivo_shoppingcart set v_quanity = ?,v_cprice = ? where v_cid =  ?";
        return qr.update(sql,totalCount,v_cprice,v_cid);
    }

    public int delGoodCar(int parseInt) throws SQLException {
        return qr.update("delete from vivo_shoppingcart where v_cid=?",parseInt);
    }

    public  List<vivo_shoppingCart> getAccessoriesShoppingCar(String v_uid) throws SQLException {
        String sql = "select \n" +
                "sc.v_cid,sc.v_uid,gs.v_image,gs.v_user,gs.v_gparticulars,gs.v_price,sc.v_cprice,sc.v_setMeal,sc.v_quanity,gc.v_name as v_colorName\n" +
                " from vivo_shoppingcart sc,\n" +
                "vivo_goods gs,\n" +
                "vivo_good_color gc\n" +
                "where sc.v_gid = gs.v_gid and  sc.v_colorNo = gc.v_colorNo and v_uid = ?;";
        return  qr.query(sql,new BeanListHandler<vivo_shoppingCart>(vivo_shoppingCart.class),v_uid);
    }
}
