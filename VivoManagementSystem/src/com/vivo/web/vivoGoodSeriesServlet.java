package com.vivo.web;

import com.vivo.domain.*;
import com.vivo.service.vivoGoodSeriesService;
import net.sf.json.JSONArray;
import net.sf.json.JSONString;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

@WebServlet("/vivoGoodSeriesServlet")
public class vivoGoodSeriesServlet extends BaseServlet {
    vivoGoodSeriesService vivoGoodSeriesService = new vivoGoodSeriesService();

    // 根据系列名称  查询对应的商品
    public String getGoodsName(HttpServletRequest req, HttpServletResponse resp) {
        resp.setContentType("text/html;charset=utf-8");
        String name = req.getParameter("v_name");
        try {
            List<vivo_goods> goodsName = vivoGoodSeriesService.getGoodsName(name);
            PrintWriter out = resp.getWriter();
            out.print(goodsName);
            out.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String GoodSeriesAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Genuine杨不易
        try {
            List<vivo_good_series> listvivo_good_series = vivoGoodSeriesService.GoodSeriesAll();

            /*List<vivo_divisionGoods> iqoo = vivoGoodSeriesService.getIQOO();
            List<vivo_divisionGoods> iqoo2 = vivoGoodSeriesService.getIQOO();
            List<vivo_divisionGoods> iqoo3 = vivoGoodSeriesService.getIQOO();*/


            // System.out.println(listvivo_good_series);
            /* 第一下拉 */
            List<vivo_d_o> iqoo = vivoGoodSeriesService.getIQOO("iQOO");
            List<vivo_d_o> iQOOPro = vivoGoodSeriesService.getIQOO("iQOO Pro");
            List<vivo_d_o> iQOONeo = vivoGoodSeriesService.getIQOO("iQOO Neo");

            /* 第二下拉 */
            List<vivo_d_o> NEX1 = vivoGoodSeriesService.getIQOO("NEX双屏版");
            List<vivo_d_o> NEX2 = vivoGoodSeriesService.getIQOO("NEX旗舰版");
            List<vivo_d_o> NEX3 = vivoGoodSeriesService.getIQOO("NEX&NEX屏幕指纹版");



            /*List<Map<String, Object>> maps = vivoGoodSeriesService.GoodSeriesAlls();
            // vivo_goods vg,vivo_good_series vs,vivo_edition ve,vivo_good_color vc ,vivo_GoodsState vgs
            vivo_goods vivo_goods = new vivo_goods();
            vivo_good_series vivo_good_series = new vivo_good_series();
            vivo_edition vivo_edition = new vivo_edition();
            vivo_good_color vivo_good_color = new vivo_good_color();
            vivo_GoodsState vivo_goodsState = new vivo_GoodsState();*/
            /*for (Map<String, Object> vivo_good_sery : maps) {

                try {
//                    BeanUtils.populate(vivo_goods, vivo_good_sery);
                    BeanUtils.populate(vivo_good_series, vivo_good_sery);
                    BeanUtils.populate(vivo_edition, vivo_good_sery);
                    BeanUtils.populate(vivo_good_color, vivo_good_sery);
                    BeanUtils.populate(vivo_goodsState, vivo_good_sery);

                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (InvocationTargetException e) {
                    e.printStackTrace();
                }

            }

            List<vivo_good_series> v2 = new ArrayList<vivo_good_series>();
            v2.add(vivo_good_series);
            List<vivo_edition> v3 = new ArrayList<vivo_edition>();
            v3.add(vivo_edition);
            List<vivo_good_color> v4 = new ArrayList<vivo_good_color>();
            v4.add(vivo_good_color);
            List<vivo_GoodsState> v5 = new ArrayList<vivo_GoodsState>();
            v5.add(vivo_goodsState);
            List<vivo_goods> v6 = new ArrayList<vivo_goods>();
            v6.add(vivo_goods);
            req.setAttribute("v2", v2);
            req.setAttribute("v3", v3);
            req.setAttribute("v4", v4);
            req.setAttribute("v5", v5);
            req.setAttribute("v6", v6);*/
            /* 进行全局保存  服务器停止运行时  自动销毁 */
            ServletContext servletContext = this.getServletContext();
            servletContext.setAttribute("iqoo", iqoo);
            servletContext.setAttribute("iQOOPro", iQOOPro);
            servletContext.setAttribute("iQOONeo", iQOONeo);
            servletContext.setAttribute("NEX1", NEX1);
            servletContext.setAttribute("NEX2", NEX2);
            servletContext.setAttribute("NEX3", NEX3);
            servletContext.setAttribute("listvivo_good_series", listvivo_good_series);
            System.out.println("/VivoProject/index.jsp  转发到 杨不易");
            return "/VivoProject/index.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
