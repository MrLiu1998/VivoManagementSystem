package com.vivo.web;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.vivo.domain.vivo_take;
import com.vivo.service.takeService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JSONString;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@WebServlet("/settlementServlet")
public class settlementServlet extends BaseServlet {
    // 收货地址信息
    takeService takeService = new takeService();

    /* 收货地址信息 */
    public String MyOrderTakeInformation(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Genuine杨不易
        System.out.println("收货地址信息");
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        try {
            String v_uid = req.getParameter("v_uid");
            List<vivo_take> allTake = takeService.getAllTake(v_uid);
            System.out.println(allTake);
            this.getServletContext().setAttribute("allTake", allTake);
            return "/VivoProject/settlement.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }


    public String MyOrderTakeInformationTake(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Genuine杨不易
        System.out.println("个人信息收货地址信息");
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        try {
            String v_uid = req.getParameter("v_uid");

            List<vivo_take> allTake = takeService.getAllTake(v_uid);
            System.out.println(allTake);
            req.setAttribute("allTake", allTake);
            return "/VivoProject/take.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }


    /* 添加收货地址 */
    public String addTakeInformation(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        vivo_take vivo_take = new vivo_take();
        Map<String, String[]> parameterMap = req.getParameterMap();
        try {
            BeanUtils.populate(vivo_take, parameterMap);
            int i = takeService.addTakeInformation(vivo_take);
            System.out.println(vivo_take);
            resp.sendRedirect("/settlementServlet?action=MyOrderTakeInformation&v_uid=" + vivo_take.getV_uid());
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        /*Gson gson = new Gson();
        String str = gson.toJson(allTake);
        PrintWriter out = resp.getWriter();
        out.print(str);
        out.close();*/
        return null;

    }

    /* 添加收货地址 */
    public String addTakeInformationTake(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        vivo_take vivo_take = new vivo_take();
        Map<String, String[]> parameterMap = req.getParameterMap();
        try {
            BeanUtils.populate(vivo_take, parameterMap);
            int i = takeService.addTakeInformation(vivo_take);
            System.out.println(vivo_take);
            resp.sendRedirect("/settlementServlet?action=MyOrderTakeInformationTake&v_uid=" + vivo_take.getV_uid());
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        /*Gson gson = new Gson();
        String str = gson.toJson(allTake);
        PrintWriter out = resp.getWriter();
        out.print(str);
        out.close();*/
        return null;

    }

    public String editorTakeInformationTwo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, String[]> parameterMap = req.getParameterMap();

        vivo_take vivo_take = new vivo_take();
        try {
            BeanUtils.populate(vivo_take, parameterMap);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        try {
            int i = takeService.editorTakeInformation(vivo_take);
            return "/settlementServlet?action=MyOrderTakeInformation&v_uid=" + vivo_take.getV_uid();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String editorTakeInformation(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Map<String, String[]> parameterMap = req.getParameterMap();

        vivo_take vivo_take = new vivo_take();
        try {
            BeanUtils.populate(vivo_take, parameterMap);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        try {
            int i = takeService.editorTakeInformation(vivo_take);
            return "/settlementServlet?action=MyOrderTakeInformationTake&v_uid=" + vivo_take.getV_uid();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    public String delTakeInformation(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String v_uid = req.getParameter("v_uid");
        String v_tid = req.getParameter("v_tid");
        System.out.println(v_uid);
        System.out.println(v_tid);
        try {
            int i = takeService.delTakeInformation(v_uid, Integer.parseInt(v_tid));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getV_tidINfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException {

        String v_uid = req.getParameter("v_uid");
        String v_tid = req.getParameter("v_tid");
        System.out.println(v_tid);
        try {
            vivo_take v_tidINfo = takeService.getV_tidINfo(v_uid, Integer.parseInt(v_tid));
            PrintWriter out = resp.getWriter();
            Gson gson = new Gson();
            String s = gson.toJson(v_tidINfo);
            out.print(s);
            out.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

}
