package com.vivo.web;

import com.vivo.domain.vivo_myorder;
import com.vivo.domain.vivo_myorder_vivo_shoppingcart;
import com.vivo.domain.vivo_orderdetails;
import com.vivo.domain.vivo_shoppingCart;
import com.vivo.service.myorderService;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.tomcat.util.http.fileupload.FileUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Document;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.*;

@WebServlet("/VIVOCheckoutServlet")
public class VIVOCheckoutServlet extends BaseServlet {
    myorderService myorderService = new myorderService();

    public static Integer nextItemNo() {
        Date date = new Date();
        SimpleDateFormat sdformat = new SimpleDateFormat("HHmmssSSS");
        String id = sdformat.format(date);
        Integer integer = Integer.parseInt(id);
        return integer;
    }

    public String VIVOCheckout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String v_uid = req.getParameter("v_uid");
        String v_totlePrice = req.getParameter("v_totlePrice");
        String v_tid = req.getParameter("v_tid");
        System.out.println(v_totlePrice + ":" + v_tid);
        vivo_orderdetails vivo_orderdetails = new vivo_orderdetails();
        /* 生成唯一订单号 */
        Integer integer = nextItemNo();
        SimpleDateFormat yyyymmhh = new SimpleDateFormat("yyyyMM");
        String format = yyyymmhh.format(new Date());
        /* 提交订单时间 */
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String format1 = dateFormat.format(new Date());
        vivo_myorder vivo_myorder = new vivo_myorder();

        ServletContext servletContext = this.getServletContext();
        Random random = new Random();
        int i = random.nextInt();
        String on = String.valueOf(i);
        String orderno = format + integer;
        vivo_myorder.setV_myOrderNo(orderno);
        vivo_myorder.setV_time(format1);
        vivo_myorder.setV_uid(v_uid);
        vivo_myorder.setV_totlePrice(Integer.parseInt(v_totlePrice));

        vivo_myorder.setV_takeNo(Integer.parseInt(v_tid));
        vivo_myorder.setV_status(1);
//        System.out.println(vivo_myorder);
     /*   vivo_orderdetails.setV_myOrderNo(orderno);
        vivo_orderdetails.setV_colorNo(Integer.parseInt(v_colorNo));
        vivo_orderdetails.setV_count(Integer.parseInt(v_count));
        vivo_orderdetails.setV_editionNo(Integer.parseInt(v_editionNo));
        vivo_orderdetails.setV_goodId(Integer.parseInt(v_gid));
        vivo_orderdetails.setV_price(Integer.parseInt(v_price));*/

        String[] goodids = req.getParameterValues("v_goodId");
        String[] v_count = req.getParameterValues("v_count");
        String[] v_price = req.getParameterValues("v_price");
        String[] v_editionNo = req.getParameterValues("v_editionNo");
        String[] v_colorNo = req.getParameterValues("v_colorNo");
        // String[] tlePrice = req.getParameterValues("v_totlePrice");
        //  String[] tid = req.getParameterValues("v_tid");

        /*Map<String, String[]> parameterMap = req.getParameterMap();

        try {
            BeanUtils.populate(vivo_orderdetails, parameterMap);
            vivo_orderdetails.setV_myOrderNo(orderno);
            System.out.println("信息" + vivo_orderdetails);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }*/
        try {
            // 插入我的订单信息
            int i1 = myorderService.addMyorderInfo(vivo_myorder);
            if (i1 > 0) {
                // 插入订单详情信息
                for (int j = 0; j < goodids.length; j++) {
                    vivo_orderdetails.setV_myOrderNo(orderno);
                    vivo_orderdetails.setV_colorNo(Integer.parseInt(v_colorNo[j]));
                    vivo_orderdetails.setV_count(Integer.parseInt(v_count[j]));
                    vivo_orderdetails.setV_editionNo(Integer.parseInt(v_editionNo[j]));
                    vivo_orderdetails.setV_goodId(Integer.parseInt(goodids[j]));
                    vivo_orderdetails.setV_price(Integer.parseInt(v_price[j]));
                    System.out.println("第" + j + "个" + vivo_orderdetails);
                    myorderService.addOrderdetails(vivo_orderdetails);
                }


                return "/VIVOCheckoutServlet?action=getMyOrder&v_uid=" + v_uid + "&myOrderNo=" + vivo_myorder.getV_myOrderNo() + "&takeNo=" + vivo_myorder.getV_takeNo();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public String getMyOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String myOrderNo = req.getParameter("myOrderNo");
        String takeNo = req.getParameter("takeNo");
        String v_uid = req.getParameter("v_uid");
        // 调用查询订单信息方法
        List<vivo_myorder_vivo_shoppingcart> myorderGoods = null;
        try {
            myorderGoods = myorderService.getMyorderGoods(myOrderNo, Integer.parseInt(takeNo));
            if (myorderGoods != null) {
                System.out.println(myorderGoods);
                req.setAttribute("myorderGoods", myorderGoods);
                // 清空当前用户的所有购物箱信息
                myorderService.delAllOrder(v_uid);
                return "/VivoProject/VIVOCheckout.jsp";
            } else {
                return "";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return null;
    }

}
