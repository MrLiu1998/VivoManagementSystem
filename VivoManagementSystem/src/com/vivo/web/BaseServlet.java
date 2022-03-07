package com.vivo.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
/**
* @ά��ʱ��:2020/9/4-22:43
* @��������:���÷������ͨ���ӽڵ㴫�ݵ�·������ת��
* @Description:
* @Author: TeouBle
* @Date: 2017/9/4 22:43
*/
public class BaseServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 0. �����ַ��� ��ֹ��������
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        // 1. ��ȡ������ַ
        String action = req.getParameter("action"); // action=login
        try {
            // 2.��ȡ��ǰ�����ֽ���
            Class clazz = this.getClass();
            // 3.�������÷��� ���÷����ĸ�ʽ ��������(request,response)
            Method method = clazz.getMethod(action, HttpServletRequest.class, HttpServletResponse.class);
            // 4.�жϷ����Ƿ�Ϊ��
            if(method != null){
                // ���÷���   invoke ��ȡ·��
                String descPath = (String) method.invoke(this, req, resp);
                // �жϸ÷�������ַ�Ƿ�Ϊ��
                if(descPath != null){
                    // ת��
                    req.getRequestDispatcher(descPath).forward(req,resp);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
