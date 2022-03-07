package com.vivo.dao;

import com.vivo.domain.vivo_admin;
import com.vivo.domain.vivo_goods;
import com.vivo.domain.vivo_myorder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/*后台管理员用户登录*/
public interface adminRegisterDao {
    /* 登录 */
    public vivo_admin adminLogin(String admin, String password) throws SQLException;

    /* 获取全部商品 */
    public List<vivo_goods> getAllGoods() throws SQLException;

    /* 2.删除指定商品 delGoods */
    public int delGoods(Integer v_gid) throws ServletException, IOException, SQLException;

    /* 3.添加某个商品 */
    public int addGoods(vivo_goods vivo_goods) throws SQLException;

    /* 4.修改订单的状态 */
    public int editorOrderStatus(vivo_myorder myorder) throws SQLException;
}
