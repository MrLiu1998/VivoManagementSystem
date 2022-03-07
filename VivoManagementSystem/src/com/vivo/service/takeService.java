package com.vivo.service;

import com.vivo.dao.Impl.takeDaoImpl;
import com.vivo.domain.vivo_take;

import java.sql.SQLException;
import java.util.List;

public class takeService  {
    takeDaoImpl takeDao = new takeDaoImpl();

    public List<vivo_take> getAllTake(String v_uid) throws SQLException {
        return takeDao.getAllTake(v_uid);
    }
    public int addTakeInformation(vivo_take take) throws SQLException {
        return takeDao.addTakeInformation(take);
    }

    public int editorTakeInformation(vivo_take take) throws SQLException {
        return takeDao.editorTakeInformation(take);
    }

    public int delTakeInformation(String v_uid, int v_tid ) throws SQLException {
        return takeDao.delTakeInformation(v_uid,v_tid);
    }

    public vivo_take getV_tidINfo(String v_uid, int parseInt) throws SQLException {
        return takeDao.getV_tidINfo(v_uid, parseInt);
    }
}
