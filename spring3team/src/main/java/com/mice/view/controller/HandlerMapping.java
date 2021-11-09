package com.mice.view.controller;

import java.util.HashMap;
import java.util.Map;

public class HandlerMapping {
	private Map<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/login.do", (Controller) new com.mice.view.user.LoginController());
		mappings.put("/logout.do", (Controller) new com.mice.view.user.LogoutController());	
		mappings.put("/join.do", (Controller) new com.mice.view.user.JoinController());	
		mappings.put("/adminLogin.do", new com.mice.view.user.AdminLoginController());
		mappings.put("/getMemberList.do", new com.mice.view.user.MemberManageController());
		mappings.put("/noticeInput.do", new com.mice.view.user.AdNoticeInsertController());
		mappings.put("/notice.do", new com.mice.view.user.AdminNoticeController());
		mappings.put("/MemberDelete.do", new com.mice.view.user.MemberDeleteController());
		mappings.put("/MemberModify.do", new com.mice.view.user.MemberModifyController());
	}

	public Controller getController(String path) {
		return mappings.get(path);
	}
}

