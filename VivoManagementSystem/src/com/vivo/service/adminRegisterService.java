package com.vivo.service;

import com.vivo.dao.Impl.adminRegisterDaoimp;
import com.vivo.domain.*;

import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class adminRegisterService {
    adminRegisterDaoimp adminRegisterDaoimp = new adminRegisterDaoimp();
    // ��¼
    public vivo_admin adminLogin(String admin, String password) throws Exception {
        vivo_admin vivo_admin = adminRegisterDaoimp.adminLogin(admin, password);
        if(vivo_admin != null){
            return vivo_admin;
        }else{
            throw new Exception("�û����������!!!");
        }

    }
    // ��ȡ�̳ǵ��е�ȫ����Ʒ
    public List<vivo_goods> getAllGoods() throws SQLException {
        return adminRegisterDaoimp.getAllGoods();
    }
    // ɾ��ĳ����Ʒ
    public int delGoods(Integer v_gid) throws ServletException, IOException, SQLException {
        return adminRegisterDaoimp.delGoods(v_gid);
    }
    // �޸�ĳ��������״̬  editorOrderStatus
    public int editorOrderStatus(vivo_myorder myorder) throws  SQLException{
        return adminRegisterDaoimp.editorOrderStatus(myorder);
    }

    // ��ҳ��ȡ������Ʒ
    public PageBean getPageBean(int currentPage) throws SQLException {
        PageBean pageBean = new PageBean();
        // ���õ�ǰҳ
        pageBean.setCurrentPage(currentPage);
        // ��ȡ�ж�������¼ �����ݵ��в�ѯ
        Long count = adminRegisterDaoimp.getCount(); // ������յ���long����
        // ���ö�������¼
        pageBean.setTotalCount(count.intValue()); // ת��Ϊint����
        // һҳչʾ����������
        Integer pageCount = 5; // 11 / 5 = 2 1  ����ȡ��
        // ������ҳ��     ���Ľ��������  ����ȡ��
        double totalPage = Math.ceil(1.0 * pageBean.getTotalCount() / pageCount);
        pageBean.setTotalPage((int) totalPage);

        // ���㵱ǰҳ��ѯ�ĽǱ�  ��ǰҳ-1 * һҳչʾ����������
        Integer index = (pageBean.getCurrentPage() - 1) * pageCount;
        // ��ȡ��ҳ����Ʒ
        List<vivo_goods> goodsList = adminRegisterDaoimp.getPageData(index, pageCount);
        // ���õ�ǰҳ����Ʒ
        pageBean.setGoodsList(goodsList);

        return pageBean;
    }

    //6. ģ����ѯ
    public PageBean getLikeGoods(String parameter,Integer currentPage) throws SQLException {
        PageBean pageBean = new PageBean();
        // ���õ�ǰҳ
        pageBean.setCurrentPage(currentPage);
        // ��ȡ�ж�������¼ �����ݵ��в�ѯ
        Long count = adminRegisterDaoimp.getCount2(parameter); // ������յ���long����
        // ���ö�������¼
        pageBean.setTotalCount(count.intValue()); // ת��Ϊint����
        // һҳչʾ����������
        Integer pageCount = 5; // 11 / 5 = 2 1  ����ȡ��
        // ������ҳ��     ���Ľ��������  ����ȡ��
        double totalPage = Math.ceil(1.0 * pageBean.getTotalCount() / pageCount);
        pageBean.setTotalPage((int) totalPage);

        // ���㵱ǰҳ��ѯ�ĽǱ�  ��ǰҳ-1 * һҳչʾ����������
        Integer index = (pageBean.getCurrentPage() - 1) * pageCount;
        // ��ȡ��ҳ����Ʒ
        List<vivo_goods> goodsList = adminRegisterDaoimp.getLikeGoods(parameter,index, pageCount);
        // ���õ�ǰҳ����Ʒ
        pageBean.setGoodsList(goodsList);

        return pageBean;
    }

    public vivo_goods EidtUIGoods(String id) throws SQLException {
        return adminRegisterDaoimp.EidtUIGoods(id);
    }

    public List<vivo_good_series> findCategory() throws SQLException {
        return adminRegisterDaoimp.findCategory();
    }

    public int eidtGoods(vivo_goods vivo_goods) throws SQLException {
    return adminRegisterDaoimp.eidtGoods(vivo_goods);
    }

    public PageBean getOrder(int currentPage) throws SQLException {
        PageBean pageBean = new PageBean();
        // ���õ�ǰҳ
        pageBean.setCurrentPage(currentPage);
        // ��ȡ�ж�������¼ �����ݵ��в�ѯ
        Long count = adminRegisterDaoimp.getOrderCount(); // ������յ���long����
        // ���ö�������¼
        pageBean.setTotalCount(count.intValue()); // ת��Ϊint����
        // һҳչʾ����������
        Integer pageCount = 5; // 11 / 5 = 2 1  ����ȡ��
        // ������ҳ��     ���Ľ��������  ����ȡ��
        double totalPage = Math.ceil(1.0 * pageBean.getTotalCount() / pageCount);
        pageBean.setTotalPage((int) totalPage);

        // ���㵱ǰҳ��ѯ�ĽǱ�  ��ǰҳ-1 * һҳչʾ����������
        Integer index = (pageBean.getCurrentPage() - 1) * pageCount;
        // ��ȡ��ҳ����Ʒ
        List<vivo_myorder_vivoOrder> goodsList = adminRegisterDaoimp.getOrderPageDate(index, pageCount);
        // ���õ�ǰҳ����Ʒ
        pageBean.setVivo_myorder_vivoOrder(goodsList);

        return pageBean;
    }

    public int addGoods(vivo_goods vivo_goods) throws SQLException {
        return adminRegisterDaoimp.addGoods(vivo_goods);
    }

    public int Putaway(String v_gid) throws SQLException {
        return adminRegisterDaoimp.Putaway(v_gid);
    }

    public int soldOut(String v_gid) throws SQLException {
        return adminRegisterDaoimp.soldOut(v_gid);
    }

}
