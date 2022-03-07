package com.app.dao;

import com.app.bean.AccountBean;
import com.app.common.Connection;

public class LoginDao extends Connection {
	public AccountBean login(String email, String password) throws Exception {
		try {
			AccountBean accountResult = new AccountBean();
			AccountBean accountBean = new AccountBean(email, password);
			accountResult = (AccountBean) sqlMapClient.queryForObject("login.login", accountBean);
			return accountResult;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
}
