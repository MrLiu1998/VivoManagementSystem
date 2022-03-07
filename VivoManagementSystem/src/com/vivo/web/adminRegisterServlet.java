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

	  // 15.ʵ���¼� sold Out
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

	  // 14.ʵ���ϼ� putaway
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

	  // 12.�޸Ķ���״̬
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
			// 1.��ȡ��ǰid
			try {
				  // ��ȡ�ֻ�ϵ��
				  List<vivo_good_series> category = adminRegisterService.findCategory();
				  request.setAttribute("category", category);
				  return "admin/add.jsp";
			} catch (SQLException e) {
				  e.printStackTrace();
			}
			return null;
	  }

	  // 10.�����Ʒ
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

			// �����ļ��ϴ�������
			ServletFileUpload upload = new ServletFileUpload(factory);
			// ��ʼ����������Ϣ
			List items = null;
			try {
				  items = upload.parseRequest(request);

			} catch (FileUploadException e) {
				  e.printStackTrace();
			}
			String a = "";
			// ������������Ϣ�����ж�
			Iterator iter = items.iterator();
			while (iter.hasNext()) {
				  FileItem item = (FileItem) iter.next();
				  // ��ϢΪ��ͨ�ĸ�ʽ
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
				  // ��ϢΪ�ļ���ʽ
				  else {
						String fileName = item.getName();
						System.out.println(fileName);
						int index = fileName.lastIndexOf("\\");
						fileName = fileName.substring(index + 1);
						System.out.println(fileName + "ͼƬ");

						int lastIndexOf = fileName.lastIndexOf('.');
						String etx = fileName.substring(lastIndexOf);
						// ��ȡ�������
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
				  request.setAttribute("msg", "�ļ��ϴ��ɹ�!");

			}


			return null;
	  }

	  // 9.��ȡ����
	  public String getOrder(HttpServletRequest request, HttpServletResponse response) {

			try {
				  // 1.��ȡ��ǰҳ��
				  String currentPage = request.getParameter("currentPage");
				  System.out.println(currentPage);
				  // 2.��ҳ�뽻��ҵ���  ����ҳ�����һ��pageBean
				  PageBean pageBean = adminRegisterService.getOrder(Integer.parseInt(currentPage));
				  System.out.println(pageBean.getVivo_myorder_vivoOrder());
				  // 3.��pageBean���浽����
				  request.setAttribute("pageBean", pageBean);
				  // 4.ת��
				  return "admin/Order.jsp";
			} catch (SQLException e) {
				  e.printStackTrace();
			}

			return null;
	  }

	  // 8.�༭��Ʒ
	  public String eidtGoods(HttpServletRequest request, HttpServletResponse response) {



	  	  /*vivo_goods vivo_goods = new vivo_goods();

			Map<String, String[]> parameterMap = request.getParameterMap();
			try {
				  BeanUtils.populate(vivo_goods, parameterMap);
				  System.out.println("�༭ͼƬ:" + vivo_goods.getV_gid());

				  System.out.println("�༭ͼƬ:" + vivo_goods.getV_image());

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
			System.out.println("��Ʒid" + v_gid);

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

			// �����ļ��ϴ�������
			ServletFileUpload upload = new ServletFileUpload(factory);
			// ��ʼ����������Ϣ
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

				  System.out.println("����ͷ��:" + vivo_goods);
			} catch (FileUploadException e) {
				  e.printStackTrace();
			} catch (UnsupportedEncodingException e) {
				  e.printStackTrace();
			}
			String a = "";
			// ������������Ϣ�����ж�
			Iterator iter = items.iterator();
			while (iter.hasNext()) {
				  FileItem item = (FileItem) iter.next();
				  // ��ϢΪ��ͨ�ĸ�ʽ
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
				  // ��ϢΪ�ļ���ʽ
				  else {
						String fileName = item.getName();
						System.out.println(fileName);
						int index = fileName.lastIndexOf("\\");
						fileName = fileName.substring(index + 1);
						int lastIndexOf = fileName.lastIndexOf('.');
						if (lastIndexOf != -1) {
							  String etx = fileName.substring(lastIndexOf);
							  // ��ȡ�������
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

									System.out.println("�༭�ɹ�====" + vivo_goods);

									return "/adminServlet?action=getPageData&currentPage=1";
							  } catch (SQLException e) {
									e.printStackTrace();
							  }
						}

				  }
			}
			return "/adminServlet?action=getPageData&currentPage=1";


	  }

	  // 7.��ʼ���༭��Ʒ
	  public String EidtUIGoods(HttpServletRequest request, HttpServletResponse response) {
			// 1.��ȡ��ǰid
			String id = request.getParameter("id");
			try {
				  // ��ȡ��Ӧ���ֻ���Ϣ
				  vivo_goods vivo_goods = adminRegisterService.EidtUIGoods(id);
				  request.setAttribute("vivo_goods", vivo_goods);

				  // ��ȡ�ֻ�ϵ��
				  List<vivo_good_series> category = adminRegisterService.findCategory();
				  request.setAttribute("category", category);
				  return "admin/edit.jsp";
			} catch (SQLException e) {
				  e.printStackTrace();
			}
			return null;
	  }

	  // 6.ģ����ҳ��ѯ
	  public String likeQuery(HttpServletRequest request, HttpServletResponse response) {
			// 1.��ȡ��ǰҳ��
			String currentPage = request.getParameter("currentPage");
			String value = request.getParameter("value"); // bookName

			// 2.��ҳ�뽻��ҵ���  ����ҳ�����һ��pageBean
			try {
				  // �������null������Ϊ��  Ҫ��Ȼ��ҳ��������
				  if (value == null) {
						value = "";
				  }
				  PageBean pageData = adminRegisterService.getLikeGoods(value, Integer.parseInt(currentPage));
				  // 3.��page���浽����
				  request.setAttribute("pageBean", pageData);
				  request.setAttribute("value", value); // ����ģ����ѯ��ֵ
				  // 4.ת��
				  return "admin/main.jsp";
			} catch (Exception e) {
				  e.printStackTrace();
			}

			return null;
	  }

	  // 5.��ҳҵ���߼�
	  public String getPageData(HttpServletRequest request, HttpServletResponse response) {

			try {
				  // 1.��ȡ��ǰҳ��
				  String currentPage = request.getParameter("currentPage");
				  System.out.println(currentPage);
				  // 2.��ҳ�뽻��ҵ���  ����ҳ�����һ��pageBean
				  PageBean pageBean = adminRegisterService.getPageBean(Integer.parseInt(currentPage));
				  // 3.��pageBean���浽����
				  request.setAttribute("pageBean", pageBean);
				  // 4.ת��
				  return "admin/main.jsp";
			} catch (SQLException e) {
				  e.printStackTrace();
			}
			return null;
	  }

	  // 1.����Ա��¼
	  public String adminLogin(HttpServletRequest req, HttpServletResponse resp) throws
			  ServletException, IOException {
			// ���ñ���
			req.setCharacterEncoding("utf-8");
			// Genuine���
			String v_apassword = req.getParameter("v_apassword");
			String v_aname = req.getParameter("v_aname");
			try {
				  vivo_admin vivo_admin = adminRegisterService.adminLogin(v_aname, v_apassword);
				  System.out.println(vivo_admin + "aa");
				  HttpSession session = req.getSession();
				  session.setAttribute("vivo_admin", vivo_admin);
				  return "admin/admin_index.jsp";
			} catch (Exception e) {
				  if (e.getMessage().equals("�û����������!!!")) {
						req.setAttribute("adminLoginErr", e.getMessage());
						return "admin/admin_login.jsp";
				  } else {
						e.printStackTrace();
				  }
			}
			return null;
	  }

	  // 2.��ȡ������Ʒ
	  public String getListGoods(HttpServletRequest request, HttpServletResponse response)
			  throws ServletException, IOException {

			// 1.���÷�����ȡ��Ʒ
			try {
				  // ����
				  List<vivo_goods> allGoods = adminRegisterService.getAllGoods();
				  // �����ݽ��з�ת ��������ӵ����ݷ���ǰ��
				  Collections.reverse(allGoods);
				  // �����ݴ��浽����
				  request.setAttribute("allGoods", allGoods);
				  // ת��
				  return "admin/main.jsp";
			} catch (SQLException e) {
				  // TODO Auto-generated catch block
				  e.printStackTrace();
			}
			return null;
	  }

	  // 3.ɾ��ĳ����Ʒ
	  public String delGoods(HttpServletRequest request, HttpServletResponse response) throws
			  ServletException, IOException, SQLException {
			// 1.���ղ���
			String id = request.getParameter("id");
			// 2.���÷����ʵ��ɾ��
			try {
				  adminRegisterService.delGoods(Integer.parseInt(id));
				  // ת��ˢ������
				  return "/adminServlet?action=getPageData&currentPage=1";
			} catch (Exception e) {
				  // TODO Auto-generated catch block
				  e.printStackTrace();
			}
			return null;
	  }

	  // 4.�޸�ĳ��������״̬  editorOrderStatus
	  public int editorOrderStatus(HttpServletRequest request, HttpServletResponse response) throws SQLException {

			return 0;
	  }


}
