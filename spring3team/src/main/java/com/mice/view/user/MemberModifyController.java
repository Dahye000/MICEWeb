package com.mice.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mice.user.Impl.MemberDao;
import com.mice.view.controller.Controller;

public class MemberModifyController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("회원 정보 수정");
		HttpSession session = request.getSession();
		
		String mem_id = (String)session.getAttribute("Manage_id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String role = request.getParameter("role");
		
		MemberDao MemberDao = new MemberDao();
		MemberDao.memberupdate(mem_id, password, name, role);
		
		session.removeAttribute("Manage_id");
		
		return "MemberManage";
		
	}

}
