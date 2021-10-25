package com.mice.view.controller;

import java.util.HashMap;
import java.util.Map;

import com.mice.view.user.JoinController;
import com.mice.view.user.LoginController;
import com.mice.view.user.LogoutController;


public class HandlerMapping {
	private Map<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/login.do", (Controller) new com.mice.view.user.LoginController());
		mappings.put("/logout.do", (Controller) new com.mice.view.user.LogoutController());	
		mappings.put("/join.do", (Controller) new com.mice.view.user.JoinController());	
		mappings.put("/adminLogin.do", new com.mice.view.user.AdminLoginController());
		mappings.put("/getMemberList.do", new com.mice.view.user.MemberManageController());
	}

	public Controller getController(String path) {
		return mappings.get(path);
	}
}

