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

    /* ��ȡ�̳���Ʒ */
    public String getHostGoods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Genuine���
        try {
            // ������Ʒ
            List<vivo_goods> getHostGoods = shoppingService.getHostGoods(0,5);
            // ��Ʒ�ֻ�
            List<vivo_goods> getBoutiquePhone = shoppingService.getHostGoods(1,5);
            // ��Ʒ�ֻ�
            List<vivo_goods> getBoutiquePhone4 = shoppingService.getHostGoods(4,5);
            // ��Ʒ���
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

    /* ��ȡĳ����Ʒ���� */
    public String productDetails(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String gid = req.getParameter("gid");
        System.out.println(gid);
        try {
            vivo_goods byIdGoods = shoppingService.getByIdGoods(Integer.parseInt(gid));
            req.setAttribute("byIdGoods", byIdGoods);
            System.out.println(byIdGoods);
            /* �����ֻ���Ϣ*/
            getEdition(req,resp);
            getGoodColor(req,resp);
            return "/VivoProject/productDetails.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    /* ��ȡ�����Ʒ���� */
    public String accessories(HttpServletRequest req, HttpServletResponse resp) throws ServletException{
        String gid = req.getParameter("gid");
        System.out.println(gid);
        try {
            vivo_goods byIdGoods = shoppingService.accessories(Integer.parseInt(gid));
            req.setAttribute("byIdGoods", byIdGoods);
            System.out.println(byIdGoods);
            /* �����ֻ���Ϣ*/
            getGoodColor(req,resp);
            return "/VivoProject/productDetails.jsp";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /* ��ȡ�ֻ�ȫ���汾 */
    public String getEdition(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List<vivo_edition> edition = shoppingService.getEdition();
            req.setAttribute("edition", edition);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    /* ��ȡ�ֻ�ȫ����ɫ */
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