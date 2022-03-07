package com.vivo.web;

import com.vivo.dao.Impl.adminRegisterDaoimp;
import com.vivo.domain.*;
import com.vivo.service.adminRegisterService;
import lombok.Setter;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.*;

@WebServlet("/adminServlet")
public class adminRegisterServlet extends BaseServlet {
	  adminRegisterService adminRegisterService = new adminRegisterService();

	  // 15.实现下架 sold Out
	  public String soldOut(HttpServletRequest request, HttpServletResponse response) {

			String v_gid = request.getParameter("v_gid");
			System.out.println(v_gid);
			try {
				  int putaway = adminRegisterService.soldOut(v_gid);
				  PrintWriter writer = response.getWriter();
				  writer.print(putaway);
				  writer.close();
			} catch (SQLException e) {
				  e.printStackTrace();
			} catch (IOException e) {
				  e.printStackTrace();
			}

			return null;
	  }

	  // 14.实现上架 putaway
	  public String Putaway(HttpServletRequest request, HttpServletResponse response) {

			String v_gid = request.getParameter("v_gid");
			try {
				  int putaway = adminRegisterService.Putaway(v_gid);
				  PrintWriter writer = response.getWriter();
				  writer.print(putaway);
				  writer.close();
			} catch (SQLException e) {
				  e.printStackTrace();
			} catch (IOException e) {
				  e.printStackTrace();
			}

			return null;
	  }

	  // 13.editorUIOrder
	  public String editorUIOrder(HttpServletRequest request, HttpServletResponse response) {

			String v_status = request.getParameter("v_status");
			String v_myOrderNo = request.getParameter("v_myOrderNo");
			request.setAttribute("v_myOrderNo", v_myOrderNo);
			request.setAttribute("v_status", v_status);

			return "/admin/order_Editor.jsp";

	  }

	  // 12.修改订单状态
	  public String editorOrder(HttpServletRequest request, HttpServletResponse response) {

			String v_status = request.getParameter("v_status");
			String v_myOrderNo = request.getParameter("v_myOrderNo");
			vivo_myorder vivo_myorder = new vivo_myorder();
			vivo_myorder.setV_status(Integer.parseInt(v_status));
			vivo_myorder.setV_myOrderNo(v_myOrderNo);
			try {
				  int i = adminRegisterService.editorOrderStatus(vivo_myorder);
				  return "/adminServlet?action=getOrder&currentPage=1";
			} catch (SQLException e) {
				  e.printStackTrace();
			}

			return null;
	  }

	  // 11.addUIGoods
	  public String addUIGoods(HttpServletRequest request, HttpServletResponse response) {
			// 1.获取当前id
			try {
				  // 获取手机系列
				  List<vivo_good_series> category = adminRegisterService.findCategory();
				  request.setAttribute("category", category);
				  return "admin/add.jsp";
			} catch (SQLException e) {
				  e.printStackTrace();
			}
			return null;
	  }

	  // 10.添加商品
	  public String addGoods(HttpServletRequest request, HttpServletResponse response) {
			response.setContentType("text/html;charset=utf-8");

			String v_gparticulars = request.getParameter("v_gparticulars");

			try {
				  request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e) {
				  e.printStackTrace();
			}
			vivo_goods vivo_goods = new vivo_goods();

			FileItemFactory factory = new DiskFileItemFactory();

			// 创建文件上传处理器
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 开始解析请求信息
			List items = null;
			try {
				  items = upload.parseRequest(request);

			} catch (FileUploadException e) {
				  e.printStackTrace();
			}
			String a = "";
			// 对所有请求信息进行判断
			Iterator iter = items.iterator();
			while (iter.hasNext()) {
				  FileItem item = (FileItem) iter.next();
				  // 信息为普通的格式
				  if (item.isFormField()) {
						String fieldName = item.getFieldName();
						String value = null;
						try {
							  value = item.getString("utf-8");
						} catch (UnsupportedEncodingException e) {
							  e.printStackTrace();
						}
						if (fieldName.equals("v_gparticulars")) {
							  a = value;
						}
						request.setAttribute(fieldName, value);

				  }
				  // 信息为文件格式
				  else {
						String fileName = item.getName();
						System.out.println(fileName);
						int index = fileName.lastIndexOf("\\");
						fileName = fileName.substring(index + 1);
						System.out.println(fileName + "图片");

						int lastIndexOf = fileName.lastIndexOf('.');
						String etx = fileName.substring(lastIndexOf);
						// 获取随机名称
						String s = UUID.randomUUID().toString();
						SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
						String format = dateFormat.format(new Date());
						String uuid = s.replace("-", "") + etx;

						request.setAttribute("realFileName", format + uuid);
						String basePath = request.getRealPath("/VivoProject/upload");
						File file = new File(basePath, format + uuid);

						System.out.println(file.getPath());

						try {
							  item.write(file);
							  vivo_goods.setV_user((String) request.getAttribute("v_user"));
							  vivo_goods.setV_price(Double.parseDouble((String) request.getAttribute("v_price")));
							  vivo_goods.setV_host(Integer.parseInt((String) request.getAttribute("v_host")));
							  vivo_goods.setV_sid(Integer.parseInt((String) request.getAttribute("v_sid")));
							  vivo_goods.setV_gparticulars(a);
							  vivo_goods.setV_image("/upload/" + format + uuid);
							  vivo_goods.setV_inventory(120);
							  vivo_goods.setV_status(4);
							  try {
									int i = adminRegisterService.addGoods(vivo_goods);
									return "/adminServlet?action=getPageData&currentPage=1";
							  } catch (SQLException e) {
									e.printStackTrace();
							  }
							  System.out.println(vivo_goods);
						} catch (Exception e) {
							  e.printStackTrace();
						}
				  }
				  request.setAttribute("msg", "文件上传成功!");

			}


			return null;
	  }

	  // 9.获取订单
	  public String getOrder(HttpServletRequest request, HttpServletResponse response) {

			try {
				  // 1.获取当前页码
				  String currentPage = request.getParameter("currentPage");
				  System.out.println(currentPage);
				  // 2.把页码交给业务层  根据页码给我一个pageBean
				  PageBean pageBean = adminRegisterService.getOrder(Integer.parseInt(currentPage));
				  System.out.println(pageBean.getVivo_myorder_vivoOrder());
				  // 3.把pageBean储存到域当中
				  request.setAttribute("pageBean", pageBean);
				  // 4.转发
				  return "admin/Order.jsp";
			} catch (SQLException e) {
				  e.printStackTrace();
			}

			return null;
	  }

	  // 8.编辑商品
	  public String eidtGoods(HttpServletRequest request, HttpServletResponse response) {



	  	  /*vivo_goods vivo_goods = new vivo_goods();

			Map<String, String[]> parameterMap = request.getParameterMap();
			try {
				  BeanUtils.populate(vivo_goods, parameterMap);
				  System.out.println("编辑图片:" + vivo_goods.getV_gid());

				  System.out.println("编辑图片:" + vivo_goods.getV_image());

				  vivo_goods.setV_image("upload/" + vivo_goods.getV_image());
				  int i = adminRegisterService.eidtGoods(vivo_goods);

				  return "/adminServlet?action=getPageData&currentPage=1";
			} catch (IllegalAccessException e) {
				  e.printStackTrace();
			} catch (InvocationTargetException e) {
				  e.printStackTrace();
			} catch (SQLException e) {
				  e.printStackTrace();
			}
			return null;*/

			String v_gid = request.getParameter("v_gid");
			System.out.println("商品id" + v_gid);

			vivo_goods vivo_goods = new vivo_goods();

			Map<String, String[]> parameterMap = request.getParameterMap();
			try {
				  BeanUtils.populate(vivo_goods, parameterMap);
			} catch (IllegalAccessException e) {
				  e.printStackTrace();
			} catch (InvocationTargetException e) {
				  e.printStackTrace();
			}


			response.setContentType("text/html;charset=utf-8");
			try {
				  request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e) {
				  e.printStackTrace();
			}

			FileItemFactory factory = new DiskFileItemFactory();

			// 创建文件上传处理器
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 开始解析请求信息
			List<FileItem> items = null;
			try {
				  items = upload.parseRequest(request);
				  vivo_goods.setV_gid(Integer.parseInt(items.get(0).getString("utf-8")));
				  vivo_goods.setV_user((items.get(1).getString("utf-8")));
				  vivo_goods.setV_price(Double.parseDouble(items.get(2).getString("utf-8")));
				  vivo_goods.setV_sid(Integer.parseInt(items.get(3).getString("utf-8")));
				  vivo_goods.setV_host(Integer.parseInt(items.get(4).getString("utf-8")));
				  vivo_goods.setV_image((items.get(5).getString("utf-8")));
				  vivo_goods.setV_gparticulars((items.get(6).getString("utf-8")));

				  System.out.println("请求头拿:" + vivo_goods);
			} catch (FileUploadException e) {
				  e.printStackTrace();
			} catch (UnsupportedEncodingException e) {
				  e.printStackTrace();
			}
			String a = "";
			// 对所有请求信息进行判断
			Iterator iter = items.iterator();
			while (iter.hasNext()) {
				  FileItem item = (FileItem) iter.next();
				  // 信息为普通的格式
				  if (item.isFormField()) {
						String fieldName = item.getFieldName();
						String value = null;
						try {
							  value = item.getString("utf-8");
						} catch (UnsupportedEncodingException e) {
							  e.printStackTrace();
						}
						if (fieldName.equals("v_gparticulars")) {
							  a = value;
						}
						request.setAttribute(fieldName, value);

				  }
				  // 信息为文件格式
				  else {
						String fileName = item.getName();
						System.out.println(fileName);
						int index = fileName.lastIndexOf("\\");
						fileName = fileName.substring(index + 1);
						int lastIndexOf = fileName.lastIndexOf('.');
						if (lastIndexOf != -1) {
							  String etx = fileName.substring(lastIndexOf);
							  // 获取随机名称
							  String s = UUID.randomUUID().toString();
							  SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
							  String format = dateFormat.format(new Date());
							  String uuid = s.replace("-", "") + etx;
							  request.setAttribute("realFileName", format + uuid);
							  String basePath = request.getRealPath("/VivoProject/upload");
							  File file = new File(basePath, format + uuid);

							  try {
									try {
										  item.write(file);
									} catch (Exception e) {
										  e.printStackTrace();
									}
									vivo_goods.setV_image("/upload/" + format + uuid);

									System.out.println(vivo_goods.getV_image());
									int i = adminRegisterService.eidtGoods(vivo_goods);

									System.out.println("编辑成功====" + vivo_goods);

									return "/adminServlet?action=getPageData&currentPage=1";
							  } catch (SQLException e) {
									e.printStackTrace();
							  }
						}

				  }
			}
			return "/adminServlet?action=getPageData&currentPage=1";


	  }

	  // 7.初始化编辑商品
	  public String EidtUIGoods(HttpServletRequest request, HttpServletResponse response) {
			// 1.获取当前id
			String id = request.getParameter("id");
			try {
				  // 获取对应的手机信息
				  vivo_goods vivo_goods = adminRegisterService.EidtUIGoods(id);
				  request.setAttribute("vivo_goods", vivo_goods);

				  // 获取手机系列
				  List<vivo_good_series> category = adminRegisterService.findCategory();
				  request.setAttribute("category", category);
				  return "admin/edit.jsp";
			} catch (SQLException e) {
				  e.printStackTrace();
			}
			return null;
	  }

	  // 6.模糊分页查询
	  public String likeQuery(HttpServletRequest request, HttpServletResponse response) {
			// 1.获取当前页码
			String currentPage = request.getParameter("currentPage");
			String value = request.getParameter("value"); // bookName

			// 2.把页码交给业务层  根据页码给我一个pageBean
			try {
				  // 如果等于null则设置为空  要不然分页出现问题
				  if (value == null) {
						value = "";
				  }
				  PageBean pageData = adminRegisterService.getLikeGoods(value, Integer.parseInt(currentPage));
				  // 3.把page储存到域当中
				  request.setAttribute("pageBean", pageData);
				  request.setAttribute("value", value); // 保存模糊查询的值
				  // 4.转发
				  return "admin/main.jsp";
			} catch (Exception e) {
				  e.printStackTrace();
			}

			return null;
	  }

	  // 5.分页业务逻辑
	  public String getPageData(HttpServletRequest request, HttpServletResponse response) {

			try {
				  // 1.获取当前页码
				  String currentPage = request.getParameter("currentPage");
				  System.out.println(currentPage);
				  // 2.把页码交给业务层  根据页码给我一个pageBean
				  PageBean pageBean = adminRegisterService.getPageBean(Integer.parseInt(currentPage));
				  // 3.把pageBean储存到域当中
				  request.setAttribute("pageBean", pageBean);
				  // 4.转发
				  return "admin/main.jsp";
			} catch (SQLException e) {
				  e.printStackTrace();
			}
			return null;
	  }

	  // 1.管理员登录
	  public String adminLogin(HttpServletRequest req, HttpServletResponse resp) throws
			  ServletException, IOException {
			// 设置编码
			req.setCharacterEncoding("utf-8");
			// Genuine杨不易
			String v_apassword = req.getParameter("v_apassword");
			String v_aname = req.getParameter("v_aname");
			try {
				  vivo_admin vivo_admin = adminRegisterService.adminLogin(v_aname, v_apassword);
				  System.out.println(vivo_admin + "aa");
				  HttpSession session = req.getSession();
				  session.setAttribute("vivo_admin", vivo_admin);
				  return "admin/admin_index.jsp";
			} catch (Exception e) {
				  if (e.getMessage().equals("用户或密码错误!!!")) {
						req.setAttribute("adminLoginErr", e.getMessage());
						return "admin/admin_login.jsp";
				  } else {
						e.printStackTrace();
				  }
			}
			return null;
	  }

	  // 2.获取所有商品
	  public String getListGoods(HttpServletRequest request, HttpServletResponse response)
			  throws ServletException, IOException {

			// 1.调用服务层获取商品
			try {
				  // 集合
				  List<vivo_goods> allGoods = adminRegisterService.getAllGoods();
				  // 对数据进行反转 把最新添加的数据放在前面
				  Collections.reverse(allGoods);
				  // 把数据储存到域当中
				  request.setAttribute("allGoods", allGoods);
				  // 转发
				  return "admin/main.jsp";
			} catch (SQLException e) {
				  // TODO Auto-generated catch block
				  e.printStackTrace();
			}
			return null;
	  }

	  // 3.删除某个商品
	  public String delGoods(HttpServletRequest request, HttpServletResponse response) throws
			  ServletException, IOException, SQLException {
			// 1.接收参数
			String id = request.getParameter("id");
			// 2.调用服务层实现删除
			try {
				  adminRegisterService.delGoods(Integer.parseInt(id));
				  // 转发刷新数据
				  return "/adminServlet?action=getPageData&currentPage=1";
			} catch (Exception e) {
				  // TODO Auto-generated catch block
				  e.printStackTrace();
			}
			return null;
	  }

	  // 4.修改某个订单的状态  editorOrderStatus
	  public int editorOrderStatus(HttpServletRequest request, HttpServletResponse response) throws SQLException {

			return 0;
	  }


}
