package com.vivo.web;

import com.vivo.domain.vivo_shoppingCart;
import com.vivo.service.shoppingCartService;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@WebServlet("/shoppingCartServlet")
public class shoppingCartServlet extends BaseServlet {
    shoppingCartService shoppingCartService = new shoppingCartService();

    public String getUserShoppingCar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Genuine杨不易
        try {
            String v_uid = req.getParameter("v_uid");
            List<vivo_shoppingCart> userShoppingCar = shoppingCartService.getUserShoppingCar(v_uid);
            ServletContext servletContext = req.getServletContext(); // 商品保存到全局
            servletContext.setAttribute("userShoppingCar", userShoppingCar);
            System.out.println("来啦"+userShoppingCar);
            if (userShoppingCar != null) {
                return "VivoProject/shoppingcart.jsp";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String addUserShoppingCar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            Map<String, String[]> parameterMap = req.getParameterMap();

            vivo_shoppingCart vivo_shoppingCart = new vivo_shoppingCart();
            BeanUtils.populate(vivo_shoppingCart, parameterMap);
            System.out.println("添加到购物车表:"+vivo_shoppingCart);
            int i = shoppingCartService.addUserShoppingCar(vivo_shoppingCart);
            if (i > 0) {
                /* 把用户ID保存 方便获取 */
                req.setAttribute("v_uid", vivo_shoppingCart.getV_uid());
                getUserShoppingCar(req,resp);
//                resp.sendRedirect("/VivoProject/cartAddSuccess.jsp");
                return  "VivoProject/cartAddSuccess.jsp";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getAccessoriesShoppingCar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

        try {
            String v_uid = req.getParameter("v_uid");
            List<vivo_shoppingCart> accessoriesShoppingCar = shoppingCartService.getAccessoriesShoppingCar(v_uid);
            ServletContext servletContext = req.getServletContext(); // 商品保存到全局
            servletContext.setAttribute("userShoppingCar", accessoriesShoppingCar);
            System.out.println("第二个"+accessoriesShoppingCar);
            if (accessoriesShoppingCar != null) {
                return "/VivoProject/shoppingcart.jsp";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  null;
    }

    public String editorGoodCount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String totalCount = req.getParameter("totalCount");
        String v_cprice = req.getParameter("J_viewVcoin");
        String v_cid = req.getParameter("v_cid");
        try {
            int i = shoppingCartService.editorGoodCount(Integer.parseInt(totalCount),Integer.parseInt(v_cprice),Integer.parseInt(v_cid));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  null;
    }

    public String delGoodCar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String v_cid = req.getParameter("v_cid");
        String v_uid = req.getParameter("v_uid");
        System.out.println(v_cid);
        System.out.println(v_uid);
        try {
            int i = shoppingCartService.delGoodCar(Integer.parseInt(v_cid));
            if(i>0){
                return "/shoppingCartServlet?action=getUserShoppingCar&v_uid="+v_uid;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return  null;
    }
}