package com.app.common;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class Connection {
	public static SqlMapClient sqlMapClient;
	public Connection() {
		try {
			Reader reader = Resources.getResourceAsReader("sqlMapConfig.xml");
			sqlMapClient = SqlMapClientBuilder.buildSqlMapClient(reader);
		} catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("err connection");
		}
	}
}
