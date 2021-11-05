package com.mice.user.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import com.mice.user.MemberDto;
import com.mice.user.NoticeDto;

public class NoticeDao {
	private static NoticeDao nDao;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
	public boolean noticeInput(com.mice.user.NoticeDto nDto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean flag = false;
		try {
			con = com.mice.common.JdbcConnectUtil.getConnection();
			String strQuery = "insert into board values(?,?,?,?)";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1, nDto.getSno());
			pstmt.setString(2, nDto.getTitle());
			pstmt.setString(3, nDto.getContent());
			pstmt.setString(4, nDto.getRegdate());
			
			int count = pstmt.executeUpdate();
			
			if(count ==1) {
				flag = true;
			}
		}catch (Exception ex) {
				System.out.println("Exception" + ex);
			} finally {
				com.mice.common.JdbcConnectUtil.close(con, pstmt, null);
			}
			return flag;
	}
	
	public static Vector getNoticeList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Vector vecList = new Vector();

		try {
			con = com.mice.common.JdbcConnectUtil.getConnection();
			String strQuery = "SELECT * FROM maybedb.board;";
			pstmt = con.prepareStatement(strQuery);
			rs = pstmt.executeQuery(strQuery);

			while (rs.next()) {
				NoticeDto nDto = new NoticeDto();
				nDto.setSno(rs.getString("sno"));
				nDto.setTitle(rs.getString("title"));
				nDto.setContent(rs.getString("content"));
				nDto.setRegdate(rs.getString("regdate"));
				vecList.add(nDto);
			}
		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			com.mice.common.JdbcConnectUtil.close(con, pstmt, null);
		}
		return vecList;

	}
	
	public String[] getNoticeInfo(String number) {
		Connection con = null;
		con = com.mice.common.JdbcConnectUtil.getConnection();
		String strQuery = "select * FROM maybedb.board where sno =?";
		String[] information = new String[4];
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		try {
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1, number);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				information[0] = rs.getString("sno");
				information[1] = rs.getString("title");
				information[2] = rs.getString("content");
				information[3] = rs.getString("regdate");
			}
		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			com.mice.common.JdbcConnectUtil.close(con, pstmt, null);
		}
		return information;
	}
	}
