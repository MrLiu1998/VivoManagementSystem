package com.vivo.web;

import com.alibaba.druid.support.json.JSONUtils;
import com.vivo.domain.vivo_user;
import com.vivo.service.registerService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.mail.HtmlEmail;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.SessionCookieConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.sql.SQLException;
import java.util.*;

@WebServlet("/registerServlet")
public class registerServlet extends BaseServlet {
    // ҵ���
    private registerService registerService = new registerService();

    // �����֤��
    public String achieveCode() {
        String[] beforeShuffle = new String[]{"2", "3", "��׺�˧", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D",
                "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y",
                "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                "u", "v", "w", "x", "y", "z"};
        // ������ת��Ϊ����
        List list = Arrays.asList(beforeShuffle); // ����ʱΪList�ӿڵ��е� ����ʱΪArrays�ڲ��൱�е�
        // static void shuffle(List<?> list) ʹ��Ĭ�����Դ���б�����û��������û������Ŀ����Զ��Ǵ�����ȵġ�
        Collections.shuffle(list);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i));
        }
        String afterShuffle = sb.toString();
        // �����ȡ���ֵ
        String result = afterShuffle.substring(3, 9);
        return result;
    }

    public void getCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String email = req.getParameter("email");

        // ����HtmlEmail����
        HtmlEmail send = new HtmlEmail();
        // ��ȡ��֤��
        String achieveCode = achieveCode();
        try {
            // ����֤�����ݱ���session
            req.getSession().setAttribute("checkcode_session", achieveCode);
            //�����ɵ���֤���ŵ�ȫ���������
            this.getServletContext().setAttribute("checkCode", achieveCode);
            send.setHostName("smtp.qq.com");// ���������� smtp.qq.com
            send.setSmtpPort(587);// �˿ں�  465
            send.setSSLOnConnect(false);// ����SSL����
            send.setCharset("utf-8");// �����ַ���
            send.addTo(email); // �����ߵ�QQEamil pxkryqrpxxhkcaaj
            send.setFrom("1692700664@qq.com", "Genuine���");// ��һ�������Ƿ����ߵ�QQEamil ? �ڶ��������Ƿ�����QQ�ǳ�
            // ��Ȩ�� dcidjcuxicegfdae 5157 ��Ȩ�� pxkryqrpxxhkcaaj jmesctjmkbgzcaga ijlqklzbolluedjg
            send.setAuthentication("1692700664@qq.com", "qhctbuwgmzxmeefb");// ��һ�������Ƿ����ߵ�QQEamil ? �ڶ��������Ǹոջ�ȡ����Ȩ��
            send.setSubject("С��������!"); // ����
            send.setMsg("������!!!,�û�ע�����ǵ��̳�!!!\t��֤��˫�ַ���!!!!" + "��" + achieveCode + "��"); // ��������
            send.send();// ������Ϣ
            System.out.println("��֤�뷢�ͳɹ�");

            PrintWriter out = resp.getWriter();
            out.print(achieveCode);
            out.close();

        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    public String register(HttpServletRequest req, HttpServletResponse resp) {
        // ����uuid
        UUID uuid = UUID.randomUUID();

        Map<String, String[]> parameterMap = req.getParameterMap();

        vivo_user user = new vivo_user();
        String code = req.getParameter("code");
        user.setV_uid(uuid.toString());
        try {
            BeanUtils.populate(user, parameterMap);
            String checkCode = (String) this.getServletContext().getAttribute("checkCode");
            if (checkCode.toLowerCase().trim().equals(code.toLowerCase().trim())) {
                // ����ҵ���
                registerService.add(user);
                return "/VivoProject/log-n.jsp";
            } else {
                req.setAttribute("v_register_err", "ע��ʧ��,��������æ�����Ժ�����!!!");
                return "/VivoProject/register.jsp";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public String registerLogin(HttpServletRequest req, HttpServletResponse resp) {
        // v_phone ��ʾ�� �û�����  ����  �ֻ���
        String v_phone = req.getParameter("v_phone");
        String password = req.getParameter("v_password");
        HttpSession session1 = req.getSession();
        String lastRegister = (String) session1.getAttribute("url");
        if (v_phone != null && password != null) {
            // ��¼ǰ��ҳ��
            lastRegister =  lastRegister != null ? lastRegister : "vivoGoodSeriesServlet?action=GoodSeriesAll";
            System.out.println(lastRegister);
            try {
                vivo_user vivo_user = registerService.registerLogin(v_phone, password);
                if (vivo_user != null) {
                    HttpSession session = req.getSession();
                    session.setAttribute("vivo_user", vivo_user);
                    req.removeAttribute("registerLoginErr");
                    return lastRegister;
                } else {
                    req.setAttribute("registerLoginErr", "��½����Ŷ���������µ�½��mua");
                    return "VivoProject/log-n.jsp";
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            return "/VivoProject/log-n.jsp";
        }

        return null;
    }

    public String registerPhone(HttpServletRequest req, HttpServletResponse resp) {
        resp.setContentType("text/html;charset=utf-8");
        String v_phone = req.getParameter("v_phone");

        try {
            vivo_user vivo_user = registerService.registerPhone(v_phone);
            PrintWriter out = resp.getWriter();

            if (vivo_user != null) {
                out.print("���û��Ѿ�ע�ᣬ������ֱ�ӽ��������¼���������¼");
            } else {
                out.print("���ֻ��ſ���ע��");
            }
            out.close();

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }

    public String registerClose(HttpServletRequest req, HttpServletResponse resp) {
        HttpSession session = req.getSession();
        session.invalidate();
        return "/vivoGoodSeriesServlet?action=GoodSeriesAll";
    }

    public String updatePassword(HttpServletRequest req, HttpServletResponse resp) {

        String v_phone = req.getParameter("v_phone");
        String code = req.getParameter("code");
        String v_password = req.getParameter("v_password");
        System.out.println(v_phone);

        String checkCode = (String) this.getServletContext().getAttribute("checkCode");

        if (checkCode.toLowerCase().trim().equals(code.toLowerCase().trim())) {
            try {
                int i = registerService.updatePassword(v_phone, v_password);
                System.out.println("�޸ĳɹ�");
                return "/VivoProject/log-n.jsp";
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        // �һ�����

        return null;
    }

    public String editorPassword(HttpServletRequest req, HttpServletResponse resp) {

        String v_uid = req.getParameter("v_uid");
        String v_password = req.getParameter("v_password");
        System.out.println(v_uid);
        System.out.println(v_password);
        try {
            int i = registerService.editorPassword(v_uid, v_password);
            return  "/VivoProject/personalCenter.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // �һ�����
        return null;
    }

    public String editorUserInfo(HttpServletRequest req, HttpServletResponse resp) {

        String v_uid = req.getParameter("v_uid");
        Map<String, String[]> parameterMap = req.getParameterMap();

        vivo_user vivo_user = new vivo_user();
        try {
            BeanUtils.populate(vivo_user,parameterMap);

            System.out.println(vivo_user);

            int i = registerService.editorUserInfo(vivo_user);
            if(i>0){
                return "/registerServlet?action=getUserInfo&v_uid="+vivo_user.getV_uid();
            }else{
                return "/VivoProject/personal.jsp";
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public String getUserInfo(HttpServletRequest req, HttpServletResponse resp) {

        String v_uid = req.getParameter("v_uid");

        try {
            vivo_user userInfo = registerService.getUserInfo(v_uid);
            req.setAttribute("userInfo",userInfo);
            return "/VivoProject/personalMyinformation.jsp";
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}
