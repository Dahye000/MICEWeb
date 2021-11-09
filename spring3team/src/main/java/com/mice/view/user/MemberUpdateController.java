package com.mice.view.user;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mice.user.MemberDto;
import com.mice.user.Impl.MemberDao;
import com.mice.view.controller.Controller;

public class MemberUpdateController implements Controller{
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String name = request.getParameter("name");
		String role = request.getParameter("role");
	
		MemberDto vo = new MemberDto();
		vo.setId(id);
		vo.setId(pw);
		vo.setId(name);
		vo.setId(role);
		
		MemberDao userDAO = new MemberDao();
		Vector getMemberList = userDAO.getMemberList();
		
		if(getMemberList != null) {
			request.setAttribute("memberListResult", getMemberList);
			HttpSession session = request.getSession();
			session.setAttribute("idKey", id);
			return "MemberUpdate";
		} else {
			return "adminLogin";
		}
		
	}
	
}