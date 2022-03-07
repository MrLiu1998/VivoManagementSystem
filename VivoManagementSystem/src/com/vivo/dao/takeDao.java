package com.vivo.dao;

import com.vivo.domain.vivo_take;

import java.sql.SQLException;
import java.util.List;

public interface takeDao {
    /* 获取该用的全部收货信息 */
    public List<vivo_take> getAllTake(String v_uid) throws SQLException;

    /* 添加收货信息 */
    public int addTakeInformation(vivo_take take) throws SQLException;

    /* 编辑收货信息 */
    public int editorTakeInformation(vivo_take take) throws SQLException;

    /* 删除收货信息 */
    public int delTakeInformation(String v_uid, int v_tid ) throws  SQLException;

}
