package com.vivo.web;

import com.vivo.domain.vivo_myorder;
import com.vivo.domain.vivo_myorder_vivo_orderdetails;
import com.vivo.domain.vivo_myorder_vivo_shoppingcart;
import com.vivo.domain.vivo_user;
import com.vivo.service.personalService;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

@WebServlet("/personalServlet")
public class personalServlet extends BaseServlet {
    personalService personalService = new personalService();

    public String myOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // GenuineÑî²»Ò×
        try {
            String v_uid = req.getParameter("v_uid");
            List<vivo_myorder_vivo_orderdetails> myorderGoods = personalService.getMyorderGoods(v_uid, 0);
            List<vivo_myorder> myorder = personalService.getMyorder(v_uid);
            Collections.reverse(myorder);
            // ServletContext servletContext = this.getServletContext();
            req.setAttribute("myorderGoods", myorderGoods);
            req.setAttribute("myorder", myorder);
            System.out.println("myorderGoods:" + myorderGoods);
            System.out.println("myorder:" + myorderGoods);
            return "/VivoProject/personal.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }

    public String obligations(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String v_uid = req.getParameter("v_uid");
        List<vivo_myorder_vivo_orderdetails> myorderGoods = null;
        try {
            myorderGoods = personalService.getMyorderGoods(v_uid, 1);

            List<vivo_myorder> myorder = personalService.getMyorder(v_uid);
            // ServletContext servletContext = this.getServletContext();
            req.setAttribute("myorderGoods", myorderGoods);
            req.setAttribute("myorder", myorder);
            System.out.println("myorderGoods:" + myorderGoods);
            System.out.println("myorder:" + myorderGoods);
            return "/VivoProject/obligations.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String stayGoods(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String v_uid = req.getParameter("v_uid");
        List<vivo_myorder_vivo_orderdetails> myorderGoods = null;
        try {
            myorderGoods = personalService.getMyorderGoods(v_uid, 2);

            List<vivo_myorder> myorder = personalService.getMyorder(v_uid);
            // ServletContext servletContext = this.getServletContext();
            req.setAttribute("myorderGoods", myorderGoods);
            req.setAttribute("myorder", myorder);
            System.out.println("myorderGoods:" + myorderGoods);
            System.out.println("myorder:" + myorderGoods);
            return "/VivoProject/stayGoods.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String Done(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String v_uid = req.getParameter("v_uid");
        List<vivo_myorder_vivo_orderdetails> myorderGoods = null;
        try {
            myorderGoods = personalService.getMyorderGoods(v_uid, 3);

            List<vivo_myorder> myorder = personalService.getMyorder(v_uid);
            // ServletContext servletContext = this.getServletContext();
            req.setAttribute("myorderGoods", myorderGoods);
            req.setAttribute("myorder", myorder);
            System.out.println("myorderGoods:" + myorderGoods);
            System.out.println("myorder:" + myorderGoods);
            return "/VivoProject/Done.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String closed(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String v_uid = req.getParameter("v_uid");
        List<vivo_myorder_vivo_orderdetails> myorderGoods = null;
        try {
            myorderGoods = personalService.getMyorderGoods(v_uid, 4);

            List<vivo_myorder> myorder = personalService.getMyorder(v_uid);
            // ServletContext servletContext = this.getServletContext();
            req.setAttribute("myorderGoods", myorderGoods);
            req.setAttribute("myorder", myorder);
            System.out.println("myorderGoods:" + myorderGoods);
            System.out.println("myorder:" + myorderGoods);
            return "/VivoProject/closed.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String delOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String v_uid = req.getParameter("v_uid");
        String v_myOrderNo = req.getParameter("v_myOrderNo");
        try {
            int i = personalService.delOrder(v_myOrderNo);
            return "/personalServlet?action=myOrder&v_uid=" + v_uid;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
