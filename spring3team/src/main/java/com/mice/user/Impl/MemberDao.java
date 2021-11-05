package com.mice.user.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import com.mice.common.JdbcConnectUtil;
import com.mice.user.MemberDto;

import com.mice.common.JdbcConnectUtil;

public class MemberDao {
	private static MemberDao mDao;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;

	public boolean loginCheck(String id, String password) {

		System.out.println("dao½ÇÇà");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean loginCon = false;
		try {
			con = com.mice.common.JdbcConnectUtil.getConnection();
			String strQuery = "select id, password from users where id = ? and password = ?";

			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			loginCon = rs.next();
		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			com.mice.common.JdbcConnectUtil.close(con, pstmt, null);
		}
		return loginCon;
	}

	public boolean adLoginCheck(String admin_id, String admin_passwd) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean loginCon = false;
		try {
			con = com.mice.common.JdbcConnectUtil.getConnection();
			String strQuery1 = "select admin_id, admin_passwd from admin where admin_id = ? and admin_passwd = ?";

			pstmt = con.prepareStatement(strQuery1);
			pstmt.setString(1, admin_id);
			pstmt.setString(2, admin_passwd);
			rs = pstmt.executeQuery();
			loginCon = rs.next();
		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			com.mice.common.JdbcConnectUtil.close(con, pstmt, null);
		}
		return loginCon;

	}

	public boolean memberInsert(com.mice.user.MemberDto mDTO) {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean flag = false;
		try {
			con = com.mice.common.JdbcConnectUtil.getConnection();
			String strQuery = "insert into users values(?,?,?,?)";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1, mDTO.getId());
			pstmt.setString(2, mDTO.getPassword());
			pstmt.setString(3, mDTO.getName());
			pstmt.setString(4, mDTO.getRole());

			int count = pstmt.executeUpdate();

			if (count == 1) {
				flag = true;
			}

		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			com.mice.common.JdbcConnectUtil.close(con, pstmt, null);
		}
		return flag;
	}
	
	public void memberupdate(String id, String password, String Name, String Role) {
		Connection con = null;
		con = com.mice.common.JdbcConnectUtil.getConnection();
		PreparedStatement pstmt = null;
		boolean flag = false;
		try {
			
			String strQuery = "update users set password = ?, name = ?, role = ?  where id = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1, password);
			pstmt.setString(2, Name);
			pstmt.setString(3, Role);
			pstmt.setString(4, id);
			pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			com.mice.common.JdbcConnectUtil.close(con, pstmt, null);
		}
	}
	
	public void memberdelete(String member) {
		Connection con = null;
		con = com.mice.common.JdbcConnectUtil.getConnection();
		PreparedStatement pstmt = null;
		try {
			String strQuery = "DELETE FROM users WHERE id = ?";
			pstmt = con.prepareStatement(strQuery);
			pstmt.setString(1, member);
			pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			com.mice.common.JdbcConnectUtil.close(con, pstmt, null);
		}
	}

	public static Vector getMemberList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Vector vecList = new Vector();

		try {
			con = com.mice.common.JdbcConnectUtil.getConnection();
			String strQuery = "SELECT * FROM maybedb.users;";
			pstmt = con.prepareStatement(strQuery);
			rs = pstmt.executeQuery(strQuery);

			while (rs.next()) {
				MemberDto mDto = new MemberDto();
				mDto.setId(rs.getString("id"));
				mDto.setPassword(rs.getString("password"));
				mDto.setName(rs.getString("name"));
				mDto.setRole(rs.getString("role"));
				vecList.add(mDto);
			}
		} catch (Exception ex) {
			System.out.println("Exception" + ex);
		} finally {
			com.mice.common.JdbcConnectUtil.close(con, pstmt, null);
		}
		return vecList;

	}
	
//	public class MemberMgr {
//
//		public MemberMgr() {
//			try {
//				JdbcConnectUtil.getInstance();
//			} catch (Exception e) {
//				System.out.println("Error !!");
//			}
//		}
//
//	}
}
