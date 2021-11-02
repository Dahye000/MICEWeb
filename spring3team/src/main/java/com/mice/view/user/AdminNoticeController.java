package com.mice.view.user;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mice.user.NoticeDto;
import com.mice.user.Impl.NoticeDao;
import com.mice.view.controller.Controller;

public class AdminNoticeController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		String sno = request.getParameter("sno");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regdate = request.getParameter("regdate");
		
		NoticeDto vo = new NoticeDto();
		vo.setSno(sno);
		vo.setTitle(title);
		vo.setContent(content);
		vo.setRegdate(regdate);
		
		NoticeDao noticeDAO = new NoticeDao();
		Vector getNoticeList = noticeDAO.getNoticeList();
		
		if(getNoticeList != null) {
			request.setAttribute("noticeListResult", getNoticeList);
			HttpSession session = request.getSession();
			session.setAttribute("snoKey", sno);
			return "noticeInput";
		} else {
			return "adminLogin";
		}
		
	}

}
