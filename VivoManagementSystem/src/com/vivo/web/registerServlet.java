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
    // 业务层
    private registerService registerService = new registerService();

    // 随机验证码
    public String achieveCode() {
        String[] beforeShuffle = new String[]{"2", "3", "杨不易好帅", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D",
                "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y",
                "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                "u", "v", "w", "x", "y", "z"};
        // 把数组转换为集合
        List list = Arrays.asList(beforeShuffle); // 编译时为List接口当中的 运行时为Arrays内部类当中的
        // static void shuffle(List<?> list) 使用默认随机源对列表进行置换，所有置换发生的可能性都是大致相等的。
        Collections.shuffle(list);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i));
        }
        String afterShuffle = sb.toString();
        // 随机获取五个值
        String result = afterShuffle.substring(3, 9);
        return result;
    }

    public void getCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String email = req.getParameter("email");

        // 创建HtmlEmail对象
        HtmlEmail send = new HtmlEmail();
        // 获取验证码
        String achieveCode = achieveCode();
        try {
            // 将验证码内容保存session
            req.getSession().setAttribute("checkcode_session", achieveCode);
            //把生成的验证码存放到全局域对象当中
            this.getServletContext().setAttribute("checkCode", achieveCode);
            send.setHostName("smtp.qq.com");// 服务器名称 smtp.qq.com
            send.setSmtpPort(587);// 端口号  465
            send.setSSLOnConnect(false);// 开启SSL服务
            send.setCharset("utf-8");// 设置字符集
            send.addTo(email); // 接收者的QQEamil pxkryqrpxxhkcaaj
            send.setFrom("1692700664@qq.com", "Genuine杨不易");// 第一个参数是发送者的QQEamil ? 第二个参数是发送者QQ昵称
            // 授权码 dcidjcuxicegfdae 5157 授权码 pxkryqrpxxhkcaaj jmesctjmkbgzcaga ijlqklzbolluedjg
            send.setAuthentication("1692700664@qq.com", "qhctbuwgmzxmeefb");// 第一个参数是发送者的QQEamil ? 第二个参数是刚刚获取的授权码
            send.setSubject("小猪猪来啦!"); // 主题
            send.setMsg("我来啦!!!,用户注册我们的商城!!!\t验证码双手奉上!!!!" + "《" + achieveCode + "》"); // 设置内容
            send.send();// 发送信息
            System.out.println("验证码发送成功");

            PrintWriter out = resp.getWriter();
            out.print(achieveCode);
            out.close();

        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    public String register(HttpServletRequest req, HttpServletResponse resp) {
        // 生成uuid
        UUID uuid = UUID.randomUUID();

        Map<String, String[]> parameterMap = req.getParameterMap();

        vivo_user user = new vivo_user();
        String code = req.getParameter("code");
        user.setV_uid(uuid.toString());
        try {
            BeanUtils.populate(user, parameterMap);
            String checkCode = (String) this.getServletContext().getAttribute("checkCode");
            if (checkCode.toLowerCase().trim().equals(code.toLowerCase().trim())) {
                // 调用业务层
                registerService.add(user);
                return "/VivoProject/log-n.jsp";
            } else {
                req.setAttribute("v_register_err", "注册失败,服务器繁忙，请稍后再试!!!");
                return "/VivoProject/register.jsp";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public String registerLogin(HttpServletRequest req, HttpServletResponse resp) {
        // v_phone 表示： 用户名称  邮箱  手机号
        String v_phone = req.getParameter("v_phone");
        String password = req.getParameter("v_password");
        HttpSession session1 = req.getSession();
        String lastRegister = (String) session1.getAttribute("url");
        if (v_phone != null && password != null) {
            // 登录前的页面
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
                    req.setAttribute("registerLoginErr", "登陆错误哦！！请重新登陆，mua");
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
                out.print("该用户已经注册，您可以直接进行邮箱登录或者密码登录");
            } else {
                out.print("该手机号可以注册");
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
                System.out.println("修改成功");
                return "/VivoProject/log-n.jsp";
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        // 找回密码

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
        // 找回密码
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
