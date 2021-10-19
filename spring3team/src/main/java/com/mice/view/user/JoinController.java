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


public class JoinController implements Controller {
	@Override	
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		
		String name = request.getParameter("name");
//		String nickname = request.getParameter("nickname");
//		String email = request.getParameter("email");
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String role = request.getParameter("role");

		MemberDto mDto = new MemberDto();
		
		mDto.setName(name);
		mDto.setId(id);
		mDto.setPassword(pw);
		mDto.setRole(role);		
		
		MemberDao mDao = new MemberDao();	
		boolean insertCheck = mDao.memberInsert(mDto);

	    if(insertCheck){
	    	request.setAttribute("joinResult", insertCheck);
			HttpSession session = request.getSession();
			session.setAttribute("idKey", id);
			return "Index";

		}else{
	    	request.setAttribute("joinResult", 0);
	    	return "Join";
		}		
		
		
	}
	
		
	
}
