package com.vivo.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
/**
* @维护时间:2020/9/4-22:43
* @功能描述:利用反射机制通过子节点传递的路径进行转发
* @Description:
* @Author: TeouBle
* @Date: 2017/9/4 22:43
*/
public class BaseServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 0. 设置字符集 防止中文乱码
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        // 1. 获取方法地址
        String action = req.getParameter("action"); // action=login
        try {
            // 2.获取当前对象字节码
            Class clazz = this.getClass();
            // 3.创建调用方法 调用方法的格式 方法名称(request,response)
            Method method = clazz.getMethod(action, HttpServletRequest.class, HttpServletResponse.class);
            // 4.判断方法是否为空
            if(method != null){
                // 调用方法   invoke 获取路径
                String descPath = (String) method.invoke(this, req, resp);
                // 判断该方法名地址是否为空
                if(descPath != null){
                    // 转发
                    req.getRequestDispatcher(descPath).forward(req,resp);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
