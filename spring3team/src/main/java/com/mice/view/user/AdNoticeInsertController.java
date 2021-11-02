package com.mice.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mice.user.NoticeDto;
import com.mice.user.Impl.NoticeDao;
import com.mice.view.controller.Controller;



public class AdNoticeInsertController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		String sno = request.getParameter("sno");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regdate = request.getParameter("regdate");
		
		NoticeDto nDto = new NoticeDto();
		
		nDto.setSno(sno);
		nDto.setTitle(title);
		nDto.setContent(content);
		nDto.setRegdate(regdate);
		
		NoticeDao nDao = new NoticeDao();
		boolean insertCheck = nDao.noticeInput(nDto);
		
		if(insertCheck) {
			request.setAttribute("noticeResult", insertCheck);
			HttpSession session = request.getSession();
			session.setAttribute("snoKey",sno);
			return "noticeInput";
		}else {
			request.setAttribute("noticeResult",0);
			return "notice";
		}
	}

}

