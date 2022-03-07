package com.vivo.util;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.apache.commons.mail.HtmlEmail;

public class SendEmail {

	// 随机验证码
	public String achieveCode() {
		String[] beforeShuffle = new String[] { "2", "3", "杨不易好帅", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D",
				"E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y",
				"Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
				"u", "v", "w", "x", "y", "z" };
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

	/**
	 * 发送邮箱
	 * @param eamil
	 * @return 验证码
	 */
	public String sendEamilCode(String eamil) {

		// 创建HtmlEmail对象
		HtmlEmail send = new HtmlEmail();
		// 获取验证码
		String achieveCode = achieveCode();
		try {
			send.setHostName("smtp.qq.com");// 服务器名称 smtp.qq.com
			send.setSmtpPort(465);// 端口号
//			send.setSSL(true);
		/*	send.setSSL(true);
			send.setTLS(true);*/
			send.setSSLOnConnect(true);// 开启SSL服务
			send.setCharset("utf-8");// 设置字符集
			System.out.println(eamil);

			send.addTo(eamil); // 接收者的QQEamil pxkryqrpxxhkcaaj
			send.setFrom("1692700664@qq.com", "Genuine杨不易");// 第一个参数是发送者的QQEamil   第二个参数是发送者QQ昵称
			// 授权码 dcidjcuxicegfdae 5157 授权码 pxkryqrpxxhkcaaj jmesctjmkbgzcaga ijlqklzbolluedjg
			send.setAuthentication("1692700664@qq.com", "glolrturxxfpbijb");// 第一个参数是发送者的QQEamil   第二个参数是刚刚获取的授权码
			send.setSubject("小猪猪来啦!"); // 主题
			send.setMsg("我来啦!!!,用户注册我们的商城!!!\t验证码双手奉上!!!!" + achieveCode + "\t我紧致的猪猪主人！"); // 设置内容
			send.send();// 发送信息
			System.out.println("发送成功");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return achieveCode;
	}
}
