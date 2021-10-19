package com.mice.view.user;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mice.user.MemberDto;
import com.mice.user.Impl.MemberDao;
import com.mice.view.controller.Controller;

public class AdminLoginController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("包府磊 肺弊牢 贸府");
		String admin_id = request.getParameter("admin_id");
		String admin_passwd = request.getParameter("admin_passwd");
		
		MemberDto vo = new MemberDto();
		vo.setId(admin_id);
		vo.setPassword(admin_passwd);

		MemberDao userDAO = new MemberDao();
		boolean adLoginCheck = userDAO.adLoginCheck(admin_id, admin_passwd);

		if (adLoginCheck) {
	    	request.setAttribute("loginResult", adLoginCheck);
			HttpSession session = request.getSession();
			session.setAttribute("idKey", admin_id);
			return "adIndex";
		} else {
			return "adminLogin";
		}
		
		
		
	}

}
