package com.vivo.web;

import com.vivo.domain.vivo_edition;
import com.vivo.domain.vivo_good_color;
import com.vivo.domain.vivo_goods;
import com.vivo.service.ShoppingService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/ShoppingServlet")
public class ShoppingServlet extends BaseServlet {

    ShoppingService shoppingService = new ShoppingService();

    /* 获取商城商品 */
    public String getHostGoods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Genuine杨不易
        try {
            // 热卖商品
            List<vivo_goods> getHostGoods = shoppingService.getHostGoods(0,5);
            // 精品手机
            List<vivo_goods> getBoutiquePhone = shoppingService.getHostGoods(1,5);
            // 精品手机
            List<vivo_goods> getBoutiquePhone4 = shoppingService.getHostGoods(4,5);
            // 精品配件
            List<vivo_goods> accessories = shoppingService.getHostGoods(2,5);
            req.setAttribute("hostGoods", getHostGoods);
            req.setAttribute("getBoutiquePhone", getBoutiquePhone);
            req.setAttribute("getBoutiquePhone4", getBoutiquePhone4);
            req.setAttribute("accessories", accessories);
            return "/VivoProject/Shopping.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }

    /* 获取某个商品详情 */
    public String productDetails(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String gid = req.getParameter("gid");
        System.out.println(gid);
        try {
            vivo_goods byIdGoods = shoppingService.getByIdGoods(Integer.parseInt(gid));
            req.setAttribute("byIdGoods", byIdGoods);
            System.out.println(byIdGoods);
            /* 调用手机信息*/
            getEdition(req,resp);
            getGoodColor(req,resp);
            return "/VivoProject/productDetails.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    /* 获取配件商品详情 */
    public String accessories(HttpServletRequest req, HttpServletResponse resp) throws ServletException{
        String gid = req.getParameter("gid");
        System.out.println(gid);
        try {
            vivo_goods byIdGoods = shoppingService.accessories(Integer.parseInt(gid));
            req.setAttribute("byIdGoods", byIdGoods);
            System.out.println(byIdGoods);
            /* 调用手机信息*/
            getGoodColor(req,resp);
            return "/VivoProject/productDetails.jsp";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /* 获取手机全部版本 */
    public String getEdition(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List<vivo_edition> edition = shoppingService.getEdition();
            req.setAttribute("edition", edition);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    /* 获取手机全部颜色 */
    public String getGoodColor(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List<vivo_good_color> goodColor = shoppingService.getGoodColor();
            req.setAttribute("goodColor", goodColor);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


}