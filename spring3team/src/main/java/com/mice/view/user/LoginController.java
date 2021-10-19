package com.mice.view.user;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mice.user.MemberDto;
import com.mice.user.Impl.MemberDao;
import com.mice.view.controller.Controller;

public class LoginController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");

		MemberDto vo = new MemberDto();
		vo.setId(id);
		vo.setPassword(pw);

		MemberDao userDAO = new MemberDao();
		boolean loginCheck = userDAO.loginCheck(id, pw);

		if (loginCheck) {
	    	request.setAttribute("loginResult", loginCheck);
			HttpSession session = request.getSession();
			session.setAttribute("idKey", id);
			return "Index";
		} else {
			return "login";
		}
	}

}
