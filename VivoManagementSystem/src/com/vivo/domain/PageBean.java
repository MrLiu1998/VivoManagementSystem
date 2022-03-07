package com.vivo.domain;

import java.util.ArrayList;
import java.util.List;


public class PageBean {

    // ��ǰ����һҳ
    private Integer currentPage;
    // ������ҳ
    private Integer totalPage;
    // ��������¼
    private Integer totalCount;
    // ��ǰҳ��Ʒ
    private List<vivo_goods> goodsList = new ArrayList<vivo_goods>();

    private List<vivo_myorder_vivoOrder> vivo_myorder_vivoOrder = new ArrayList<vivo_myorder_vivoOrder>();

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public List<vivo_goods> getGoodsList() {
        return goodsList;
    }

    public void setGoodsList(List<vivo_goods> goodsList) {
        this.goodsList = goodsList;
    }

    public List<com.vivo.domain.vivo_myorder_vivoOrder> getVivo_myorder_vivoOrder() {
        return vivo_myorder_vivoOrder;
    }

    public void setVivo_myorder_vivoOrder(List<com.vivo.domain.vivo_myorder_vivoOrder> vivo_myorder_vivoOrder) {
        this.vivo_myorder_vivoOrder = vivo_myorder_vivoOrder;
    }
}
