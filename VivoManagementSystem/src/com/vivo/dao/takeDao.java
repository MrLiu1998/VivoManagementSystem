package com.vivo.dao;

import com.vivo.domain.vivo_take;

import java.sql.SQLException;
import java.util.List;

public interface takeDao {
    /* ��ȡ���õ�ȫ���ջ���Ϣ */
    public List<vivo_take> getAllTake(String v_uid) throws SQLException;

    /* ����ջ���Ϣ */
    public int addTakeInformation(vivo_take take) throws SQLException;

    /* �༭�ջ���Ϣ */
    public int editorTakeInformation(vivo_take take) throws SQLException;

    /* ɾ���ջ���Ϣ */
    public int delTakeInformation(String v_uid, int v_tid ) throws  SQLException;

}
