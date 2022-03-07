package com.vivo.service;

import com.vivo.dao.Impl.shoppingCartDaoImpl;
import com.vivo.domain.vivo_shoppingCart;

import java.sql.SQLException;
import java.util.List;

public class shoppingCartService {
    shoppingCartDaoImpl shoppingCartDao = new shoppingCartDaoImpl();

    public List<vivo_shoppingCart> getUserShoppingCar(String uid) throws SQLException {
        return  shoppingCartDao.getUserShoppingCar(uid);
    }

    public int addUserShoppingCar(vivo_shoppingCart shoppingCart) throws SQLException {
        return shoppingCartDao.addUserShoppingCar(shoppingCart);
    }

    public int editorGoodCount(Integer totalCount,Integer v_cprice,Integer v_cid) throws SQLException {
        return shoppingCartDao.editorGoodCount(totalCount,v_cprice,v_cid);
    }

    public int delGoodCar(int parseInt) throws SQLException {
        return shoppingCartDao.delGoodCar(parseInt);
    }

    public List<vivo_shoppingCart>  getAccessoriesShoppingCar(String v_uid) throws SQLException {
        return shoppingCartDao.getAccessoriesShoppingCar(v_uid);
    }
}
