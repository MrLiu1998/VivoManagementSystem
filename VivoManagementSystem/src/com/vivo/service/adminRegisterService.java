package com.vivo.service;

import com.vivo.dao.Impl.adminRegisterDaoimp;
import com.vivo.domain.*;

import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class adminRegisterService {
    adminRegisterDaoimp adminRegisterDaoimp = new adminRegisterDaoimp();
    // 登录
    public vivo_admin adminLogin(String admin, String password) throws Exception {
        vivo_admin vivo_admin = adminRegisterDaoimp.adminLogin(admin, password);
        if(vivo_admin != null){
            return vivo_admin;
        }else{
            throw new Exception("用户或密码错误!!!");
        }

    }
    // 获取商城当中的全部商品
    public List<vivo_goods> getAllGoods() throws SQLException {
        return adminRegisterDaoimp.getAllGoods();
    }
    // 删除某个商品
    public int delGoods(Integer v_gid) throws ServletException, IOException, SQLException {
        return adminRegisterDaoimp.delGoods(v_gid);
    }
    // 修改某个订单的状态  editorOrderStatus
    public int editorOrderStatus(vivo_myorder myorder) throws  SQLException{
        return adminRegisterDaoimp.editorOrderStatus(myorder);
    }

    // 分页获取所有商品
    public PageBean getPageBean(int currentPage) throws SQLException {
        PageBean pageBean = new PageBean();
        // 设置当前页
        pageBean.setCurrentPage(currentPage);
        // 获取有多少条记录 从数据当中查询
        Long count = adminRegisterDaoimp.getCount(); // 必须接收的是long类型
        // 设置多少条记录
        pageBean.setTotalCount(count.intValue()); // 转换为int类型
        // 一页展示多少条数据
        Integer pageCount = 5; // 11 / 5 = 2 1  向上取整
        // 设置总页数     除的结果有余数  向上取整
        double totalPage = Math.ceil(1.0 * pageBean.getTotalCount() / pageCount);
        pageBean.setTotalPage((int) totalPage);

        // 计算当前页查询的角标  当前页-1 * 一页展示多少条数据
        Integer index = (pageBean.getCurrentPage() - 1) * pageCount;
        // 获取当页的商品
        List<vivo_goods> goodsList = adminRegisterDaoimp.getPageData(index, pageCount);
        // 设置当前页的商品
        pageBean.setGoodsList(goodsList);

        return pageBean;
    }

    //6. 模糊查询
    public PageBean getLikeGoods(String parameter,Integer currentPage) throws SQLException {
        PageBean pageBean = new PageBean();
        // 设置当前页
        pageBean.setCurrentPage(currentPage);
        // 获取有多少条记录 从数据当中查询
        Long count = adminRegisterDaoimp.getCount2(parameter); // 必须接收的是long类型
        // 设置多少条记录
        pageBean.setTotalCount(count.intValue()); // 转换为int类型
        // 一页展示多少条数据
        Integer pageCount = 5; // 11 / 5 = 2 1  向上取整
        // 设置总页数     除的结果有余数  向上取整
        double totalPage = Math.ceil(1.0 * pageBean.getTotalCount() / pageCount);
        pageBean.setTotalPage((int) totalPage);

        // 计算当前页查询的角标  当前页-1 * 一页展示多少条数据
        Integer index = (pageBean.getCurrentPage() - 1) * pageCount;
        // 获取当页的商品
        List<vivo_goods> goodsList = adminRegisterDaoimp.getLikeGoods(parameter,index, pageCount);
        // 设置当前页的商品
        pageBean.setGoodsList(goodsList);

        return pageBean;
    }

    public vivo_goods EidtUIGoods(String id) throws SQLException {
        return adminRegisterDaoimp.EidtUIGoods(id);
    }

    public List<vivo_good_series> findCategory() throws SQLException {
        return adminRegisterDaoimp.findCategory();
    }

    public int eidtGoods(vivo_goods vivo_goods) throws SQLException {
    return adminRegisterDaoimp.eidtGoods(vivo_goods);
    }

    public PageBean getOrder(int currentPage) throws SQLException {
        PageBean pageBean = new PageBean();
        // 设置当前页
        pageBean.setCurrentPage(currentPage);
        // 获取有多少条记录 从数据当中查询
        Long count = adminRegisterDaoimp.getOrderCount(); // 必须接收的是long类型
        // 设置多少条记录
        pageBean.setTotalCount(count.intValue()); // 转换为int类型
        // 一页展示多少条数据
        Integer pageCount = 5; // 11 / 5 = 2 1  向上取整
        // 设置总页数     除的结果有余数  向上取整
        double totalPage = Math.ceil(1.0 * pageBean.getTotalCount() / pageCount);
        pageBean.setTotalPage((int) totalPage);

        // 计算当前页查询的角标  当前页-1 * 一页展示多少条数据
        Integer index = (pageBean.getCurrentPage() - 1) * pageCount;
        // 获取当页的商品
        List<vivo_myorder_vivoOrder> goodsList = adminRegisterDaoimp.getOrderPageDate(index, pageCount);
        // 设置当前页的商品
        pageBean.setVivo_myorder_vivoOrder(goodsList);

        return pageBean;
    }

    public int addGoods(vivo_goods vivo_goods) throws SQLException {
        return adminRegisterDaoimp.addGoods(vivo_goods);
    }

    public int Putaway(String v_gid) throws SQLException {
        return adminRegisterDaoimp.Putaway(v_gid);
    }

    public int soldOut(String v_gid) throws SQLException {
        return adminRegisterDaoimp.soldOut(v_gid);
    }

}
