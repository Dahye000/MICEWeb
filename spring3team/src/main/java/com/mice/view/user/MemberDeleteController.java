package com.mice.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mice.user.Impl.MemberDao;
import com.mice.view.controller.Controller;

public class MemberDeleteController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		String mem_id = request.getParameter("memid");
		MemberDao MemberDao = new MemberDao();
		MemberDao.memberdelete(mem_id);
		
		return "MemberManage";
		
	}

}
