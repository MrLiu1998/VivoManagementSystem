package com.vivo.dao;

import com.vivo.util.JdbcUtil;
import org.apache.commons.dbutils.QueryRunner;

public class QueryRunnerDao {
    public static QueryRunner qr = new QueryRunner(JdbcUtil.getDataSource());
}
