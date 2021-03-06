package com.mice.common;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mice.common.JdbcConnectUtil;


public class JdbcConnectUtil {
	private static JdbcConnectUtil mDao;

	private static Object instance;

	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;

	public static Connection getConnection() {
		String url = "jdbc:mysql://127.0.0.1:3306/springdb?serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
		String id = "root", pw = "1997";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(url, id, pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
//	public static JdbcConnectUtil getInstance() {
//        if (instance == null) {
//            synchronized (JdbcConnectUtil.class) {
//                if (instance == null) {
//                    instance = new JdbcConnectUtil();
//                }
//            }
//        }
//        return (JdbcConnectUtil) instance;
//    }


	
	

}
