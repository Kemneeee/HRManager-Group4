package com.app.controller;

import com.app.bean.AccountBean;
import com.app.common.BaseController;
import com.app.dao.LoginDao;

public class LoginController extends BaseController {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2L;
	private AccountBean accountBean = null;
	private String email;
	private String password;
	private LoginDao loginDao = new LoginDao();

	String submitType;

	public String login() throws Exception {
	System.out.println(1);
	int role = 0;
		try {
			if(submitType.equals("login")) {
				role = loginDao.login(email, password).getRole();
			}
			return String.valueOf(role);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "0";
		}
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public AccountBean getAccountBean() {
		return accountBean;
	}

	public void setAccountBean(AccountBean accountBean) {
		this.accountBean = accountBean;
	}
	
	
}
